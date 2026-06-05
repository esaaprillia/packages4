include $(TOPDIR)/rules.mk

PKG_NAME:=python-certbot-dns-route53
PKG_VERSION:=5.6.0
PKG_RELEASE:=1

PYPI_NAME:=certbot_dns_route53
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-certbot-dns-route53
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Route53 DNS Authenticator plugin for Certbot
  URL:=https://github.com/certbot/certbot
  DEPENDS:= \
	+python3-light \
	+python3-certbot \
	+python3-acme \
	+python3-boto3
endef

define Package/python3-certbot-dns-route53/description
Amazon Web Services Route 53 DNS Authenticator plugin for Certbot
endef

$(eval $(call Py3Package,python3-certbot-dns-route53))
$(eval $(call BuildPackage,python3-certbot-dns-route53))
$(eval $(call BuildPackage,python3-certbot-dns-route53-src))
