include $(TOPDIR)/rules.mk

PKG_NAME:=python-protobuf
PKG_VERSION:=6.32.1
PKG_RELEASE:=1

PYPI_NAME:=protobuf
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-protobuf
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Protocol Buffers Python
  URL:=https://protobuf.dev/
  DEPENDS:=+python3
endef

define Package/python3-protobuf/description
  Protocol Buffers are language-neutral, platform-neutral extensible mechanisms for serializing structured data.
endef

$(eval $(call Py3Package,python3-protobuf))
$(eval $(call BuildPackage,python3-protobuf))
$(eval $(call BuildPackage,python3-protobuf-src))
