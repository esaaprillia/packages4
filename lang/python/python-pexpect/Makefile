include $(TOPDIR)/rules.mk

PKG_NAME:=python-pexpect
PKG_VERSION:=4.9.0
PKG_RELEASE:=1

PYPI_NAME:=pexpect
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=ISC license
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pexpect
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pexpect allows easy control of interactive console applications.
  URL:=https://github.com/pexpect/pexpect
  DEPENDS:=+python3 +python3-ptyprocess
endef

define Package/python3-pexpect/description
  Pexpect is a pure Python module for spawning child applications; controlling them; and responding to expected patterns in their output. Pexpect works like Don Libes’ Expect. Pexpect allows your script to spawn a child application and control it as if a human were typing commands.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pexpect))
$(eval $(call BuildPackage,python3-pexpect))
$(eval $(call BuildPackage,python3-pexpect-src))
