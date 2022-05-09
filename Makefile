.PHONY: changelog release

TMP:=.test.zip
LEGACY_BUCKET:=observeinc
BUCKET:=observeinc-terraform-registry
TAG?=$(shell git describe --tags --always)
REPO:=$(notdir $(shell pwd))
MODULE_NAMESPACE:=observeinc
MODULE_NAME:=$(subst terraform-observe-,,$(REPO))
MODULE_SYSTEM:=observe
MODULE_VERSION:=$(TAG:v%=%)

changelog:
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s minor -o`

release:
	semtag final -s minor

changelog-patch:
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s patch -o`

release-patch:
	semtag final -s patch

s3:
	zip -Xr $(TMP) *
	aws s3 cp $(TMP) s3://$(LEGACY_BUCKET)/terraform-modules/$(REPO)-$(TAG).zip
	aws s3 cp $(TMP) s3://$(BUCKET)/artifacts/v1/modules/namespace=observeinc/name=$(MODULE_NAME)/provider=$(MODULE_SYSTEM)/version=$(MODULE_VERSION)/observeinc-$(MODULE_NAME)-$(MODULE_SYSTEM)-$(MODULE_VERSION).zip
	rm $(TMP)

outputs:
	grep "resource \"observe_dataset\"" *.tf | cut -d' ' -f3 | awk '{gsub(/"/, "", $$0); print "output \""$$0"\" {\n  value = observe_dataset."$$0"\n}\n"}' > outputs.tf
