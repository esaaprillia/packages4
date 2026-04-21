include $(TOPDIR)/rules.mk

PKG_NAME:=python-flask-limiter
PKG_VERSION:=4.1.1
PKG_RELEASE:=1

PYPI_NAME:=flask_limiter
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-flask-limiter
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Rate limiting for flask applications
  URL:=https://github.com/alisaifee/flask-limiter
  DEPENDS:= \
	+python3 \
	+python3-limits \
	+python3-flask \
	+python3-ordered-set \
	+python3-typing-extensions
endef

define Package/python3-flask-limiter/description
Flask-Limiter adds rate limiting to Flask applications.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-flask-limiter))
$(eval $(call BuildPackage,python3-flask-limiter))
$(eval $(call BuildPackage,python3-flask-limiter-src))
