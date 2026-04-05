include $(TOPDIR)/rules.mk

PKG_NAME:=python-imageio
PKG_VERSION:=2.37.3
PKG_RELEASE:=1

PYPI_NAME:=imageio
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-imageio
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Read and write images and video across all major formats.
  URL:=https://github.com/imageio/imageio
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-pillow
endef

define Package/python3-imageio/description
  Imageio is a mature Python library that makes it easy to read and write image and video data. This includes animated images, video, volumetric data, and scientific formats. It is cross-platform, runs on Python 3.10+, and is easy to install.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-imageio))
$(eval $(call BuildPackage,python3-imageio))
$(eval $(call BuildPackage,python3-imageio-src))
