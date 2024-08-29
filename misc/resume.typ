#import "@preview/fontawesome:0.2.0"
#import "@preview/modern-cv:0.5.0": *

#let __header_align_3(left_body, mid_body, right_body) = {
  block[
    #box[
      #align(left)[
        #left_body
      ]
    ]
    #box[
      #align(left)[
        #set text(size: 9pt, weight: "light")
        #mid_body
      ]
    ]
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}
/// Justified header that takes a primary section and a secondary section. The primary section is on the left and the secondary section is on the right.
/// - primary (content): The primary section of the header
/// - secondary (content): The secondary section of the header
#let justified-header(primary, middle, right) = {
  set block(above: 0.7em, below: 0.7em)
  pad[
    #__header_align_3[
      == #primary
    ][
      #middle
    ][
      #tertiary-right-header[#right]
    ]
  ]
}

/// The base item for resume entries. This formats the item for the resume entries. Typically your body would be a bullet list of items. Could be your responsibilities at a company or your academic achievements in an educational background section.
/// - title (string): The title of the resume entry
/// - location (string): The location of the resume entry
/// - date (string): The date of the resume entry, this can be a range (e.g. "Jan 2020 - Dec 2020")
/// - position (content): The body of the resume entry
/// - title-link (string): The link to use for the title (can be none)
/// - accent-color (color): Override the accent color of the resume-entry
/// - location-color (color): Override the default color of the "location" for a resume entry.
#let resume-entry(
  title: none,
  location: "",
  date: "",
  position: "",
  title-link: none,
  accent-color: default-accent-color,
  location-color: default-location-color,
) = {
  let title-content
  if type(title-link) == "string" {
    title-content = link(title-link)[#title]
  } else {
    title-content = title
    if type(title) == "string" and title.len() > 0 {
      title-content += [ -- ]
    } else {}
  }

  pad[
    #justified-header(title-content, position, date)
  ]
}

#let resume-item(body) = {
  set text(size: 11pt, style: "normal", weight: "light", fill: color-darknight)
  pad(left: 10pt, body)
}

#show: resume.with(author: (
  firstname: "Kevin",
  lastname: "Houtz",
  address: none,
  email: "khoutz182@pm.me",
  phone: "765-491-5128",
  github: "khoutz182",
  linkedin: "kevin-houtz",
  positions: (none, "Senior Software Developer", none),
), colored-headers: false, accent-color: rgb("#000000"), date: none)

= Core Skills

#resume-skill-item("Languages", ("Kotlin", "Java", "Groovy"))
#resume-skill-item("Frameworks", ("Spring Boot", "Guice", "Grails", "Ktor"))
#resume-skill-item("Technologies", (
  "Docker",
  "PostgreSQL",
  "Terraform",
  "Kubernetes",
  "ArgoCD",
  "Elasticsearch",
  "AWS",
))

= Experience

#resume-entry(
  title: "Midwest Tape, LLC",
  date: "February 2023 - Present",
  position: "Senior Software Developer",
)

Provides digital media services for libraries, allowing patrons to checkout
electronic content with their library card.

#resume-item[
  - Implemented a new rating system, allowing libraries to restrict content that may
    be inappropriate to certain audiences.
  - Migrated a suite of backend rest services from Java 1.8 to Java 11
]

#resume-entry(
  title: "Unifyd",
  date: "February 2022 - January 2023",
  position: "Senior Software Developer",
)

Data processing company, able to match messy data using a combination of manual
training and machine learning, which allows customers to gain marketing
insights.

#resume-item[
  - Introduced an automated test suite which increased coverage from 0% to 65% to
    safely pay back tech debt
  - Built a kubernetes cluster to host environments for each Github pull request for
    manual testing and QA
  - Technologies used: Kubernetes, Docker, Java, Kotlin, Elasticsearch, PostgreSQL,
    ArgoCD, AWS
]

#resume-entry(
  title: "Rocketmiles",
  date: "February 2021 - January 2022",
  position: "Senior Software Developer",
)

Whitelabel hotel and car rental booking company that integrates with airline
loyalty programs, allowing customers to book hotels and cars with miles/points.

#resume-item[
  - Technical lead of the payments team: mentor, scope requirements, work with other
    teams, and planned sprints in order to launch payment processors for the
    whitelabel platform
  - Added 3 currencies and 2 payment processor available to the payment page,
    allowing more transactions in more regions
]

#resume-entry(date: "October 2019 - February 2021", position: "Software Developer")

#resume-item[
  - Joined users from 4 different application databases to be used from a single,
    unified datastore
  - Migrated customer PII to an encrypted datastore with no interruptions to
    application uptime
  - Launched new partners on the whitelabel platform as part of the launch team
  - Technologies used: Groovy, Grails, Java, Kotlin, MySQL, Terraform, AWS
]

#resume-entry(
  title: "Signal",
  date: "September 2018 - August 2019",
  position: "Software Developer",
)

Ad-tech company with large amounts of data, and a backend based largely on
message queues.

#resume-item[
  - Worked on the activations team writing and maintaining Java applications,
    increasing reliability, maintainability, and visibility into the pipeline
  - Reduced processing time from hours to 15 minutes for batch jobs by converting a
    web application to run in a container and orchestrated by AWS Batch
  - Technologies used: Java, Kotlin, Terraform, Docker, AWS Batch, Step Functions,
    Lambda
]

#resume-entry(
  title: "Clarity Partners LLC",
  date: "January 2015 - September 2018",
  position: "Senior Software Consultant",
)

Technology consulting firm that mostly works with the City of Chicago, Cook
County, and Illinois government entities, providing IT services as well as
custom development.

#resume-item[
  - Used the city's GIS tools to write an application to detect over-saturation of
    moratoriums issued for a given geographic space, in order to prevent companies
    from doing too much work in "easy" areas and leaving other areas unmaintained.
  - Transitioned the Chicago vehicle registration program from summer sales only, to
    year round sales
  - Wrote a Java web application to allow users to purchase vehicle registration
    stickers issued by Chicago
]

