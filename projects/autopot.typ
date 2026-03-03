#import "../resume-helper.typ": project, utilized

#project(
  title: "AutoPot",
  date: "Jun 2023 " + sym.dash.en + " Dec 2024",
  bullets: (
    "Architected a distributed system to care for plants inspired by continuous monitoring medical devices.",
    "Engineered an inter-process communication framework based on Unix domain sockets to coordinate behavior between system components.",
    "Implemented separate sensor and control processes to improve system flexibility and fault tolerance.",
    utilized(("Rust", "SPI", "SQLite", "Cross compilation")),
  ),
)
