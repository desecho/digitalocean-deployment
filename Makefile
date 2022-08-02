.DEFAULT_GOAL := help

include makefiles/colors.mk
include makefiles/help.mk
include makefiles/macros.mk

#------------------------------------
# Installation
#------------------------------------
ACTIONLINT_VERSION := 1.6.13
ACTIONLINT_PATH    := ${BIN_DIR}/actionlint
ACTIONLINT_URL     := https://github.com/rhysd/actionlint/releases/download/v${ACTIONLINT_VERSION}/actionlint_${ACTIONLINT_VERSION}_linux_amd64.tar.gz
ACTIONLINT_TMP_DIR := $(shell mktemp -d)
ACTIONLINT_ARCHIVE := actionlint.tar.gz

.PHONY: install-actionlint
## Install actionlint | Installation
install-actionlint:
	$(call print,Installing actionlint)
	@cd ${ACTIONLINT_TMP_DIR} && \
	curl ${ACTIONLINT_URL} -Lo ${ACTIONLINT_ARCHIVE} && \
	tar -xvf ${ACTIONLINT_ARCHIVE} && \
	sudo mv actionlint ${ACTIONLINT_PATH}
#------------------------------------

#------------------------------------
# Tests
#------------------------------------
.PHONY: test
## Run lint tests | Tests
test:
	$(call print,Running linters)
	@tflint
	@actionlint
#------------------------------------
