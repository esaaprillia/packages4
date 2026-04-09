include $(TOPDIR)/rules.mk

PKG_NAME:=python-msgspec
PKG_VERSION:=0.21.0
PKG_RELEASE:=1

PYPI_NAME:=msgspec
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-msgspec
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A fast serialization and validation library, with builtin support for JSON, MessagePack, YAML, and TOML
  URL:=https://jcristharif.com/msgspec/
  DEPENDS:=+python3
endef

define Package/python3-msgspec/description
msgspec is a fast serialization and validation library, with builtin support for JSON, MessagePack, YAML, and TOML.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-msgspec))
$(eval $(call BuildPackage,python3-msgspec))
$(eval $(call BuildPackage,python3-msgspec-src))
