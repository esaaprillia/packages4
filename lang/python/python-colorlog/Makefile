include $(TOPDIR)/rules.mk

PKG_NAME:=python-colorlog
PKG_VERSION:=6.10.1
PKG_RELEASE:=1

PYPI_NAME:=colorlog
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-colorlog
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Add colours to the output of Python's logging module.
  URL:=http://pypi.python.org/pypi/colorlog
  DEPENDS:=+python3 +python3-logging
endef

define Package/python3-colorlog/description
Add colours to the output of Python's logging module.
endef

$(eval $(call Py3Package,python3-colorlog))
$(eval $(call BuildPackage,python3-colorlog))
$(eval $(call BuildPackage,python3-colorlog-src))
