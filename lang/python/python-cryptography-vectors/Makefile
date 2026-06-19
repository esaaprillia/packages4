include $(TOPDIR)/rules.mk

PKG_NAME:=python-cryptography-vectors
PKG_VERSION:=49.0.0
PKG_RELEASE:=1

PYPI_NAME:=cryptography_vectors
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0 BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE LICENSE.APACHE LICENSE.BSD

PKG_BUILD_DEPENDS:=python-uv-build/host
HOST_BUILD_DEPENDS:=python-uv-build/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cryptography-vectors
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Test vectors for the cryptography package.
  URL:=https://github.com/pyca/cryptography
  DEPENDS:=+python3
endef

define Package/python3-cryptography-vectors/description
This package contains test vectors which are used in pyca/cryptography’s tests.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cryptography-vectors))
$(eval $(call BuildPackage,python3-cryptography-vectors))
$(eval $(call BuildPackage,python3-cryptography-vectors-src))
