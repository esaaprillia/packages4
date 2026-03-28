include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-crc32c
PKG_VERSION:=1.8.0
PKG_RELEASE:=1

PYPI_NAME:=google_crc32c
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

PYTHON3_PKG_SETUP_VARS += \
	CRC32C_INSTALL_PREFIX="$(STAGING_DIR)/usr"

define Package/python3-google-crc32c
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A python wrapper of the C library 'Google CRC32C'
  URL:=https://github.com/googleapis/python-crc32c
  DEPENDS:=+python3 +libstdcpp +crc32c
endef

define Package/python3-google-crc32c/description
This package wraps the google/crc32c hardware-based implementation of the CRC32C hashing algorithm.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-crc32c))
$(eval $(call BuildPackage,python3-google-crc32c))
$(eval $(call BuildPackage,python3-google-crc32c-src))
