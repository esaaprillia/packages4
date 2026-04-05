include $(TOPDIR)/rules.mk

PKG_NAME:=python-imageio-ffmpeg
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=imageio_ffmpeg
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-imageio-ffmpeg
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=FFMPEG wrapper for Python
  URL:=https://github.com/imageio/imageio-ffmpeg
  DEPENDS:= \
	+python3 \
	+ffmpeg
endef

define Package/python3-imageio-ffmpeg/description
  Note that the platform-specific wheels contain the binary executable of ffmpeg, which makes this package around 60 MiB in size. I guess that’s the cost for being able to read/write video files.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-imageio-ffmpeg))
$(eval $(call BuildPackage,python3-imageio-ffmpeg))
$(eval $(call BuildPackage,python3-imageio-ffmpeg-src))
