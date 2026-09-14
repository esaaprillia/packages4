include $(TOPDIR)/rules.mk

PKG_NAME:=python-apitally
PKG_VERSION:=0.25.1
PKG_RELEASE:=1

PYPI_NAME:=apitally
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-apitally
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple API monitoring & analytics for Python apps
  URL:=https://github.com/apitally/apitally-py
  DEPENDS:=+python3 +python3-backoff +python3-opentelemetry-sdk +python3-psutil +python3-typing-extensions
endef

define Package/python3-apitally/description
  Apitally is a simple API monitoring and analytics tool that makes it easy to understand API usage, monitor performance, and troubleshoot issues.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-apitally))
$(eval $(call BuildPackage,python3-apitally))
$(eval $(call BuildPackage,python3-apitally-src))
