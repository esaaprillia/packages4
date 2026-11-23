include $(TOPDIR)/rules.mk

PKG_NAME:=python-seaborn
PKG_VERSION:=0.13.2
PKG_RELEASE:=1

PYPI_NAME:=seaborn
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-seaborn
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Statistical data visualization
  URL:=https://github.com/mwaskom/seaborn
  DEPENDS:=+python3 +python3-numpy +python3-pandas +python3-matplotlib
endef

define Package/python3-seaborn/description
Seaborn is a Python visualization library based on matplotlib.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-seaborn))
$(eval $(call BuildPackage,python3-seaborn))
$(eval $(call BuildPackage,python3-seaborn-src))
