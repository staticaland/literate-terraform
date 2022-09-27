## help: print this help message
.PHONY: help
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

## gh/actions/pages: run the GitHub Actions pages workflow
.PHONY: gh/actions/pages
gh/actions/pages:
	gh workflow run pages.yml

## gh/actions/pages/gui: open the GitHub Actions pages workflow GUI
.PHONY: gh/actions/pages/gui
gh/actions/pages/gui:
	open "https://github.com/staticaland/literate-terraform/actions/workflows/pages.yml"

## gh/actions/list: list GitHub Actions workflow runs
.PHONY: gh/actions/list
gh/actions/list:
	gh run list
