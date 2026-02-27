#import "../resume-helper.typ": project, utilized

#project(
  title: "Automata",
  date: "Jan 2025 " + sym.dash.en + " Feb 2025",
  bullets: (
    "Implemented a generic, parallel engine capable of computing the next generation of cells for several different types of cellular automata.",
    "Employed flamegraphs and other profiling methods to identify functions that needed performance improvements.",
    "Reduced hot path execution time by 50% through implementation of a partial rendering technique.",
    utilized(("Rust", "Parallelization")),
  ),
)
