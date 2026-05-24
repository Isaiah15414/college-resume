#import "colors.typ": *

#let timeline-grid = grid.with(
  inset: (left: 0mm, rest: 1mm),
  columns: (1.25em, 1.25em, 1fr),
  column-gutter: (0pt, 0.3em),
)

#let timeline(body, last: false) = {
  let stroke = if not last { (right: 1pt + black) }
  let circle = box(circle(radius: 3pt, stroke: 1.5pt))
  (
    grid.cell(
      colspan: 2,
      align: center,
      inset: (x: 0pt, y: 0.4em),
      circle,
    ),
    grid.cell(
      rowspan: 2,
      inset: (bottom: if not last { 1em } else { 0em }),
      body,
    ),
    grid.cell(
      stroke: stroke,
    )[],
    none,
  )
}

#let job(title: [], subtitle: [], start-time: [], end-time: [], description: [], body) = {
  grid(
    columns: (1fr, auto),
    row-gutter: 1em,
    rows: 3,
    [== #title],
    align(right, {
      if start-time != [] {
        if end-time == [] { end-time = [Present] }
        [=== #start-time -- #end-time]
      }
    }),
    subtitle,
    align(right, description),
    grid.cell(colspan: 2, body),
  )
}

#let list-grid = grid.with(
  columns: (3.5cm, auto),
  row-gutter: 10pt,
)
