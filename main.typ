#import "@preview/simple-cv:0.1.0": *

// All content lives in cv.yaml. This file only handles layout.
#let data = yaml("cv.yaml")
#let md(s) = eval(str(s), mode: "markup")

#set document(title: data.name + " — CV", author: data.name)
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.6cm))
// Arimo is metric-compatible with Arial and bundled in fonts/ (compile with --font-path fonts).
#set text(font: "Arimo", size: 10pt)
#set list(spacing: 0.5em)

#show: cv.with(
  name: data.name,
  // Explicit black fill overrides the template's blue links in the header.
  motto: data.contact.map(c => link(c.url, text(fill: black, c.label))).join([ #h(0.4em)·#h(0.4em) ]),
)

// Monochrome overrides for the template (body only).
#show link: set text(fill: black)
#show heading.where(level: 2): it => block(
  inset: (bottom: 0.3em),
  stroke: (bottom: 0.5pt + black),
  width: 100%,
  text(size: 1.05em, weight: "bold", tracking: 0.05em, upper(it.body)),
)

// Same look as the template's `entry`, but for a single date instead of a range.
#let single-entry(title, date, title-note, interval-note) = block({
  strong(title) + h(0.5em) + box(width: 1fr, repeat[·]) + h(0.5em) + date
  linebreak()
  emph(title-note + h(1fr) + interval-note)
})

#for section in data.sections [
  == #section.title

  #for e in section.at("entries", default: ()) {
    let title = if "url" in e { link(e.url, e.title) } else { [#e.title] }
    let role = md(e.at("role", default: ""))
    let location = md(e.at("location", default: ""))
    if "date" in e {
      single-entry(title, e.date, role, location)
    } else {
      entry(
        title: title,
        interval: (start: e.start, end: e.at("end", default: "Present")),
        title-note: role,
        interval-note: location,
      )
    }
    if "bullets" in e { list(..e.bullets.map(md)) }
  }

  #for s in section.at("skills", default: ()) [
    *#s.category:* #s.items.join(", ") \
  ]
]
