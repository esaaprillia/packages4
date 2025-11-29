include $(TOPDIR)/rules.mk

PKG_NAME:=python-pam
PKG_VERSION:=2.0.2
PKG_RELEASE:=1

PYPI_NAME:=python-pam
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-six/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pam
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python PAM module using ctypes, py3
  URL:=https://github.com/FirefighterBlu3/python-pam
  DEPENDS:=+python3 +libpam
endef

define Package/python3-pam/description
Python pam module supporting py3 (and py2) for Linux type systems (!windows)
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pam))
$(eval $(call BuildPackage,python3-pam))
$(eval $(call BuildPackage,python3-pam-src))
