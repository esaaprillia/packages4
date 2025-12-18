include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiortc
PKG_VERSION:=1.14.0
PKG_RELEASE:=1

PYPI_NAME:=aiortc
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiortc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An implementation of WebRTC and ORTC
  URL:=https://aiortc.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-aioice \
	+python3-av \
	+python3-cryptography \
	+python3-google-crc32c \
	+python3-pyee \
	+python3-pylibsrtp \
	+python3-pyopenssl
endef

define Package/python3-aiortc/description
aiortc is a library for Web Real-Time Communication (WebRTC)
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiortc))
$(eval $(call BuildPackage,python3-aiortc))
$(eval $(call BuildPackage,python3-aiortc-src))
