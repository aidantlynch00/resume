#import "../resume-template.typ": project, oneline-title-item

#project(
  title: "Monte Retires",
  date: "Dec 2023 " + sym.dash.en + " March 2024",
  bullets: (
    "Implemented a Monte Carlo simulation using historical market data and custom investment strategies to calculate retirement valuations over time.",
    "Integrated graphing functionality in order to visually compare the effectiveness of different strategies.",
    oneline-title-item(
      title: "Utilized",
      content: ("Python", "Matplotlib", "Monte Carlo")
  ),
)
