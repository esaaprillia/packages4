include $(TOPDIR)/rules.mk

PKG_NAME:=python-octoprint-pisupport
PKG_VERSION:=2025.7.23
PKG_RELEASE:=1

PYPI_NAME:=octoprint_pisupport
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-octoprint-pisupport
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Provides additional information about your Pi in the UI
  URL:=https://github.com/OctoPrint/OctoPrint-PiSupport
  DEPENDS:= \
	+python3
endef

define Package/python3-octoprint-pisupport/description
  The Pi Support plugin provides additional information about your Pi in the UI and also alerts you about undervoltage or overheating issues observed on your Pi or if your Pi is unsupported.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-octoprint-pisupport))
$(eval $(call BuildPackage,python3-octoprint-pisupport))
$(eval $(call BuildPackage,python3-octoprint-pisupport-src))
