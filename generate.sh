#!/bin/sh

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

# Create temporary file for sorting
PROJECTS=$(mktemp)
INCLUDES=$(mktemp)
trap "rm -f $PROJECTS $INCLUDES" EXIT

for file in "$SCRIPT_DIR/projects"/*; do
    [ -f "$file" ] || continue

    # Extract date from file (format: date: "Jan 2025")
    date_str=$(sed -n 's/^\s*date:.*"\s*\([^"]*\)",$/\1/p' "$file")

    if [ -n "$date_str" ] && ! [ "$date_str" = "Present" ]; then
        # Convert to sortable format (e.g., "Jan 2025" -> "2025-01")
        sortable_date=$(date -d "1 $date_str" +"%Y-%m" 2>/dev/null || echo "9999-99")
    else
        # No date found, put at the end
        sortable_date="9999-99"
    fi

    # Get filename without extension
    file_no_ext=$(basename "$file" | sed 's/\.[^.]*$//')

    # Append to temporary file
    echo "$sortable_date|$file_no_ext" >> "$PROJECTS"
done

# Sort by date and extract just the filename for gum
sorted_files=$(sort -r "$PROJECTS" | cut -d'|' -f2)

# Use gum to select multiple files
selected=$(echo "$sorted_files" | gum choose --no-limit | xargs)

if [ -n "$selected" ]; then
    # Create timestamped directory
    TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
    OUTPUT_DIR="$SCRIPT_DIR/generated/$TIMESTAMP"
    GENERATED_RESUME="$OUTPUT_DIR/resume.typ"
    PROJECTS_DIR="$OUTPUT_DIR/projects"
    mkdir -p "$PROJECTS_DIR"

    # Copy template to output directory
    cp "$SCRIPT_DIR/resume-template.typ" "$OUTPUT_DIR"

    # Copy project file to output and create include statement
    for selection in $selected; do
        project_file="${selection}.typ"
        cp "$SCRIPT_DIR/projects/$project_file" "$PROJECTS_DIR"
        echo "#include \"projects/$project_file\"" >> "$INCLUDES"
    done

    # Replace {{PROJECTS}} with includes
    sed -e "/{{PROJECTS}}/r $INCLUDES" \
        -e "/{{PROJECTS}}/d" \
        resume.typ > "$GENERATED_RESUME"

    typst compile "$GENERATED_RESUME"
fi
