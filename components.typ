#let section(title: [], ..section-args, body) = {
  let subtitle = section-args.at("subtitle", default: [])
  let start-time = section-args.at("start-time", default: datetime.today().display("[month repr:long] [year]"))
  let end-time = section-args.at("end-time", default: [Present])
  let description = section-args.at("description", default: [])
  grid(
    columns: (1fr, auto),
    row-gutter: 10pt,
    rows: 2,
    [
      === #title
      #subtitle
    ],
    [
      #set align(right)
      === #start-time -- #end-time
      #description
    ],
    grid.cell(colspan: 2, body),
  )
}