include $(TOPDIR)/rules.mk

PKG_NAME:=python-fire
PKG_VERSION:=0.7.1
PKG_RELEASE:=1

PYPI_NAME:=fire
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-fire
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Fire is a library for automatically generating command line interfaces (CLIs) from absolutely any Python object.
  URL:=https://github.com/google/python-fire
  DEPENDS:=+python3 +python3-termcolor
endef

define Package/python3-fire/description
  Python Fire is a library for automatically generating command line interfaces (CLIs) from absolutely any Python object.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-fire))
$(eval $(call BuildPackage,python3-fire))
$(eval $(call BuildPackage,python3-fire-src))
