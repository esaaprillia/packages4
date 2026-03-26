include $(TOPDIR)/rules.mk

PKG_NAME:=python-protobuf
PKG_VERSION:=7.34.1
PKG_RELEASE:=1

PYPI_NAME:=protobuf
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host protobuf/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-protobuf
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Protocol Buffers Python
  URL:=https://protobuf.dev/
  DEPENDS:=+python3 +protobuf
endef

define Package/python3-protobuf/description
  Protocol Buffers are language-neutral, platform-neutral extensible mechanisms for serializing structured data.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-protobuf))
$(eval $(call BuildPackage,python3-protobuf))
$(eval $(call BuildPackage,python3-protobuf-src))
