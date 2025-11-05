include $(TOPDIR)/rules.mk

PKG_NAME:=python-axis
PKG_VERSION:=65
PKG_RELEASE:=1

PYPI_NAME:=axis
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-axis
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library enabling easy communication with Axis devices and its metadatastream
  URL:=https://github.com/Kane610/axis
  DEPENDS:=+python3-light +python3-faust-cchardet +python3-httpx +python3-orjson +python3-packaging +python3-xmltodict
endef

define Package/python3-axis/description
Python project to set up a connection towards Axis Communications devices and to subscribe to specific events on the metadatastream.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-axis))
$(eval $(call BuildPackage,python3-axis))
$(eval $(call BuildPackage,python3-axis-src))
