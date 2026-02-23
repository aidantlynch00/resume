#import "../resume-helper.typ": project, utilized

#project(
  title: "Monte Retires",
  date: "Dec 2023 " + sym.dash.en + " Mar 2024",
  bullets: (
    "Implemented a Monte Carlo simulation using historical market data and custom investment strategies to calculate retirement valuations over time.",
    "Integrated graphing functionality in order to visually compare the effectiveness of different strategies.",
    utilized(("Python", "Matplotlib", "Monte Carlo")),
  ),
)
