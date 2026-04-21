include $(TOPDIR)/rules.mk

PKG_NAME:=python-octoprint-filecheck
PKG_VERSION:=2025.7.23
PKG_RELEASE:=1

PYPI_NAME:=octoprint_filecheck
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-octoprint-filecheck
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Checks for common issues in uploaded files
  URL:=https://github.com/OctoPrint/OctoPrint-FileCheck
  DEPENDS:= \
	+python3
endef

define Package/python3-octoprint-filecheck/description
  The File Check plugin tries to detect common issues in uploaded files that are known to cause issues while printing and which in the past have caused support requests on OctoPrint's Community Forums, as well as leaked sensitive data such as API keys.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-octoprint-filecheck))
$(eval $(call BuildPackage,python3-octoprint-filecheck))
$(eval $(call BuildPackage,python3-octoprint-filecheck-src))
