include $(TOPDIR)/rules.mk

PKG_NAME:=python-markdown-it-py
PKG_VERSION:=3.0.0
PKG_RELEASE:=1

PYPI_NAME:=markdown-it-py
PKG_HASH:=e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-markdown-it-py
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python port of markdown-it. Markdown parsing, done right!
  URL:=https://markdown-it-py.readthedocs.io/
  DEPENDS:=+python3-light +python3-mdurl
endef

define Package/python3-markdown-it-py/description
• Follows the CommonMark spec for baseline parsing
• Configurable syntax: you can add new rules and even replace existing ones.
• Pluggable: Adds syntax extensions to extend the parser (see the plugin list).
• High speed (see our benchmarking tests)
• Safe by default
• Member of Google's Assured Open Source Software
This is a Python port of markdown-it, and some of its associated plugins. For more details see: https://markdown-it-py.readthedocs.io.
endef

$(eval $(call Py3Package,python3-markdown-it-py))
$(eval $(call BuildPackage,python3-markdown-it-py))
$(eval $(call BuildPackage,python3-markdown-it-py-src))
