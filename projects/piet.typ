#import "../resume-helper.typ": project, utilized

#project(
  title: "Piet Interpreter",
  date: "Mar 2022 " + sym.dash.en + " Apr 2022",
  bullets: (
    "Developed a parser to convert image files into Piet programs, translating pixels into executable instructions.",
    "Implemented an interpreter to handle control flow and execution as well as manipulate program data.",
    utilized(("Rust", "Git")),
  ),
)
