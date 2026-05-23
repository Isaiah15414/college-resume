#import "colors.typ": *

#let resume(
  name: "Your Name",
  contact: ("123-456-7890",),
  color: black,
  body,
) = {
  set page(
    paper: "us-letter",
    margin: 1cm,
  )

  set text(
    font: "Blinker",
    size: 11pt,
    hyphenate: false,
  )

  set par(justify: true)

  set list(marker: [•])

  show heading: it => {
    set text(weight: "semibold")
    if (it.level == 1) {
      v(10pt) // Added for fluff
      set text(fill: color)
      grid(
        row-gutter: 0.5em,
        it,
        line(length: 100%),
      )
    } else {
      it
    }
  }

  show: page[
    // Header
    #box(
      radius: 100%,
      width: 100%,
      fill: color,
      inset: 1em,
      align(
        center,
        [
          #set text(fill: white)
          #text(size: 20pt, weight: "semibold", name) \
          #grid(
            columns: contact.len(),
            stroke: (x, y) => if x != 0 and x != contact.len() { (left: white) },
            inset: (x: 1em),
            ..contact,
          )
        ],
      ),
    )

    #body
  ]
}

#let cover-letter(
  author: (
    name: "Your Name",
    job: "Job Title",
    street: "Main Street",
    location: "City, State, 12345",
  ),
  recipient: (
    name: "Recipient Name",
    job: "Hiring Manager",
    company: "Company Name",
    street: "Main Street",
    location: "City, State, 12345",
  ),
  color: black,
  date: "March 13, 20XX",
  body,
) = {
  set page(
    paper: "us-letter",
  )

  set text(
    font: "Blinker",
    size: 11pt,
    hyphenate: false,
  )

  set par(justify: true)

  show: page([
    #grid(
      stroke: black,
      columns: (1fr, auto),
      grid.cell(colspan: 2, align(right, date)),
      [
        #recipient.name
        \ #recipient.job
        \ #recipient.company
        \ #recipient.street
        \ #recipient.location
      ],
    )
  ])
}
