include $(TOPDIR)/rules.mk

PKG_NAME:=python-octoprint-plugin-tool
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PYPI_NAME:=octoprint_plugin_tool
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-octoprint-plugin-tool
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A CLI tool to help with maintaining OctoPrint Plugins
  URL:=https://github.com/OctoPrint/octoprint-plugin-tool/
  DEPENDS:= \
	+python3 \
	+python3-deepmerge \
	+python3-packaging \
	+python3-yaml \
	+python3-validate-pyproject \
	+python3-tomli-w
endef

define Package/python3-octoprint-plugin-tool/description
A CLI tool (and library) to help with maintaining OctoPrint Plugins.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-octoprint-plugin-tool))
$(eval $(call BuildPackage,python3-octoprint-plugin-tool))
$(eval $(call BuildPackage,python3-octoprint-plugin-tool-src))
