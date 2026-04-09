include $(TOPDIR)/rules.mk

PKG_NAME:=python-ipykernel
PKG_VERSION:=7.2.0
PKG_RELEASE:=1

PYPI_NAME:=ipykernel
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-jupyter-client/host
HOST_BUILD_DEPENDS:= \
	python3/host \
	python-hatchling/host \
	python-debugpy/host \
	python-ipython/host \
	python-comm/host \
	python-traitlets/host \
	python-jupyter-client/host \
	python-jupyter-core/host \
	python-nest-asyncio/host \
	python-tornado/host \
	python-matplotlib-inline/host \
	python-pyzmq/host \
	python-psutil/host \
	python-packaging/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ipykernel
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=IPython Kernel for Jupyter
  URL:=https://ipykernel.readthedocs.io/
  DEPENDS:= \
	+python3 \
	+python3-debugpy \
	+python3-ipython \
	+python3-comm \
	+python3-traitlets \
	+python3-jupyter-client \
	+python3-jupyter-core \
	+python3-nest-asyncio \
	+python3-tornado \
	+python3-matplotlib-inline \
	+python3-pyzmq \
	+python3-psutil \
	+python3-packaging
endef

define Package/python3-ipykernel/description
This package provides the IPython kernel for Jupyter.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ipykernel))
$(eval $(call BuildPackage,python3-ipykernel))
$(eval $(call BuildPackage,python3-ipykernel-src))
