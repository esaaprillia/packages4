include $(TOPDIR)/rules.mk

PKG_NAME:=python-acme
PKG_VERSION:=3.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=acme
PKG_HASH:=2f4ae207c8a6791a2bc74cd18d60274766f483c2059145b0142cbb43e761331c

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-acme
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=ACME protocol implementation in Python
  URL:=https://github.com/certbot/certbot
  DEPENDS:=+python3 +python3-cryptography +python3-josepy +python3-pyopenssl +python3-pyrfc3339 +python3-pytz +python3-requests
endef

define Package/python3-acme/description
Certbot is part of EFF’s effort to encrypt the entire Internet. Secure communication over the Web relies on HTTPS, which requires the use of a digital certificate that lets browsers verify the identity of web servers (e.g., is that really google.com?). Web servers obtain their certificates from trusted third parties called certificate authorities (CAs). Certbot is an easy-to-use client that fetches a certificate from Let’s Encrypt—an open certificate authority launched by the EFF, Mozilla, and others—and deploys it to a web server.
Anyone who has gone through the trouble of setting up a secure website knows what a hassle getting and maintaining a certificate is. Certbot and Let’s Encrypt can automate away the pain and let you turn on and manage HTTPS with simple commands. Using Certbot and Let's Encrypt is free.
endef

$(eval $(call Py3Package,python3-acme))
$(eval $(call BuildPackage,python3-acme))
$(eval $(call BuildPackage,python3-acme-src))
