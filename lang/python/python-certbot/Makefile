include $(TOPDIR)/rules.mk

PKG_NAME:=python-certbot
PKG_VERSION:=5.6.0
PKG_RELEASE:=1

PYPI_NAME:=certbot
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-certbot
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=ACME client
  URL:=https://github.com/certbot/certbot
  DEPENDS:= \
	+python3-light \
	+python3-acme \
	+python3-configargparse \
	+python3-configobj \
	+python3-cryptography \
	+python3-distro \
	+python3-parsedatetime \
	+python3-pyrfc3339 \
	+ca-certificates
endef

define Package/python3-certbot/description
Certbot is part of EFF’s effort to encrypt the entire Internet.
endef

$(eval $(call Py3Package,python3-certbot))
$(eval $(call BuildPackage,python3-certbot))
$(eval $(call BuildPackage,python3-certbot-src))
