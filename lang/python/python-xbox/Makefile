include $(TOPDIR)/rules.mk

PKG_NAME:=python-xbox
PKG_VERSION:=0.1.2
PKG_RELEASE:=1

PYPI_NAME:=python_xbox
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatch-regex-commit/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-xbox
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A library to authenticate with Xbox Network and use their API
  URL:=https://github.com/tr4nt0r/python-xbox
  DEPENDS:=+python3 +python3-ecdsa +python3-httpx +python3-ms-cv +python3-pydantic
endef

define Package/python3-xbox/description
python-xbox is a python library to authenticate with Xbox Network via your Microsoft Account and provides Xbox related Web-API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-xbox))
$(eval $(call BuildPackage,python3-xbox))
$(eval $(call BuildPackage,python3-xbox-src))
