#import "../resume-helper.typ": project, oneline-title-item

#project(
  title: "Drone",
  date: "Sept 2018 " + sym.dash.en + " May 2019",
  bullets: (
    "Leveraged the tiny footprint and compute power of a Raspberry Pi to control the flight of a custom built drone.",
    "Integrated user controls by converting radio receiver signals to thrust and translation vectors.",
    "Implemented a PID control loop to change propeller speed based on sensor readings and user input.",
    oneline-title-item(
      title: "Utilized",
      content: ("C++", "PID", "GPIO", [I$^2$C], "Raspberry Pi"),
    ),
  ),
)
