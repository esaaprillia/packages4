include $(TOPDIR)/rules.mk

PKG_NAME:=python-prometheus-client
PKG_VERSION:=0.24.1
PKG_RELEASE:=1

PYPI_NAME:=prometheus_client
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-prometheus-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python client for the Prometheus monitoring system.
  URL:=https://github.com/prometheus/client_python
  DEPENDS:=+python3 +python3-twisted
endef

define Package/python3-prometheus-client/description
Prometheus instrumentation library for Python applications
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-prometheus-client))
$(eval $(call BuildPackage,python3-prometheus-client))
$(eval $(call BuildPackage,python3-prometheus-client-src))
