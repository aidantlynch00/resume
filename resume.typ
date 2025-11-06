#import "@preview/fontawesome:0.6.0": *

#set page(
  paper: "us-letter",
  margin: (left: 0.5in, top: 0.25in, right: 0.5in, bottom: 0.5in),
)

#set text(font: "serif", size: 11pt)

#set par(leading: 0pt)

#let rSection(title, content) = [
  #text(weight: "bold", size: 11pt, upper(title))
  #line(length: 100%, stroke: 1pt)
  #content
]

#align(center)[
  #text(size: 20.74pt, upper[*Aidan Lynch*])
]

#v(-10pt)

#align(center)[
  #fa-icon("phone") (281) 665-9846
  #h(5pt)
  #fa-icon("envelope", solid: true) #link("mailto:aidantlynch00@gmail.com")[aidantlynch00\@gmail.com]
  #h(5pt)
  #fa-icon("linkedin") #link("https://www.linkedin.com/in/aidan-lynch-935317194/")[Aidan Lynch]
  #h(5pt)
  #fa-icon("github") #link("https://github.com/aidantlynch00")[aidantlynch00]
  #h(5pt)
  #fa-icon("earth-americas") #link("www.aidantlynch.com")[aidantlynch.com]
]

#align(center)[#emph[*Seeking an engineering role.*]]

#rSection("Education")[
  *Institute of Technology* | Place, ST #h(1fr) *August 1950 - December 1953* \
  B.S. in Major #h(24pt) GPA: *4.0*

  *These Courses:* Thing 1 • Thing 2
  #linebreak()
  *Those Courses:* Thing 3 • Thing 4
]

#rSection("Experience")[
  *Company:* *Engineer* #h(1fr) *February 1954 - Present*
  - Bullet point 1
  - Bullet point 2
  - Bullet point 3
  - Bullet point 4
  - *Utilized:* C++, Bash, PowerShell, Linux/WSL, OpenEmbedded, OpenWRT, Azure DevOps, SVN

  *Startup:* *Engineering Intern* #h(1fr) *May 1953 - August 1953*
  - Bullet point 1
  - Bullet point 2
  - Bullet point 3
  - *Utilized:* TypeScript, React, JSON, Material UI

  *Company:* *Engineering Intern* #h(1fr) *January 1952 - August 1952*
  - Bullet point 1
  - Bullet point 2
  - Bullet point 3
  - *Utilized:* C++, C\#, JavaScript, AWS
]

#rSection("Projects")[
  *Project 1:* #h(1fr) *June 1954 - Present*
  - Bullet point 1
  - Bullet point 2
  - Bullet point 3
  - *Utilized:* Rust, Cross Compilation, SPI, SQLite

  *Project 2:* #h(1fr) *January 1955 - February 1955*
  - Bullet point 1
  - Bullet point 2
  - Bullet point 3
  - *Utilized:* Rust, Parallel Computing

  *Project 3:* #h(1fr) _*September 1949 - May 1950*_
  - Bullet point 1
  - Bullet point 2
  - Bullet point 3
  - *Utilized:* C++, PID, GPIO, I²C, Raspberry Pi
]

#rSection("Skills")[
  *Programming:* Rust • C • C++ • Bash • Python • Lua • C\# • Java • JavaScript • HTML • CSS • SQL
  #linebreak()
  *Tools:* Git • SVN • Azure DevOps • Linux • OpenEmbedded • BuildRoot • Neovim
]

#rSection("Activities")[
  *Activity,* _Role_ #h(1fr) _August 1950 - December 1953_ \
  Description of this activity.
]

#align(center)[*References available upon request.*]
