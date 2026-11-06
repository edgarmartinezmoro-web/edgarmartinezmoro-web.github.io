# edgarmartinezmoro-web.github.io

Personal web page of Edgar Martínez-Moro (University of Valladolid), built with the
[Academic Pages](https://github.com/academicpages/academicpages.github.io) Jekyll template.

- Pages: `_pages/` (`about.md` is the home page, plus `research.md`, `teaching.md`, `coworkers.md`).
- Menu: `_data/navigation.yml`. Sidebar and site data: `_config.yml`.
- PDFs and other downloads: `files/`. Images: `images/`.
- Old static pages kept as they were: `ekuseminar/`, `cursos/`, `bachilleratoexcelencia/`.

The site is built and deployed by `.github/workflows/jekyll.yml` on every push to `main`
(Settings → Pages → Source: GitHub Actions).

To preview locally: `bundle install` and then `bundle exec jekyll serve -l -H localhost`.
