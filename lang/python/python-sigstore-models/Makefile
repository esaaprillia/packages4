include $(TOPDIR)/rules.mk

PKG_NAME:=python-sigstore-models
PKG_VERSION:=0.0.6
PKG_RELEASE:=1

PYPI_NAME:=sigstore_models
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-uv-build/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sigstore-models
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pydantic based models for Sigstore's protobuf specifications
  URL:=https://github.com/astral-sh/sigstore-models
  DEPENDS:=+python3 +python3-pydantic +python3-typing-extensions $(RUST_ARCH_DEPENDS)
endef

define Package/python3-sigstore-models/description
These models mirror the subset of the protobuf-specs that are used by the sigstore-python library.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sigstore-models))
$(eval $(call BuildPackage,python3-sigstore-models))
$(eval $(call BuildPackage,python3-sigstore-models-src))
