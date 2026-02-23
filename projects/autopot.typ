#import "../resume-helper.typ": project, utilized

#project(
  title: "AutoPot",
  date: "Jun 2023 " + sym.dash.en + " Present",
  bullets: (
    "Designed a distributed system that separated sensor and control processes to improve flexibility and fault handling.",
    "Leveraged Unix domain sockets to handle inter-process communication to coordinate system behavior.",
    "Translated knowledge in build systems and shell scripting to improve the build, deployment, and testing cycle.",
    utilized(("Rust", "SPI", "SQLite", "Cross compilation")),
  ),
)
