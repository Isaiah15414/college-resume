#import "colors.typ": *

#let timeline-grid = grid.with(
  inset: (left: 0mm, rest: 1mm),
  columns: (1.25em, 1.25em, 1fr),
  column-gutter: (0pt, 0.3em),
)

#let timeline(body, last: false) = (
  grid.cell(
    colspan: 2,
    align: center,
    inset: (x: 0pt, y: 0.3em),
    box(circle(radius: 0.3em, stroke: 0.1em)),
  ),
  grid.cell(
    rowspan: 2,
    inset: (bottom: if not last { 1em } else { 0em }),
    body,
  ),
  grid.cell(
    stroke: if not last { (right: 1pt + black) },
    none,
  ),
  none,
)

#let section(title: [], subtitle: [], start-time: [], end-time: [], location: [], body) = grid(
  columns: (1fr, auto),
  row-gutter: 0.8em,
  rows: 3,
  [== #title],
  align(right, {
    if start-time != [] {
      if end-time == [] { end-time = [Present] }
      [=== #start-time -- #end-time]
    }
  }),
  text(style: "italic", subtitle),
  align(right, text(style: "italic", location)),
  grid.cell(colspan: 2, body),
)

#let list-grid = grid.with(
  align: horizon,
  columns: (3.5cm, auto),
  column-gutter: 1em,
  row-gutter: 0.65em,
)
