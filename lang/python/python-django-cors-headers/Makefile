include $(TOPDIR)/rules.mk

PKG_NAME:=python3-django-cors-headers
PKG_VERSION:=4.6.0
PKG_RELEASE:=1

PYPI_NAME:=django_cors_headers
PKG_HASH:=14d76b4b4c8d39375baeddd89e4f08899051eeaf177cb02a29bd6eae8cf63aa8

PKG_MAINTAINER:=Peter Stadler <peter.stadler@student.uibk.ac.at>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-django-cors-headers
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Django application for handling the server headers required for Cross-Origin Resource Sharing (CORS).
  URL:=https://github.com/adamchainz/django-cors-headers
  DEPENDS:=+python3-django +python3-urllib +python3-light
endef

define Package/python3-django-cors-headers/description
  Django application for handling the server headers required for Cross-Origin Resource Sharing (CORS).
endef

$(eval $(call Py3Package,python3-django-cors-headers))
$(eval $(call BuildPackage,python3-django-cors-headers))
$(eval $(call BuildPackage,python3-django-cors-headers-src))
