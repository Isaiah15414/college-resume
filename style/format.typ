#import "colors.typ": *

#let name = "Your Name"
#let phone = "000-000-0000"
#let email = "yourname@email.com"
#let street = "Street"
#let location = "City, State, Zipcode"
#let date = "Month Day, Year"

#let resume(
  name: name,
  contact: (phone,),
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
        radius: 25%,
        width: 100%,
        fill: color,
        inset: 1em,
        align(center, [
          #set text(fill: white)
          #grid(
            columns: contact.len(),
            rows: 2,
            row-gutter: 1em,
            stroke: (x, y) => if x != 0 and x != contact.len() { (left: white) },
            inset: (x: 1em),
            grid.cell(colspan: contact.len(), text(size: 2em, weight: "semibold", name)),
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
    font: "Blinker",
    size: 11pt,
    hyphenate: false,
  )
  set par(justify: true)

  show: page[
    #grid(
      columns: 1fr,
      inset: (y: 1.5em),
      grid.cell(stroke: (y: black), grid(
        align: horizon + right,
        columns: (auto, 1fr),
        column-gutter: 2em,
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
        Dear #recipient.job,
      ],
      [
        #body
      ],
      [
        Sincerely,

        #author.at("name", default: name)
      ],
    )
  ]
}
