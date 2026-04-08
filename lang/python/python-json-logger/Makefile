include $(TOPDIR)/rules.mk

PKG_NAME:=python-json-logger
PKG_VERSION:=4.1.0
PKG_RELEASE:=1

PYPI_NAME:=python_json_logger
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-json-logger
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=JSON Log Formatter for the Python Logging Package
  URL:=https://github.com/nhairs/python-json-logger
  DEPENDS:= \
	+python3-light
endef

define Package/python3-json-logger/description
Python JSON Logger enables you produce JSON logs when using Python's logging package.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-json-logger))
$(eval $(call BuildPackage,python3-json-logger))
$(eval $(call BuildPackage,python3-json-logger-src))
