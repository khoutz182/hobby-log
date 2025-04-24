#import "template.typ": *

#show: resume.with(
  name: "Kevin Houtz",
  title: "Senior Software Developer",
  contact: (
    email: "kevin@houtz.dev",
    github: "khoutz182",
    linkedin: "kevin-houtz",
    phone: "765-491-5128",
  ),
  skills: [
    #skill-group("Languages")[
      - Kotlin
      - Java
    ]

    #skill-group("Frameworks")[
      - Spring Boot
      - Guice
      - Grails
      - Ktor
    ]
    #skill-group("Technologies")[
      - Docker
      - PostgreSQL
      - Terraform
      - Kubernetes
      - ArgoCD
      - Elasticsearch
      - AWS
    ]
  ],
)

#resume-entry(
  company: "Midwest Tape, LLC",
  title: "Senior Software Developer",
  timeline: "February 2023 - Present",
)[
  - Migrated a suite of backend Guice+RESTEasy applications from Java 1.8 to Java 21 and Spring Boot
  - Implemented a new rating system, allowing libraries to restrict content that may be inappropriate to certain audiences
]

#resume-entry(
  company: "Unifyd",
  title: "Senior Software Developer",
  timeline: "February 2022 - January 2023",
)[
  - Introduced an automated test suite which increased coverage from 0% to 65% to safely pay back tech debt
  - Built a kubernetes cluster to host environments for each Github pull request for manual testing and QA
  - Technologies used: Kubernetes, Docker, Java, Kotlin, Elasticsearch, PostgreSQL, ArgoCD, AWS
]

#resume-entry(
  company: "Rocketmiles",
  title: "Senior Software Developer",
  timeline: "February 2021 - January 2022",
)[
  - Technical lead of the payments team: mentor, scope requirements, work with other teams, and planned sprints in order to launch payment processors for the whitelabel platform
  - Added 3 currencies and 2 payment processor available to the payment page, allowing more transactions in more regions
]

#resume-entry(
  title: "Software Developer",
  timeline: "October 2019 - February 2021",
)[
  - Joined users from 4 different application databases to be used from a single, unified datastore
  - Migrated customer PII to an encrypted datastore with no interruptions to application uptime
  - Launched new partners on the whitelabel platform as part of the launch team
  - Technologies used: Groovy, Grails, Java, Kotlin, MySQL, Terraform, AWS
]

#resume-entry(
  company: "Signal",
  title: "Software Developer",
  timeline: "September 2018 - August 2019",
)[
  - Worked on the activations team writing and maintaining Java applications, increasing reliability, maintainability, and visibility into the pipeline
  - Reduced processing time from hours to 15 minutes for batch jobs by converting a web application to run in a container and orchestrated by AWS Batch
  - Technologies used: Java, Kotlin, Terraform, Docker, AWS Batch, Step Functions, Lambda
]

#resume-entry(
  company: "Clarity Partners LLC",
  title: "Senior Software Consultant",
  timeline: "January 2014 - September 2018",
)[
  - Used the city’s GIS tools to write an application to detect over-saturation of moratoriums issued for a given geographic space, in order to prevent companies from doing too much work in “easy” areas and leaving other areas unmaintained
  - Transitioned the Chicago vehicle registration program from summer sales only, to year round sales
  - Wrote a Java web application to allow users to purchase vehicle registration stickers issued by Chicago
]
