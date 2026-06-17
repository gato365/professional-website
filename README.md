# Immanuel Williams — Academic Website

A clean, professional academic site built with **Quarto**, designed to render natively in **Positron** (or RStudio). Cal Poly navy-and-gold palette, Fraunces + Inter typography.

## Run it in Positron

1. Open this folder in Positron.
2. Make sure Quarto is installed (Positron bundles it; otherwise get it at <https://quarto.org/docs/get-started/>).
3. In the terminal, run a live preview:

   ```bash
   quarto preview
   ```

   Or render the full static site:

   ```bash
   quarto render
   ```

   Output lands in `_site/`. The generated folder is ignored by Git because GitHub Actions renders and deploys it for you.

## Publish with GitHub Pages

This repository is configured to deploy automatically with GitHub Actions.

One-time setup:

```bash
git init -b main
git add .
git commit -m "Initial website"
```

Then create an empty GitHub repository and connect this folder to it:

```bash
git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
git push -u origin main
```

In GitHub, open **Settings > Pages** for the repository and set **Build and deployment > Source** to **GitHub Actions**. After that, every push to `main` runs `.github/workflows/deploy.yml`, renders the Quarto site, and deploys `_site/` to GitHub Pages. You can also deploy manually from the repository's **Actions** tab by running the "Deploy Quarto site to GitHub Pages" workflow.

## Pages

| File | Purpose |
|------|---------|
| `index.qmd` | Home / hero / focus areas |
| `research.qmd` | CRD, ETV, LFM frameworks |
| `publications.qmd` | 7 articles + 1 encyclopedia entry, APA 7 |
| `projects.qmd` | Software cards + GIF/animation gallery |
| `students.qmd` | Student profiles (circular avatars) |
| `presentations.qmd` | Talks & minicourses |
| `styles.scss` | The full theme — colors live at the top |
| `_quarto.yml` | Site config, navbar, footer |

## Adding your images

- **Your photo:** save as `images/profile/immanuel.jpg` (portrait, ~4:5). It auto-loads on the home page.
- **Student photos:** save square images to `images/students/` named `ryan.jpg`, `sophia.jpg`, etc. If a file is missing, the avatar falls back to the student's initial.
- **GIFs / animations / Shiny screenshots:** drop into `images/projects/`, then in `projects.qmd` swap the placeholder `<div class="ph">…</div>` for `<img src="images/projects/yourfile.gif" alt="…">`.

## Things to fill in / confirm

- GitHub URL and email in `_quarto.yml` (currently placeholders).
- Co-author spellings and the encyclopedia editor on the publications page.
- Real student names/roles/photos and presentation details.

## Changing the look

All design tokens are at the top of `styles.scss` under `scss:defaults` — change `$navy`, `$gold`, or the fonts there and the whole site updates.
