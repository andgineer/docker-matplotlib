# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository maintains a lightweight Docker image (`andgineer/matplotlib`) based on Alpine Linux with pre-installed Python, Matplotlib, NumPy, and the XKCD font. The primary artifact is the Docker image itself, not application code.

## Architecture

- **Base Image**: Built on `andgineer/lean-python` for minimal footprint
- **Dependencies**: Managed via pip-tools with `requirements.in` → `requirements.txt`
- **Build Process**: GitHub Actions workflow automatically builds multi-arch images and pushes to Docker Hub
- **Versioning**: Uses Matplotlib version for image tags (e.g., `3.10.0`, `3.10.0-3.12` for Python version)

## Common Commands

### Development
```bash
# View available Make targets
make help

# Update and pin dependencies
make reqs

# Local image build
docker build -t matplotlib:dev .

# Smoke test the image
docker run --rm matplotlib:dev -c "import matplotlib, numpy; print(matplotlib.__version__)"

# Test XKCD font availability
docker run --rm matplotlib:dev -c "import matplotlib.font_manager as fm; print(any('xkcd' in f.name.lower() for f in fm.fontManager.ttflist))"
```

### Dependency Management
- Edit `requirements.in` for new/updated dependencies
- Run `make reqs` to generate `requirements.txt`
- Commit both files together

## Key Files

- `Dockerfile`: Multi-stage build with font installation and Python packages
- `requirements.in`: High-level dependency specifications
- `compile_requirements.sh`: Dependency compilation script using pip-compile
- `.github/workflows/dockerhub.yml`: CI/CD pipeline for building and pushing images
- `xkcd.otf`: Comic Sans font file for Matplotlib XKCD style support

## Testing Strategy

Always run smoke tests after making changes:
1. Verify image builds successfully
2. Test Python import functionality
3. Confirm Matplotlib version matches expectations
4. Validate XKCD font is available

Compare image sizes before/after changes using `docker images | grep matplotlib`.

## Build Process

The GitHub Actions workflow:
1. Builds image locally to extract version information
2. Tags with multiple formats: `latest`, `X.Y.Z` (Matplotlib version), `X.Y.Z-A.B` (with Python version)
3. Pushes multi-architecture images (linux/amd64, linux/arm64) to Docker Hub
4. Uses Docker Hub secrets for authentication