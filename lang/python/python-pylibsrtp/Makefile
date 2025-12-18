include $(TOPDIR)/rules.mk

PKG_NAME:=python-pylibsrtp
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PYPI_NAME:=pylibsrtp
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cffi/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pylibsrtp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python wrapper around the libsrtp library
  URL:=https://pylibsrtp.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-cffi \
	+libsrtp
endef

define Package/python3-pylibsrtp/description
pylibsrtp is a Python wrapper around libsrtp, making it possible to encrypt and decrypt Secure Real-time Transport Protocol (SRTP) packets from Python code.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pylibsrtp))
$(eval $(call BuildPackage,python3-pylibsrtp))
$(eval $(call BuildPackage,python3-pylibsrtp-src))
