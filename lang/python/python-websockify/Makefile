include $(TOPDIR)/rules.mk

PKG_NAME:=python-websockify
PKG_VERSION:=0.13.0
PKG_RELEASE:=1

PYPI_NAME:=websockify
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=COPYING

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-websockify
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=WebSockets support for any application/server
  URL:=https://github.com/novnc/websockify
  DEPENDS:= \
	+python3-light \
	+python3-numpy \
	+python3-requests \
	+python3-jwcrypto \
	+python3-redis
endef

define Package/python3-websockify/description
websockify was formerly named wsproxy and was part of the noVNC project.
endef

$(eval $(call Py3Package,python3-websockify))
$(eval $(call BuildPackage,python3-websockify))
$(eval $(call BuildPackage,python3-websockify-src))
