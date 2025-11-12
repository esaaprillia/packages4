include $(TOPDIR)/rules.mk

PKG_NAME:=django-oauth-toolkit
PKG_VERSION:=3.1.0
PKG_RELEASE:=1

PYPI_NAME:=django_oauth_toolkit
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-django-oauth-toolkit
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=OAuth2 Provider for Django
  URL:=https://django-oauth-toolkit.readthedocs.io/
  DEPENDS:=+python3 +python3-django +python3-requests +python3-oauthlib +python3-jwcrypto
endef

define Package/python3-django-oauth-toolkit/description
Django OAuth Toolkit can help you providing out of the box all the endpoints, data and logic needed to add OAuth2 capabilities to your Django projects. Django OAuth Toolkit makes extensive use of the excellent OAuthLib, so that everything is rfc-compliant.
endef

$(eval $(call Py3Package,python3-django-oauth-toolkit))
$(eval $(call BuildPackage,python3-django-oauth-toolkit))
$(eval $(call BuildPackage,python3-django-oauth-toolkit-src))
