include $(TOPDIR)/rules.mk

PKG_NAME:=python-matplotlib-inline
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PYPI_NAME:=matplotlib_inline
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-flit-core/host python-traitlets/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-matplotlib-inline
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Inline Matplotlib backend for Jupyter
  URL:=https://github.com/ipython/matplotlib-inline
  DEPENDS:=+python3 +python3-traitlets
endef

define Package/python3-matplotlib-inline/description
  Matplotlib Inline Back-end for IPython and Jupyter
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-matplotlib-inline))
$(eval $(call BuildPackage,python3-matplotlib-inline))
$(eval $(call BuildPackage,python3-matplotlib-inline-src))
