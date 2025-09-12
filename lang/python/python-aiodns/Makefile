include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiodns
PKG_VERSION:=3.5.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=aiodns
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aiodns
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple DNS resolver for asyncio
  URL:=https://pypi.python.org/pypi/aiodns
  DEPENDS:=+python3-light +python3-pycares
endef

define Package/python3-aiodns/description
aiodns provides a simple way for doing asynchronous DNS resolutions using pycares.
endef

$(eval $(call Py3Package,python3-aiodns))
$(eval $(call BuildPackage,python3-aiodns))
$(eval $(call BuildPackage,python3-aiodns-src))
