#import "colors.typ": *

#let name = "Your Name"
#let phone = "000-000-0000"
#let email = "yourname@email.com"
#let street = "Street"
#let location = "City, State"
#let date = "Month Day, Year"

#let font = "Cambria"
#let text-size = 11pt

#let resume(
  name: name,
  contact: (phone,),
  color: black,
  body,
) = {
  set text(
    font: font,
    size: text-size,
    hyphenate: false,
  )
  set par(justify: true)
  set list(marker: [•])

  show heading: it => {
    set text(weight: "semibold")
    if (it.level == 1) {
      set text(fill: color, size: text-size + 4pt)
      grid(
        row-gutter: 0.5em,
        it,
        line(length: 100%),
      )
    } else if (it.level == 2) {
      text(size: text-size + 2pt, it)
    } else {
      it
    }
  }

  show: page(
    margin: 0.4in,
    [
      // Header
      #box(
        radius: 25%,
        width: 100%,
        fill: color,
        inset: (x: 0.5em, y: 1em),
        align(center, [
          #set text(fill: white)
          #grid(
            columns: contact.len(),
            rows: 2,
            row-gutter: 1em,
            stroke: (x, y) => if x != 0 and x != contact.len() { (left: white) },
            inset: (x: 0.75em),
            grid.cell(colspan: contact.len(), text(size: 1.5em, weight: "semibold", name)),
            ..contact,
          )
        ]),
      )
      #body
    ],
  )
}

#let cover-letter(
  author: (
    name: name,
    job: "Job Title",
    street: street,
    location: location,
    phone: phone,
    email: email,
  ),
  recipient: (
    name: "Recipient Name",
    job: "Hiring Manager",
    company: "Company Name",
    street: street,
    location: location,
  ),
  color: black,
  date: date,
  body,
) = {
  set text(
    font: font,
    size: text-size,
    hyphenate: false,
  )

  show: page[
    #grid(
      columns: 1fr,
      inset: (y: 1.5em),
      grid.cell(stroke: (y: black), grid(
        align: horizon + right,
        columns: (auto, 1fr),
        column-gutter: 1em,
        text(size: 20pt, text(weight: "semibold", fill: color, author.at("name", default: name))),
        [
          #author.at("street", default: street),
          #author.at("location", default: location) •
          #author.at("phone", default: phone) •
          #author.at("email", default: email)
        ],
      )),
      align(right, date),
      [
        #recipient.at("name", default: "Recipient Name")

        #recipient.at("job", default: "Hiring Manager")

        #recipient.at("company", default: "Company Name")

        #recipient.at("street", default: street)

        #recipient.at("location", default: location)
      ],
      [
        Dear #recipient.at("job", default: "Hiring Manager"),
      ],
      [
        #set par(justify: true)
        #body
      ],
      [
        Sincerely,

        #author.at("name", default: name)
      ],
    )
  ]
}
