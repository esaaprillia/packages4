include $(TOPDIR)/rules.mk

PKG_NAME:=python-modal
PKG_VERSION:=1.5.5
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=modal
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-modal
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python client library for Modal
  URL:=https://modal.com/docs
  DEPENDS:= \
	+python3 \
	+python3-aiohttp \
	+python3-cbor2 \
	+python3-certifi \
	+python3-click \
	+python3-grpclib \
	+python3-protobuf \
	+python3-rich \
	+python3-synchronicity \
	+python3-toml \
	+python3-types-certifi \
	+python3-types-toml \
	+python3-watchfiles \
	+python3-typing-extensions
endef

define Package/python3-modal/description
The Modal Python SDK provides convenient, on-demand access to serverless cloud compute from Python scripts on your local computer.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-modal))
$(eval $(call BuildPackage,python3-modal))
$(eval $(call BuildPackage,python3-modal-src))
