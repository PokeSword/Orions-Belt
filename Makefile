# TODO (Khangaroo): Make this process a lot less hacky (no, export did not work)
# See MakefileNSO

.PHONY: all clean orionsbelt send

SWSHVER ?= 131
SWSHVERSTR ?= 1.3.1
SWSHROMTYPE ?= US

all: orionsbelt

orionsbelt:
	$(MAKE) all -f MakefileNSO SWSHVER=$(SWSHVER) SWSHVERSTR=$(SWSHVERSTR)
	$(MAKE) orionsbelt_patch_$(S2VER)/*.ips

orionsbelt_patch_$(SWSHVER)/*.ips: patches/*.swshpatch patches/configs/$(SWSHVER).config patches/maps/$(SWSHVER)/*.map \
								build$(SWSHVER)/$(shell basename $(CURDIR))$(SWSHVER).map scripts/genPatch.py
	@rm -f orionsbelt_patch_$(SWSHVER)/*.ips
	python3 scripts/genPatch.py $(SWSHVER)

send: all
	python3 scripts/sendPatch.py $(IP) $(SWSHROMTYPE) $(SWSHVER)

clean:
	$(MAKE) clean -f MakefileNSO
	@rm -fr orionsbelt_patch_*
