include $(TOPDIR)/rules.mk

PKG_NAME:=meson-python
PKG_VERSION:=0.17.1
PKG_RELEASE:=1

PYPI_NAME:=meson_python
PKG_HASH:=efb91f69f2e19eef7bc9a471ed2a4e730088cc6b39eacaf3e49fc4f930eb5f83

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host pyproject-metadata/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host pyproject-metadata/host

MESON_USE_STAGING_PYTHON:=1
PKG_HOST_ONLY:=1

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/meson-python
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Meson PEP 517 Python build backend
  URL:=https://github.com/mesonbuild/meson-python
  DEPENDS:=+python3 +python3-pyproject-metadata
  BUILDONLY:=1
endef

define Package/meson-python/description
  meson-python is a Python build backend built on top
  of the Meson build system. It enables to use Meson for the configuration
  and build steps of Python packages. Meson is an open source build system
  meant to be both extremely fast, and, even more importantly, as user
  friendly as possible. meson-python is best suited for building Python
  packages containing extension modules implemented in languages such as C,
  C++, Cython, Fortran, Pythran, or Rust.
endef

define Host/Prepare
	$(call Host/Prepare/Default)
	$(SED) 's,@STAGING_DIR_HOST@,$(STAGING_DIR_HOST),' \
		$(HOST_BUILD_DIR)/pyproject.toml
endef

define Host/Uninstall
	rm -rf $(HOST_PYTHON3_PKG_DIR)/mesonpy
	rm -rf $(HOST_PYTHON3_PKG_DIR)/$(PYPI_NAME)-$(PKG_VERSION).dist-info
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,meson-python))
$(eval $(call BuildPackage,meson-python))
$(eval $(call BuildPackage,meson-python-src))
