include $(TOPDIR)/rules.mk

PKG_NAME:=python-matplotlib
PKG_VERSION:=3.10.0
PKG_RELEASE:=1

PYPI_NAME:=matplotlib
PKG_HASH:=b886d02a581b96704c9d1ffe55709e49b4d2d52709ccebc4be42db856e511278

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-pybind11/host meson-python/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-pybind11/host meson-python/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../meson/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-matplotlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=matplotlib plotting with Python
  URL:=matplotlib.org/stable/
  DEPENDS:=+python3 +python3-contourpy +python3-cycler +python3-fonttools +python3-kiwisolver +python3-numpy +python3-packaging +python3-pillow +python3-pyparsing +python3-dateutil +libfreetype +qhull
endef

define Package/python3-matplotlib/description
  Matplotlib is a comprehensive library for creating static, animated, and interactive visualizations in Python.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(INSTALL_CONF) files/cross/__init__.py $(HOST_PYTHON3_PKG_DIR)/mesonpy/
endef

MESON_ARGS += \
	-Dsystem-freetype=true \
	-Dsystem-qhull=true

$(eval $(call Py3Package,python3-matplotlib))
$(eval $(call BuildPackage,python3-matplotlib))
$(eval $(call BuildPackage,python3-matplotlib-src))
$(eval $(call HostBuild))
