#import "resume-helper.typ": *
#import "@preview/fontawesome:0.6.0": *

#let name = "Aidan Lynch"

#show: resume.with(
  font-type: "Calibri",
  name: name,
  contacts: (
    (text: [#fa-icon("phone") (281) 665-9846], link: "tel:281-665-9846"),
    (text: [#fa-icon("envelope", solid: true) aidantlynch00\@gmail.com], link: "mailto:aidantlynch00@gmail.com"),
    (text: [#fa-icon("linkedin") #name], link: "https://www.linkedin.com/in/aidan-lynch-935317194/"),
    (text: [#fa-icon("github") aidantlynch00], link: "https://github.com/aidantlynch00"),
    (text: [#fa-icon("earth-americas") aidantlynch.com], link: "https://aidantlynch.com"),
  ),
)

#let sections = (
  section-block("summary", title: "Summary")[
    Customer-focused Software Engineer with 4+ years of experience driving client success. Eager to work alongside talented, motivated engineers in a challenging role with growth opportunities.
  ],
  section-block("education", title: "Education")[
    #education(
      institution: "Rochester Institute of Technology",
      major: [Bachelor of Science in Computer Science, GPA: *3.86*],
      date: "Aug 2019 " + sym.dash.en + " Dec 2022",
    )
    #v(1pt)
    #oneline-title-item(
      title: "CS Courses",
      content: ("Computer Vision", "Machine Learning", "Distributed Systems", "Algorithms", "Networking"),
    )
    #oneline-title-item(
      title: "Math Courses",
      content: ("Graph Theory", "Game Theory", "Multivariable Calculus", "Linear Algebra"),
    )
  ],
  section-block("skills", title: "Skills")[
    #oneline-title-item(
      title: "Programming",
      content: ("Rust", "C", "C++", "C#", "Shell", "Python", "Lua", "TypeScript", "Java"),
    )
    #oneline-title-item(
      title: "Tools",
      content: ("Git", "SVN", "Linux", "OpenEmbedded", "BuildRoot", "Neovim", "Azure", "AWS"),
    )
  ],
  section-block("experience", title: "Experience")[
    #job(
      position: "Software Engineer",
      company: "C Speed",
      date: "Feb 2023 " + sym.dash.en + " Present",
      bullets: (
        "Led software efforts for 2 enterprise clients, serving as the primary point of contact for managing deliverables and expectations throughout the project lifecycle.",
        "Partnered with manufacturing and procurement teams to deploy internal tooling that eliminated manual processes.",
        "Mentored several groups of interns through code reviews and deep dives into programming concepts.",
        "Maintained software for critical medical applications with a focus on availability and product security.",
        utilized(("C++", "C#", "Bash", "PowerShell", "Lua", "Python", "OpenEmbedded", "OpenWRT", "Azure", "Git", "SVN")),
      ),
    )
    #job(
      position: "Software Engineering Intern",
      company: "Bryx",
      date: "May 2022 " + sym.dash.en + " Aug 2022",
      bullets: (
        "Improved user form templating through the use of a tree structure to organize nested form elements.",
        "Built a dynamic rendering system to display form elements using a set of recursive functions.",
        "Implemented a drag-and-drop interface to create and arrange form element hierarchies.",
        "Incorporated regulatory form requirements by augmenting the data structure with validation criteria.",
        utilized(("TypeScript", "React", "Material UI")),
      ),
    )
    #job(
      position: "Software Engineering Intern",
      company: "C Speed",
      date: "Jan 2021 " + sym.dash.en + " Aug 2021",
      bullets: (
        "Improved ASTERIX data parser performance by 25% through the identification of inefficient operations.",
        "Developed an interactive website for the visualization of live and historical radar data.",
        "Redesigned radar data aggregation and storage to run in the cloud for worldwide availability.",
        "Implemented a distributed algorithm for determining the temporal ranges of data to improve search and playback.",
        utilized(("C++", "C#", "JavaScript", "AWS")),
      ),
    )
  ],
  section-block("projects", title: "Projects")[
    {{PROJECTS}}
  ],
)

#let section-order = (
  "summary",
  "experience",
  "projects",
  "education",
  "skills",
)

#render-sections(sections: sections, order: section-order)
