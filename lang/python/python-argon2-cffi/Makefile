include $(TOPDIR)/rules.mk

PKG_NAME:=python-argon2-cffi
PKG_VERSION:=25.1.0
PKG_RELEASE:=1

PYPI_NAME:=argon2_cffi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host python-hatch-fancy-pypi-readme/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host python-hatch-fancy-pypi-readme/host python-cffi/host python-argon2-cffi-bindings/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

PYTHON3_PKG_SETUP_VARS += ARGON2_CFFI_USE_SYSTEM=1
PYTHON3_HOST_BUILD_VARS += ARGON2_CFFI_USE_SYSTEM=1

define Package/python3-argon2-cffi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Argon2 for Python
  URL:=https://argon2-cffi.readthedocs.io/
  DEPENDS:=+python3 +python3-cffi +python3-argon2-cffi-bindings
endef

define Package/python3-argon2-cffi/description
  Secure Password Hashes for Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-argon2-cffi))
$(eval $(call BuildPackage,python3-argon2-cffi))
$(eval $(call BuildPackage,python3-argon2-cffi-src))
