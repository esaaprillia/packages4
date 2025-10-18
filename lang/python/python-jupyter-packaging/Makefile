include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyter-packaging
PKG_VERSION:=0.11.0
PKG_RELEASE:=1

PYPI_NAME:=jupyter_packaging
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_HOST_ONLY:=1
HOST_BUILD_DEPENDS:= \
	python3/host \
	python-build/host \
	python-installer/host \
	python-hatchling/host \
	python-tomlkit/host \
	python-deprecation/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jupyter-packaging
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Jupyter Packaging Utilities.
  URL:=http://jupyter.org/
  DEPENDS:=+python3
  BUILDONLY:=1
endef

define Package/python3-jupyter-packaging/description
Tools to help build and install Jupyter Python packages that require a pre-build step that may include JavaScript build steps.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyter-packaging))
$(eval $(call BuildPackage,python3-jupyter-packaging))
$(eval $(call BuildPackage,python3-jupyter-packaging-src))
