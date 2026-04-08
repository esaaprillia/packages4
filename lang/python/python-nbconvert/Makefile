include $(TOPDIR)/rules.mk

PKG_NAME:=python-nbconvert
PKG_VERSION:=7.17.1
PKG_RELEASE:=1

PYPI_NAME:=nbconvert
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-nbconvert
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Jupyter Notebook Conversion
  URL:=https://nbconvert.readthedocs.io/
  DEPENDS:= \
	+python3 \
	+python3-beautifulsoup4 \
	+python3-bleach \
	+python3-defusedxml \
	+python3-jinja2 \
	+python3-jupyter-core \
	+python3-jupyterlab-pygments \
	+python3-markupsafe \
	+python3-mistune \
	+python3-nbclient \
	+python3-nbformat \
	+python3-packaging \
	+python3-pandocfilters \
	+python3-pygments \
	+python3-traitlets
endef

define Package/python3-nbconvert/description
The nbconvert tool, jupyter nbconvert, converts notebooks to various other formats via Jinja templates.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-nbconvert))
$(eval $(call BuildPackage,python3-nbconvert))
$(eval $(call BuildPackage,python3-nbconvert-src))
