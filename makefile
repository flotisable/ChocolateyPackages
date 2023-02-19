.PHONY: all
all: update

.PHONY: update
update:
	$(info Update Packages...)
	@powershell ./update.ps1
