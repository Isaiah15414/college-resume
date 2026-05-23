#import "colors.typ": *

#let resume(
  name: "FirstName LastName",
  color: dark-blue,
  contact: ("",),
  description: none,
  body,
) = {
  set page(
    paper: "us-letter",
    margin: 1cm,
    // footer: {
    //   set text(size: 9pt)
    //   grid(columns: (1fr, 1fr), [This resume was developed indepedently in Typst.], align(right, [https://github.com/Isaiah15414/college-resume]))
    // }
  )

  set text(
    font: "Blinker",
    size: 11pt,
    hyphenate: false,
  )

  set par(justify: true)

  set list(marker: ([•]))

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
