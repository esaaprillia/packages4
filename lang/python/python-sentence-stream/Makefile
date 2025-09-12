include $(TOPDIR)/rules.mk

PKG_NAME:=python-sentence-stream
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=sentence_stream
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sentence-stream
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A small sentence splitter for text streams
  URL:=https://github.com/OHF-Voice/sentence-stream
  DEPENDS:=+python3 +python3-regex
endef

define Package/python3-sentence-stream/description
  A small sentence splitter for text streams
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sentence-stream))
$(eval $(call BuildPackage,python3-sentence-stream))
$(eval $(call BuildPackage,python3-sentence-stream-src))
