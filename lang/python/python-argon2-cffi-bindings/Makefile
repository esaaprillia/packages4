include $(TOPDIR)/rules.mk

PKG_NAME:=python-argon2-cffi-bindings
PKG_VERSION:=26.1.0
PKG_RELEASE:=1

PYPI_NAME:=argon2_cffi_bindings
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cffi/host python-setuptools-scm/host python-scikit-build-core/host
HOST_BUILD_DEPENDS:=python-cffi/host python-setuptools-scm/host python-scikit-build-core/host argon2/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

PYTHON3_PKG_SETUP_VARS += ARGON2_CFFI_USE_SYSTEM=1 CMAKE_ARGS="-DARGON2_INCLUDE_DIR=$(STAGING_DIR)/usr/include -DARGON2_LIBRARY=$(STAGING_DIR)/usr/lib"
PYTHON3_HOST_BUILD_VARS += ARGON2_CFFI_USE_SYSTEM=1 CMAKE_ARGS="-DARGON2_INCLUDE_DIR=$(STAGING_DIR_HOSTPKG)/include -DARGON2_LIBRARY=$(STAGING_DIR_HOSTPKG)/lib"

define Package/python3-argon2-cffi-bindings
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Low-level CFFI bindings for Argon2
  URL:=https://github.com/hynek/argon2-cffi-bindings
  DEPENDS:=+python3 +python3-cffi +argon2
endef

define Package/python3-argon2-cffi-bindings/description
  argon2-cffi-bindings provides low-level CFFI bindings to the official implementation of the Argon2 password hashing algorithm.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-argon2-cffi-bindings))
$(eval $(call BuildPackage,python3-argon2-cffi-bindings))
$(eval $(call BuildPackage,python3-argon2-cffi-bindings-src))
