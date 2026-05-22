#import "colors.typ": *

#let job(title: [], ..job-args, body) = {
  let subtitle = job-args.at("subtitle", default: [])
  let start-time = job-args.at("start-time", default: datetime.today().display("[month repr:long] [year]"))
  let end-time = job-args.at("end-time", default: [Present])
  let description = job-args.at("description", default: [])

  grid(
    columns: (1fr, auto),
    row-gutter: 10pt,
    rows: 2,
    [
      == #title
      #subtitle
    ],
    [
      #set align(right)
      === #start-time — #end-time
      #description
    ],
    grid.cell(colspan: 2, body),
  )
}

#let timeline(body, last: false) = {
  let stroke = if not last { (right: 1pt + black) }
  let circle = box(circle(radius: 3pt, fill: dark-blue))
  (
    grid.cell(
      colspan: 2,
      align: center,
      inset: (x: 0pt, y: 0.4em),
      circle,
    ),
    grid.cell(
      rowspan: 2,
      inset: (bottom: if not last {1em} else {0em}),
      body,
    ),
    grid.cell(
      stroke: stroke,
    )[],
    none,
  )
}
