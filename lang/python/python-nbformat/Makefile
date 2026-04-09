include $(TOPDIR)/rules.mk

PKG_NAME:=python-nbformat
PKG_VERSION:=5.10.4
PKG_RELEASE:=1

PYPI_NAME:=nbformat
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-nodejs-version/host
HOST_BUILD_DEPENDS:= \
	python3/host \
	python-hatchling/host \
	python-hatch-nodejs-version/host \
	python-fastjsonschema/host \
	python-jsonschema/host \
	python-jupyter-core/host \
	python-traitlets/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-nbformat
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The Jupyter Notebook format
  URL:=http://nbformat.readthedocs.io/
  DEPENDS:= \
	+python3 \
	+python3-fastjsonschema \
	+python3-jsonschema \
	+python3-jupyter-core \
	+python3-traitlets
endef

define Package/python3-nbformat/description
This package contains the base implementation of the Jupyter Notebook format, and Python APIs for working with notebooks.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-nbformat))
$(eval $(call BuildPackage,python3-nbformat))
$(eval $(call BuildPackage,python3-nbformat-src))
