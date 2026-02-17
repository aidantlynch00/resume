#import "resume-template.typ": *
#import "@preview/fontawesome:0.6.0": *

#show: resume.with(
  font-type: "Calibri",
  continue-header: "false",
  margin: (left: 1.25cm, right: 1.25cm, top: 1.2cm, bottom: 1.2cm),
  name: [John Doe],
  contacts: (
    (text: [#fa-icon("location-dot") UK]),
    (text: [#fa-icon("mobile") 123-456-789], link: "tel:123-456-789"),
    (text: [#fa-icon("link") example.com], link: "https://www.example.com"),
  ),
)

#let sections = (
  section-block("education", title: "Education")[
    #education(
      institution: "Rochester Institute of Technology",
      major: "Bachelor of Science in Computer Science",
      date: "2019 " + sym.dash.en + " 2022",
    )
  ],
  section-block("skills", title: "Skills")[
    #oneline-title-item(
      title: "Programming Languages",
      content: ("Python", "C++", "Java", "JavaScript", "HTML", "CSS", "SQL", "LaTeX"),
    )
  ],
  section-block("experience", title: "Experience")[
    #job(
      position: "Software Engineer",
      company: [#lorem(4)],
      date: "xxxx-xxxx",
      bullets: (
        lorem(10),
        lorem(10),
        lorem(10),
      ),
    )
  ],
  section-block("projects", title: "Projects")[
    #project(
      title: "Project 1",
      date: "Jan 2023",
      bullets: (
        lorem(10),
        lorem(10),
        lorem(10),
      ),
    )
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
