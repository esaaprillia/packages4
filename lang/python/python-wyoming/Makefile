include $(TOPDIR)/rules.mk

PKG_NAME:=python-wyoming
PKG_VERSION:=1.8.0
PKG_RELEASE:=1

PYPI_NAME:=wyoming
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-wyoming
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Peer-to-peer protocol for voice assistants
  URL:=http://github.com/OHF-voice/wyoming
  DEPENDS:= \
	+python3 \
	+python3-zeroconf \
	+python3-flask \
	+python3-asgiref \
	+python3-swagger-ui-py
endef

define Package/python3-wyoming/description
A peer-to-peer protocol for voice assistants (basically JSONL + PCM audio)
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-wyoming))
$(eval $(call BuildPackage,python3-wyoming))
$(eval $(call BuildPackage,python3-wyoming-src))
