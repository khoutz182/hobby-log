#import "@preview/fontawesome:0.5.0": *

// Colors
#let color-dark = rgb("#131A28")

// Icons
#let icon(name) = box(fa-icon(name, fill: color-dark))

#let resume(
  name: none,
  title: none,
  contact: (),
  skills: none,
  body,
) = {
  set page(
    paper: "us-letter",
    margin: 0.7in,
  )
  set text(
    font: ("Inter 18pt", "Source Sans 3"),
    size: 10.5pt,
    fill: rgb("#333333"),
  )
  grid(
    columns: (50fr, 50fr),
    align(left)[
      #text(
        weight: "bold",
        size: 18pt,
        fill: rgb("#444444"),
      )[#name]
    ],
    align(right)[
      #text(
        weight: "medium",
        size: 12pt,
      )[
        #title
      ]
    ],
  )
  set line(length: 100%, stroke: (thickness: 1pt, paint: rgb("#cbcbcb")))
  line()

  columns(4)[
    #icon("envelope")
    #link("mailto:" + contact.email)[#contact.email]
    #colbreak()

    #icon("github")
    #link("https://github.com/" + contact.github)[#contact.github]
    #colbreak()

    #icon("linkedin")
    #link("https://linkedin.com/in/" + contact.linkedin)[#contact.linkedin]
    #colbreak()

    #icon("phone")
    #link("tel:" + contact.phone)[#contact.phone]
    #colbreak()
  ]

  line()

  grid(
    columns: (6fr, 1fr),
    column-gutter: 1em,
    body, skills,
  )
}


#let skill-group(
  name,
  content,
) = {
  set list(marker: none, body-indent: 0em)
  [
    #block(below: 1em, above: 2em)[
      #text(weight: "medium")[
        #upper[#name]
      ]
    ]
    #content
  ]
}

#let hidden-skills(content) = {
  text(size: 1pt, fill: white)[#content]
}

#let entry-header(company, title, timeline) = {
  if company != none {
    text(weight: "semibold")[#company]
    linebreak()
  }
  text(style: "italic")[#title]
  linebreak()
  text(size: 8pt)[#timeline]
}

#let resume-entry(
  company: none,
  title: none,
  timeline: none,
  body,
) = {
  block(above: 2em)[
    #grid(
      columns: (1fr, 2fr),
      entry-header(company, title, timeline), body,
    )
  ]
}
