.DEFAULT_GOAL := help

include help.mk

#------------------------------------
# Tests
#------------------------------------
.PHONY: test
## Run lint tests | Tests
test:
	tflint
#------------------------------------
