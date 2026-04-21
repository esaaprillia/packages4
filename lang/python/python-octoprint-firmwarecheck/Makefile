include $(TOPDIR)/rules.mk

PKG_NAME:=python-octoprint-firmwarecheck
PKG_VERSION:=2025.7.23
PKG_RELEASE:=1

PYPI_NAME:=octoprint_firmwarecheck
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-octoprint-firmwarecheck
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Checks for unsafe or broken printer firmwares
  URL:=https://github.com/OctoPrint/OctoPrint-FirmwareCheck
  DEPENDS:= \
	+python3
endef

define Package/python3-octoprint-firmwarecheck/description
  The Firmware Check plugin tries to identify printers or rather printer firmware with known safety issues, such as disabled thermal runaway protection, or other kinds of severe issues, like known communication crippling bugs, and displays a warning box to logged in users on identification of such a firmware.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-octoprint-firmwarecheck))
$(eval $(call BuildPackage,python3-octoprint-firmwarecheck))
$(eval $(call BuildPackage,python3-octoprint-firmwarecheck-src))
