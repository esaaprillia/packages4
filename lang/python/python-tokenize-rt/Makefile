include $(TOPDIR)/rules.mk

PKG_NAME:=python-tokenize-rt
PKG_VERSION:=6.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=tokenize_rt
PKG_HASH:=e8ee836616c0877ab7c7b54776d2fefcc3bde714449a206762425ae114b53c86

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tokenize-rt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A wrapper around the stdlib tokenize which roundtrips.
  URL:=https://github.com/asottile/tokenize-rt
  DEPENDS:=+python3
endef

define Package/python3-tokenize-rt/description
The stdlib tokenize module does not properly roundtrip. This wrapper around the stdlib provides two additional tokens ESCAPED_NL and UNIMPORTANT_WS, and a Token data type. Use src_to_tokens and tokens_to_src to roundtrip.
This library is useful if you're writing a refactoring tool based on the python tokenization.
endef

$(eval $(call Py3Package,python3-tokenize-rt))
$(eval $(call BuildPackage,python3-tokenize-rt))
$(eval $(call BuildPackage,python3-tokenize-rt-src))
