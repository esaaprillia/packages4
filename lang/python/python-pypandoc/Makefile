include $(TOPDIR)/rules.mk

PKG_NAME:=python-pypandoc
PKG_VERSION:=1.14
PKG_RELEASE:=1

PYPI_NAME:=pypandoc
PKG_HASH:=6b4c45f5f1b9fb5bb562079164806bdbbc3e837b5402bcf3f1139edc5730a197

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pypandoc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Thin wrapper for "pandoc" (MIT)
  URL:=http://pypi.python.org/pypi/pypandoc/
  DEPENDS:=+python3
endef

define Package/python3-pypandoc/description
  Pypandoc provides a thin wrapper for pandoc, a universal document converter.
endef

$(eval $(call Py3Package,python3-pypandoc))
$(eval $(call BuildPackage,python3-pypandoc))
$(eval $(call BuildPackage,python3-pypandoc-src))
$(eval $(call HostBuild))
