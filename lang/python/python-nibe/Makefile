include $(TOPDIR)/rules.mk

PKG_NAME:=python-nibe
PKG_VERSION:=2.19.0
PKG_RELEASE:=1

PYPI_NAME:=nibe
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-nibe
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Nibe heatpump communication library
  URL:=https://github.com/yozik04/nibe
  DEPENDS:=+python3 +python3-construct +python3-async-modbus +python3-async-timeout +python3-tenacity +python3-exceptiongroup +python3-pandas +python3-slugify +python3-asyncclick
endef

define Package/python3-nibe/description
Library for communication with Nibe heatpumps.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-nibe))
$(eval $(call BuildPackage,python3-nibe))
$(eval $(call BuildPackage,python3-nibe-src))
