include $(TOPDIR)/rules.mk

PKG_NAME:=python-zarr
PKG_VERSION:=3.4.1
PKG_RELEASE:=1

PYPI_NAME:=zarr
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zarr
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An implementation of chunked, compressed, N-dimensional arrays for Python
  URL:=https://github.com/zarr-developers/zarr-python
  DEPENDS:= \
	+python3-light \
	+python3-packaging \
	+python3-numpy \
	+python3-numcodecs \
	+python3-google-crc32c \
	+python3-typing-extensions \
	+python3-donfig \
	+python3-msgspec \
	+python3-typer
endef

define Package/python3-zarr/description
The zarr library is a Python implementation of the Zarr storage format.
endef

$(eval $(call Py3Package,python3-zarr))
$(eval $(call BuildPackage,python3-zarr))
$(eval $(call BuildPackage,python3-zarr-src))
