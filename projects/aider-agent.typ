#import "../resume-helper.typ": project, utilized

#project(
  title: "Aider Agent",
  date: "Jul 2025 " + sym.dash.en + " Aug 2025",
  bullets: (
    "Experimented with agentic plan and execute loops to improve AI-generated code quality.",
    "Implemented plan revisioning and graph persistence to provide human-in-the-loop capabilities.",
    "Integrated context7 via MCP to improving planning step and aider via tool calling for code generation.",
    utilized(("Python", "LangGraph", "Aider", "MCP")),
  ),
)
