include $(TOPDIR)/rules.mk

PKG_NAME:=python-firecrawl-anydoc
PKG_VERSION:=0.2.4
PKG_RELEASE:=1

PYPI_NAME:=firecrawl_anydoc
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-firecrawl-anydoc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Convert documents (doc, docx, odt, rtf, epub, pdf, presentations, spreadsheets, csv) to GitHub-Flavored Markdown
  URL:=https://github.com/firecrawl/anydoc
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-firecrawl-anydoc/description
  Convert Word, PowerPoint, Excel, OpenDocument, RTF, EPUB, CSV, and PDF files into clean GitHub-Flavored Markdown. Python bindings for the anydoc Rust crate, built by Firecrawl. Also available as a hosted API through Firecrawl Parse, which adds our OCR models for the scanned pages anydoc can't read on its own.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-firecrawl-anydoc))
$(eval $(call BuildPackage,python3-firecrawl-anydoc))
$(eval $(call BuildPackage,python3-firecrawl-anydoc-src))
