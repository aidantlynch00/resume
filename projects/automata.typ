#import "../resume-template.typ": project, oneline-title-item

#project(
  title: "Automata",
  date: "Jan 2025 " + sym.dash.en + " Feb 2025",
  bullets: (
    "Implemented a generic, parallel compute engine to produce the next generation for several different cellular automata.",
    "Employed flamegraphs and profiling to highlight functions needing performance improvements.",
    "Reduced hot path execution time by 50\% through implementation of a partial rendering technique.",
    oneline-title-item(
      title: "Utilized",
      content: ("Rust", "Parallelization"),
    ),
  ),
)
