#import "colors.typ": *

#let resume(
  name: "",
  phone: "",
  email: "",
  linkedin: "",
  description: "",
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

  show heading: it => {
    set text(weight: "semibold")
    if (it.level == 1) {
      set text(fill: dark-blue)
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
      fill: dark-blue,
      inset: 10pt,
      align(
        center,
        [
          #set text(fill: white)
          #text(size: 20pt, weight: "semibold", name) \
          #phone • #email • #linkedin
        ],
      ),
    )

    #body
  ]
}
