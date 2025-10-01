include $(TOPDIR)/rules.mk

PKG_NAME:=python-threadpoolctl
PKG_VERSION:=3.6.0
PKG_RELEASE:=1

PYPI_NAME:=threadpoolctl
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-threadpoolctl
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Thread-pool Controls
  URL:=https://github.com/joblib/threadpoolctl
  DEPENDS:=+python3
endef

define Package/python3-threadpoolctl/description
Python helpers to limit the number of threads used in the threadpool-backed of common native libraries used for scientific computing and data science (e.g. BLAS and OpenMP).
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-threadpoolctl))
$(eval $(call BuildPackage,python3-threadpoolctl))
$(eval $(call BuildPackage,python3-threadpoolctl-src))
