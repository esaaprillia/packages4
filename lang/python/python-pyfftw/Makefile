include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyfftw
PKG_VERSION:=0.15.1
PKG_RELEASE:=1

PYPI_NAME:=pyfftw
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host numpy/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyfftw
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A pythonic python wrapper around FFTW
  URL:=https://github.com/pyFFTW/pyFFTW
  DEPENDS:=+python3 +python3-numpy +fftw3f
endef

define Package/python3-pyfftw/description
pyFFTW is a pythonic wrapper around FFTW 3, the speedy FFT library. The ultimate aim is to present a unified interface for all the possible transforms that FFTW can perform.
endef

$(eval $(call Py3Package,python3-pyfftw))
$(eval $(call BuildPackage,python3-pyfftw))
$(eval $(call BuildPackage,python3-pyfftw-src))
