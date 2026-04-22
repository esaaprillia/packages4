include $(TOPDIR)/rules.mk

PKG_NAME:=python-cmd2
PKG_VERSION:=3.5.0
PKG_RELEASE:=1

PYPI_NAME:=cmd2
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cmd2
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=cmd2 : immersive interactive command line applications
  URL:=https://github.com/python-cmd2/cmd2
  DEPENDS:= \
	+python3 \
	+python3-pyperclip \
	+python3-rich \
	+python3-rich-argparse
endef

define Package/python3-cmd2/description
cmd2 - quickly build feature-rich and user-friendly interactive command line applications in Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cmd2))
$(eval $(call BuildPackage,python3-cmd2))
$(eval $(call BuildPackage,python3-cmd2-src))
