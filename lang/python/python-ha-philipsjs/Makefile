include $(TOPDIR)/rules.mk

PKG_NAME:=python-ha-philipsjs
PKG_VERSION:=3.2.4
PKG_RELEASE:=1

PYPI_NAME:=ha_philipsjs
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ha-philipsjs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=jointSPACE API for Home-Assistant
  URL:=https://github.com/danielperna84/ha-philipsjs
  DEPENDS:=+python3 +python3-cryptography +python3-httpx
endef

define Package/python3-ha-philipsjs/description
Wrapper library to integrate Philips TVs with jointSPACE API into Home-Assistant
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ha-philipsjs))
$(eval $(call BuildPackage,python3-ha-philipsjs))
$(eval $(call BuildPackage,python3-ha-philipsjs-src))
