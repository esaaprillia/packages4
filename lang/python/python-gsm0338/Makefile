include $(TOPDIR)/rules.mk

PKG_NAME:=python-gsm0338
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=gsm0338
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

define Package/python3-gsm0338
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=GSM 03.38 codec
  URL:=https://github.com/dsch/gsm0338
  DEPENDS:= \
	+python3
endef

define Package/python3-gsm0338/description
Python Codec for 3GPP TS 23.038 / ETSI GSM 03.38
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-gsm0338))
$(eval $(call BuildPackage,python3-gsm0338))
$(eval $(call BuildPackage,python3-gsm0338-src))
