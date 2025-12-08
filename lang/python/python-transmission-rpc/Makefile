include $(TOPDIR)/rules.mk

PKG_NAME:=python-transmission-rpc
PKG_VERSION:=7.0.11
PKG_RELEASE:=1

PYPI_NAME:=transmission_rpc
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-transmission-rpc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python module that implements the Transmission bittorent client JSON-RPC protocol
  URL:=https://github.com/Trim21/transmission-rpc
  DEPENDS:=+python3 +python3-urllib3 +python3-certifi +python3-typing-extensions
endef

define Package/python3-transmission-rpc/description
transmission-rpc is a python wrapper on top of transmission JSON RPC protocol, hosted on GitHub at github.com/trim21/transmission-rpc
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-transmission-rpc))
$(eval $(call BuildPackage,python3-transmission-rpc))
$(eval $(call BuildPackage,python3-transmission-rpc-src))
