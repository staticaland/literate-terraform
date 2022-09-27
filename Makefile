## help: print this help message
.PHONY: help
help:
	@echo 'Usage:'
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /'

## gh/actions/pages: run the GitHub Actions pages workflow
.PHONY: gh/actions/pages
gh/actions/pages:
	gh workflow run pages.yml

## gh/actions/pages: run the GitHub Actions pages workflow
.PHONY: gh/actions/list
gh/actions/list:
	gh run list
