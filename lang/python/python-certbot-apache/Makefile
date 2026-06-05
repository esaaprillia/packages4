include $(TOPDIR)/rules.mk

PKG_NAME:=python-certbot-apache
PKG_VERSION:=5.6.0
PKG_RELEASE:=1

PYPI_NAME:=certbot_apache
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-certbot-apache
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Apache plugin for Certbot
  URL:=https://github.com/certbot/certbot
  DEPENDS:= \
	+python3-light \
	+python3-certbot \
	+python3-acme \
	+python3-augeas
endef

define Package/python3-certbot-apache/description
Apache plugin for Certbot
endef

$(eval $(call Py3Package,python3-certbot-apache))
$(eval $(call BuildPackage,python3-certbot-apache))
$(eval $(call BuildPackage,python3-certbot-apache-src))
