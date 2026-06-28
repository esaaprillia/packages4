include $(TOPDIR)/rules.mk

PKG_NAME:=python-nbclient
PKG_VERSION:=0.11.0
PKG_RELEASE:=1

PYPI_NAME:=nbclient
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:= \
	python3/host \
	python-hatchling/host \
	python-jupyter-client/host \
	python-jupyter-core/host \
	python-nbformat/host \
	python-traitlets/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-nbclient
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A client library for executing notebooks. Formerly nbconvert's ExecutePreprocessor.
  URL:=https://nbclient.readthedocs.io
  DEPENDS:= \
	+python3 \
	+python3-jupyter-client \
	+python3-jupyter-core \
	+python3-nbformat \
	+python3-traitlets
endef

define Package/python3-nbclient/description
A client library for programmatic notebook execution, NBClient is a tool for running Jupyter Notebooks in different execution contexts, including the command line.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-nbclient))
$(eval $(call BuildPackage,python3-nbclient))
$(eval $(call BuildPackage,python3-nbclient-src))
