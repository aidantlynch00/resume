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
  objective: emph([*Seeking a software engineering position for the spring of 2026.*]),
)

#let sections = (
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
      content: ("Rust", "C", "C++", "C#", "Bash", "Python", "Lua", "Java", "JavaScript", "HTML", "CSS", "SQL"),
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
        "Led multiple software development efforts while delegating work to interns and managing their deliverables.",
        "Translated project requirements into high-quality, maintainable software across several domains.",
        "Improved and maintained build systems to create bootloader, kernel, and root file system images for various embedded devices.",
        "Leveraged knowledge in PowerShell and WSL to mount LUKS encrypted partitions on a Windows machine.",
        oneline-title-item(
          title: "Utilized",
          content: ("C++", "C#", "Bash", "PowerShell", "Lua", "Python", "OpenEmbedded", "OpenWRT", "Azure", "Git", "SVN"),
        ),
      ),
    )
    #job(
      position: "Software Engineering Intern",
      company: "Bryx",
      date: "May 2022 " + sym.dash.en + " Aug 2022",
      bullets: (
        "Improved form extensibility through the use of a nested data structure for storing user-created forms.",
        "Built a dynamic rendering system for the form structure by using a set of recursive functions.",
        "Implemented a drag-and-drop interface to create and arrange custom form elements.",
        "Incorporated regulatory form requirements by augmenting the nested structure with validation criteria.",
        oneline-title-item(
          title: "Utilized",
          content: ("TypeScript", "React", "Material UI"),
        ),
      ),
    )
    #job(
      position: "Software Engineering Intern",
      company: "C Speed",
      date: "Jan 2021 " + sym.dash.en + " Aug 2021",
      bullets: (
        "Improved a radar data parser's performance by 25% through the identification of inefficient operations.",
        "Implemented an interactive website for the visualization of live and historical radar data.",
        "Redesigned the radar data aggregation pipeline to run on a cloud machine for worldwide access.",
        "Implemented a distributed algorithm for determining the temporal ranges of data points to improve search and playback.",
        oneline-title-item(
          title: "Utilized",
          content: ("C++", "C#", "JavaScript", "AWS"),
        ),
      ),
    )
  ],
  section-block("projects", title: "Projects")[
    {{PROJECTS}}
  ],
)

#let section-order = (
  "about",
  "experience",
  "projects",
  "education",
  "skills",
)

#render-sections(sections: sections, order: section-order)
