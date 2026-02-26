#import "../resume-helper.typ": project, utilized

#project(
  title: "zestty",
  date: "Dec 2025 " + sym.dash.en + " Feb 2026",
  bullets: (
    "Built a project-centric sessionizer for zellij, a terminal multiplexer, to enable users to launch terminal workspaces with one command.",
    "Engaged with users in the community to identify and solve real issues in their terminal workflows.",
    "Incorporated user feedback to prioritize features and fixes across multiple software releases.",
    utilized(("Rust", "POSIX Shell", "Web Assembly")),
  ),
)
