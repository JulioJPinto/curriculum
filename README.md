# Curriculum Vitae

Minimal CV built with [Typst](https://typst.app) using the [`simple-cv`](https://typst.app/universe/package/simple-cv) template, served as a static page on Cloudflare Pages.

## Structure

- `cv.yaml`: all CV content. Text fields accept Typst markup (`*bold*`, `#link("url")[label]`).
- `main.typ`: layout only. Reads `cv.yaml` and renders it.
- `site/`: static page (`index.html`) that displays `cv.pdf`.

## Updating

Edit `cv.yaml` and push to `main`. Cloudflare Pages rebuilds the PDF and redeploys.

## Local preview

```sh
typst watch main.typ site/cv.pdf
```

## Cloudflare Pages settings

- **Build command:**
  ```sh
  curl -sSL https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz | tar xJ && ./typst-x86_64-unknown-linux-musl/typst compile main.typ site/cv.pdf
  ```
- **Build output directory:** `site`
