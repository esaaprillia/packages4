include $(TOPDIR)/rules.mk

PKG_NAME:=python-flatbuffers
PKG_VERSION:=25.9.23
PKG_RELEASE:=1

PYPI_NAME:=flatbuffers
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-flatbuffers
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The FlatBuffers serialization format for Python
  URL:=https://google.github.io/flatbuffers/
  DEPENDS:=+python3 +flatbuffers
endef

define Package/python3-flatbuffers/description
Python runtime library for use with the Flatbuffers serialization format.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-flatbuffers))
$(eval $(call BuildPackage,python3-flatbuffers))
$(eval $(call BuildPackage,python3-flatbuffers-src))
