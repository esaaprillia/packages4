include $(TOPDIR)/rules.mk

PKG_NAME:=python-soundfile
PKG_VERSION:=0.13.1
PKG_RELEASE:=1

PYPI_NAME:=soundfile
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD 3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cffi/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-soundfile
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An audio library based on libsndfile, CFFI and NumPy
  URL:=https://python-soundfile.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-cffi \
	+python3-numpy \
	+libsndfile
endef

define Package/python3-soundfile/description
The soundfile module is an audio library based on libsndfile, CFFI and NumPy.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-soundfile))
$(eval $(call BuildPackage,python3-soundfile))
$(eval $(call BuildPackage,python3-soundfile-src))
