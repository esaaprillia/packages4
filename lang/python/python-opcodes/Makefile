include $(TOPDIR)/rules.mk

PKG_NAME:=opcodes
PKG_VERSION:=0.3.14
PKG_RELEASE:=1

PYPI_NAME:=opcodes

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Maratyszcza/Opcodes.git
PKG_SOURCE_VERSION:=b606dded8508b3f0e2deb2a663ceda8467f2566d
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-opcodes
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Database of CPU Opcodes
  URL:=https://github.com/Maratyszcza/Opcodes
  DEPENDS:=+python3-light
endef

define Package/python3-opcodes/description
The goal of this project is to document instruction sets in a format convenient for tools development.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-opcodes))
$(eval $(call BuildPackage,python3-opcodes))
$(eval $(call BuildPackage,python3-opcodes-src))
