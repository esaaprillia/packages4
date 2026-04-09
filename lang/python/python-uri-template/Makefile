include $(TOPDIR)/rules.mk

PKG_NAME:=python-uri-template
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=uri-template
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-uri-template
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=RFC 6570 URI Template Processor
  URL:=https://gitlab.linss.com/open-source/python/uri-template
  DEPENDS:= \
	+python3-light
endef

define Package/python3-uri-template/description
This packages implements URI Template expansion in strict adherence to RFC 6570, but adds a few extensions.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-uri-template))
$(eval $(call BuildPackage,python3-uri-template))
$(eval $(call BuildPackage,python3-uri-template-src))
