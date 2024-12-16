#!make

.HELP: version ## Show the current version
version:
	echo ${VERSION}

.HELP: reqs  ## Upgrade requirements including pre-commit
reqs:
	bash ./compile_requirements.sh

.HELP: help  ## Display this message
help:
	@grep -E \
		'^.HELP: .*?## .*$$' $(MAKEFILE_LIST) | \
		sort | \
		awk 'BEGIN {FS = ".HELP: |## "}; {printf "\033[36m%-19s\033[0m %s\n", $$2, $$3}'
