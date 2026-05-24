#import "colors.typ": *

#let resume(
  name: "Your Name",
  contact: ("123-456-7890",),
  color: black,
  body,
) = {
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

  show: page(
    margin: 1cm,
    [
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
    ],
  )
}

#let cover-letter(
  author: (
    name: "Your Name",
    job: "Job Title",
    street: "Main Street",
    location: "City, State, 12345",
    phone: "123-456-7890",
    email: "yourname@email.com",
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
  set text(
    font: "Blinker",
    size: 11pt,
    hyphenate: false,
  )

  set par(justify: true)

  show: page[
    #grid(
      columns: 1fr,
      inset: (y: 1em),
      row-gutter: 1em,
      grid.cell(stroke: (y: color), align(center, [
        #text(size: 20pt, text(weight: "semibold", fill: color, author.at("name", default: "Your Name")))

        #author.at("street", default: "Main Street"), #author.at("location", default: "City, State, 12345") • #author.at("phone", default: "123-456-7890") • #author.at("email", default: "yourname@email.com")
      ])),
      align(right, date),
      [
        #recipient.at("name", default: "Recipient Name")

        #recipient.at("job", default: "Hiring Manager")

        #recipient.at("company", default: "Company Name")

        #recipient.at("street", default: "Main Street")

        #recipient.at("location", default: "City, State, 12345")
      ],
      body,
      [
        Sincerely,

        #author.at("name", default: "Your Name")
      ],
    )
  ]
}
