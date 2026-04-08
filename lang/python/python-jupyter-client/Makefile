include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyter-client
PKG_VERSION:=8.8.0
PKG_RELEASE:=1

PYPI_NAME:=jupyter_client
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:= \
	python-hatchling/host \
	python-jupyter-core/host \
	python-dateutil/host \
	python-pyzmq/host \
	python-tornado/host \
	python-traitlets/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jupyter-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Jupyter protocol implementation and client libraries
  URL:=https://jupyter-client.readthedocs.io/
  DEPENDS:= \
	+python3 \
	+python3-jupyter-core \
	+python3-dateutil \
	+python3-pyzmq \
	+python3-tornado \
	+python3-traitlets
endef

define Package/python3-jupyter-client/description
  jupyter_client contains the reference implementation of the Jupyter protocol. It also provides client and kernel management APIs for working with kernels.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyter-client))
$(eval $(call BuildPackage,python3-jupyter-client))
$(eval $(call BuildPackage,python3-jupyter-client-src))
