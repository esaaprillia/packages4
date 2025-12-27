include $(TOPDIR)/rules.mk

PKG_NAME:=python-glad2
PKG_VERSION:=2.0.8
PKG_RELEASE:=1

PYPI_NAME:=glad2
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-jinja2/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-glad2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Multi-Language GL/GLES/EGL/GLX/WGL Loader-Generator based on the official specs.
  URL:=https://github.com/Dav1dde/glad
  DEPENDS:=+python3 +python3-jinja2
endef

define Package/python3-glad2/description
Glad uses the official Khronos-XML specs to generate a GL/GLES/EGL/GLX/WGL Loader made for your needs.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-glad2))
$(eval $(call BuildPackage,python3-glad2))
$(eval $(call BuildPackage,python3-glad2-src))
