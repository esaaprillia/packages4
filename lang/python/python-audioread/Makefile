include $(TOPDIR)/rules.mk

PKG_NAME:=python-audioread
PKG_VERSION:=3.1.0
PKG_RELEASE:=1

PYPI_NAME:=audioread
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-audioread
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Multi-library, cross-platform audio decoding.
  URL:=https://github.com/beetbox/audioread
  DEPENDS:=+python3 +python3-standard-aifc +python3-standard-sunau
endef

define Package/python3-audioread/description
Decode audio files using whichever backend is available.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-audioread))
$(eval $(call BuildPackage,python3-audioread))
$(eval $(call BuildPackage,python3-audioread-src))
