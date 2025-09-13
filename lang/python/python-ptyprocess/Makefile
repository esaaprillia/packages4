include $(TOPDIR)/rules.mk

PKG_NAME:=python-ptyprocess
PKG_VERSION:=0.7.0
PKG_RELEASE:=1

PYPI_NAME:=ptyprocess
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC license
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ptyprocess
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Run a subprocess in a pseudo terminal
  URL:=https://github.com/pexpect/ptyprocess
  DEPENDS:=+python3
endef

define Package/python3-ptyprocess/description
  Pexpect is a pure Python module for spawning child applications; controlling them; and responding to expected patterns in their output. Pexpect works like Don Libes’ Expect. Pexpect allows your script to spawn a child application and control it as if a human were typing commands.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ptyprocess))
$(eval $(call BuildPackage,python3-ptyprocess))
$(eval $(call BuildPackage,python3-ptyprocess-src))
