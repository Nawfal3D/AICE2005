# Improved Makefile v2 for Marp Lecture/Seminar Presentations
# Author: Prof. Dr.-Ing. Daniel Kriesten (with AI enhancements)
# Date: 2025-04-27
#######################################################################
# Use PREFIX to prefix all files (e.g. SwTech4Ing-V- for lecture and
# SwTech4Ing-S- for seminar)
# To do this on demand, use make PREFIX=Foo
#######################################################################

PREFIX ?=FOO
BASENAME ?= 01_Introduction

FILEBASE := $(BASENAME)$(if $(PREFIX),-$(PREFIX))

# Directories
current_dir := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
TOOL_DIR := ./tools
THEME_DIR := ./theme
MKD_SRC_DIR ?= ./markdown
IMG_SRC_DIR := ./images
HTM_OUT_DIR := ./html
PDF_OUT_DIR := ./pdf

# Platform-specific settings
ifeq ($(OS),Windows_NT)
    SHELL := bash.exe
    MARP := $(TOOL_DIR)/marp.exe
    SHOW := start
else
    SHELL := /usr/bin/env bash
    MARP := marp
    SHOW := xdg-open
endif
.SHELLFLAGS := -eo pipefail -c

# Git info
GITREVISION := $(shell git describe --always --tags HEAD)

# Tools
RM := rm -vf
CONCAT := $(TOOL_DIR)/marp_concat.py

# File lists
MKDFILES := $(shell find $(MKD_SRC_DIR) -maxdepth 1 -name '*.md' -and -not -name '_*.md' | sort)
IMAGES := $(shell find $(IMG_SRC_DIR) -maxdepth 1 \( -name '*.svg' -or -name '*.png' \))

# Output filenames
HTMLOUT := $(addprefix $(HTM_OUT_DIR)/$(FILEBASE)-,$(addsuffix .html,$(basename $(notdir $(MKDFILES)))))
PDFOUT := $(addprefix $(PDF_OUT_DIR)/$(FILEBASE)-,$(addsuffix .pdf,$(basename $(notdir $(MKDFILES)))))

# Front- and backmatter
FRONTMATTER := $(MKD_SRC_DIR)/_frontmatter.md
BACKMATTER := $(MKD_SRC_DIR)/_backmatter.md

# Targets
.PHONY: all prepare html pdf pptx splitt_html splitt_pdf clean distclean resultclean show show_html show_pdf help

all: prepare html pdf

prepare:
	@mkdir -p $(HTM_OUT_DIR) $(PDF_OUT_DIR)

html: $(FILEBASE).html $(IMAGES)
	@echo "Created single Marp HTML presentation"

pdf: $(FILEBASE).pdf $(IMAGES)
	@echo "Created single Marp PDF presentation"

pptx: $(FILEBASE).pptx $(IMAGES)
	@echo "Created single Marp PPTX presentation"

splitt_html: prepare $(HTMLOUT) $(IMAGES)
	@echo "Created split Marp HTML presentations"

splitt_pdf: prepare $(PDFOUT) $(IMAGES)
	@echo "Created split Marp PDF presentations"

server:
	@echo "Starting Marp server on http://localhost:8080"
	@$(MARP) --html --server --watch --allow-local-files --theme-set $(THEME_DIR) --output=$(HTM_OUT_DIR) --input-dir=$(MKD_SRC_DIR)

# Main document assembly
$(FILEBASE).md: $(MKDFILES) $(FRONTMATTER) $(BACKMATTER)
	@echo "Concatenating $@ from $(MKDFILES)"
	@python3 $(CONCAT) --frontmatter=$(FRONTMATTER) --backmatter=$(BACKMATTER) --output=$@ $(MKDFILES)
	@sed -i -e 's/GITREVISION/$(GITREVISION)/' $@

# Unified build function
define build_marp
	@echo "Creating $@ from $<"
	@$(MARP) --html $(1) --allow-local-files --bespoke.progress --theme-set $(THEME_DIR) --output=$@ $^
endef

$(FILEBASE).html: $(FILEBASE).md
	$(call build_marp,)

$(FILEBASE).pdf: $(FILEBASE).md
	$(call build_marp,--pdf)

$(FILEBASE).pptx: $(FILEBASE).md
	$(call build_marp,--pptx-editable)

# Split builds
$(HTM_OUT_DIR)/$(FILEBASE)-%.html: $(MKD_SRC_DIR)/%.md
	@mkdir -p $(HTM_OUT_DIR)
	@echo "Creating split HTML $@ from $<"
	@$(MARP) --html --allow-local-files --bespoke.progress --theme-set $(THEME_DIR) --output=$(current_dir)/$@ $(current_dir)/$<
	@sed -i -e 's/GITREVISION/$(GITREVISION)/' $@

$(PDF_OUT_DIR)/$(FILEBASE)-%.pdf: $(MKD_SRC_DIR)/%.md
	@mkdir -p $(PDF_OUT_DIR)
	@echo "Creating split PDF $@ from $<"
	@sed -e 's/GITREVISION/$(GITREVISION)/' $< > $<.rev
	@$(MARP) --html --pdf --allow-local-files --bespoke.progress --theme-set $(THEME_DIR) --output=$(current_dir)/$@ $(current_dir)/$<.rev
	@$(RM) $<.rev

show: server

show_html: $(FILEBASE).html
	@$(SHOW) "$(FILEBASE).html"

show_pdf: $(FILEBASE).pdf
	@$(SHOW) "$(FILEBASE).pdf"

# Cleaning
clean:
	@$(RM) $(FILEBASE).md

picsclean:
	@echo "Dry run: cleaning images"
	@git clean -ndx $(IMG_SRC_DIR)

resultclean: clean picsclean
	@$(RM) $(FILEBASE).html $(FILEBASE).pdf $(FILEBASE).pptx
	@$(RM) $(HTM_OUT_DIR)/*.html $(PDF_OUT_DIR)/*.pdf

distclean: resultclean
	@echo "Dry run: full clean"
	@git clean --exclude='.*.swp' --exclude='*.md' --exclude="images" -ndx

# Help
help:
	@echo "Available targets:"
	@echo "  make all            - Prepare and build HTML and PDF"
	@echo "  make html           - Build HTML only"
	@echo "  make pdf            - Build PDF only"
	@echo "  make pptx           - Build editable PPTX"
	@echo "  make splitt_html    - Build HTML per Markdown"
	@echo "  make splitt_pdf     - Build PDF per Markdown"
	@echo "  make server         - Start Marp live server"
	@echo "  make clean          - Clean temporary files"
	@echo "  make distclean      - Full clean (dry run)"
	@echo "  make show_html      - Open HTML output"
	@echo "  make show_pdf       - Open PDF output"
