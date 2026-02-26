#import "../resume-helper.typ": project, utilized

#project(
  title: "Automata",
  date: "Jan 2025 " + sym.dash.en + " Feb 2025",
  bullets: (
    "Implemented a generic, parallel compute engine to produce the next generation of cells for several different cellular automata.",
    "Employed flamegraphs and other profiling methods to identify functions that needed performance improvements.",
    "Reduced hot path execution time by 50% through implementation of a partial rendering technique.",
    utilized(("Rust", "Parallelization")),
  ),
)
