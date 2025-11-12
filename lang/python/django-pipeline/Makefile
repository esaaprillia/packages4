include $(TOPDIR)/rules.mk

PKG_NAME:=django-pipeline
PKG_VERSION:=4.1.0
PKG_RELEASE:=1

PYPI_NAME:=django_pipeline
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-django-pipeline
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pipeline is an asset packaging library for Django.
  URL:=https://django-pipeline.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-django-pipeline/description
Pipeline is an asset packaging library for Django, providing both CSS and JavaScript concatenation and compression, built-in JavaScript template support, and optional data-URI image and font embedding.
endef

$(eval $(call Py3Package,python3-django-pipeline))
$(eval $(call BuildPackage,python3-django-pipeline))
$(eval $(call BuildPackage,python3-django-pipeline-src))
