#import "@preview/simple-cv:0.1.0": *

// All content lives in cv.yaml — this file only handles layout.
#let data = yaml("cv.yaml")
#let md(s) = eval(str(s), mode: "markup")

#set document(title: data.name + " — CV", author: data.name)
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.6cm))
#set text(size: 10pt)
#set list(spacing: 0.5em)

#show: cv.with(
  name: data.name,
  motto: {
    data.tagline
    linebreak()
    data.contact.map(c => link(c.url, c.label)).join([ #h(0.4em)·#h(0.4em) ])
  },
)

#for section in data.sections [
  == #section.title

  #for e in section.at("entries", default: ()) {
    let args = (
      title: if "url" in e { link(e.url, e.title) } else { [#e.title] },
      interval: (start: e.start, end: e.at("end", default: "Present")),
    )
    if "role" in e { args.insert("title-note", md(e.role)) }
    if "location" in e { args.insert("interval-note", md(e.location)) }
    entry(..args)
    if "bullets" in e { list(..e.bullets.map(md)) }
  }

  #for s in section.at("skills", default: ()) [
    *#s.category:* #s.items.join(", ") \
  ]
]
