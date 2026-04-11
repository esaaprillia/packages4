include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytokens
PKG_VERSION:=0.4.1
PKG_RELEASE:=1

PYPI_NAME:=pytokens
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pytokens
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Fast, spec compliant Python 3.13+ tokenizer that runs on older Pythons.
  URL:=https://pypi.org/p/pytokens
  DEPENDS:=+python3
endef

define Package/python3-pytokens/description
A Fast, spec compliant Python 3.13+ tokenizer that runs on older Pythons.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pytokens))
$(eval $(call BuildPackage,python3-pytokens))
$(eval $(call BuildPackage,python3-pytokens-src))
