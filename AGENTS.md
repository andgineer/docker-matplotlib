# Repository Guidelines

This repository builds and publishes a lean Docker image with Python, Matplotlib, and NumPy, plus the XKCD-friendly font. Keep changes small, reproducible, and image-size aware.

## Project Structure & Module Organization
- Root: `Dockerfile`, `requirements.in|txt`, `compile_requirements.sh`, `Makefile`, `README.md`, `xkcd.otf`.
- CI: `.github/workflows/dockerhub.yml` builds and pushes multi-arch images.
- No application source or tests live here; this repo’s artifact is the container image.

## Build, Test, and Development Commands
- `make help`: list available Make targets.
- `make reqs`: pin/upgrade dependencies using `pip-compile` into `requirements.txt`.
- Build image (local): `docker build -t matplotlib:dev .`
- Smoke test image: `docker run --rm matplotlib:dev -c "import matplotlib, numpy; print(matplotlib.__version__)"`
- Font check: `docker run --rm matplotlib:dev -c "import matplotlib.font_manager as fm; print(any('xkcd' in f.name.lower() for f in fm.fontManager.ttflist))"`

## Coding Style & Naming Conventions
- Dockerfile: prefer minimal layers; pin tools via `requirements.txt`; keep commands idempotent.
- Shell: bash scripts should be executable and simple; use tabs in `Makefile` targets.
- Files: lowercase with hyphens; keep repo root tidy.

## Testing Guidelines
- Goal: verify image runs and Matplotlib loads with the pinned version and font available.
- Run the smoke tests above on every change to `Dockerfile` or requirements.
- For dependency updates, compare image size: `docker images | grep matplotlib` and note change in PR.

## Commit & Pull Request Guidelines
- Commits: imperative present (“Update Matplotlib to 3.10.0”), small, focused.
- When bumping deps: edit `requirements.in`, run `make reqs`, commit both files.
- PRs: include rationale, notable size impact, and local smoke-test output. Link related issues. Ensure CI passes.

## Security & Configuration Tips
- CI uses Docker Hub secrets: `DOCKER_HUB_USERNAME`, `DOCKER_HUB_ACCESS_TOKEN`.
- Do not commit virtualenvs or local caches. Keep sensitive data out of the image and build args.
