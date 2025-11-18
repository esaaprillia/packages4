include $(TOPDIR)/rules.mk

PKG_NAME:=python-pysilero-vad
PKG_VERSION:=2.1.1
PKG_RELEASE:=1

PYPI_NAME:=pysilero_vad
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pysilero-vad
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pre-packaged voice activity detector using silero-vad
  URL:=https://github.com/rhasspy/pysilero-vad
  DEPENDS:=+python3 +python3-numpy
endef

define Package/python3-pysilero-vad/description
A pre-packaged voice activity detector using silero-vad.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pysilero-vad))
$(eval $(call BuildPackage,python3-pysilero-vad))
$(eval $(call BuildPackage,python3-pysilero-vad-src))
