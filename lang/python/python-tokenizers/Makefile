include $(TOPDIR)/rules.mk

PKG_NAME:=python-tokenizers
PKG_VERSION:=0.22.1
PKG_RELEASE:=1

PYPI_NAME:=tokenizers
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-tokenizers
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast State-of-the-Art Tokenizers optimized for Research and Production
  URL:=https://huggingface.co/docs/tokenizers
  DEPENDS:=+python3 +python3-huggingface-hub $(RUST_ARCH_DEPENDS)
endef

define Package/python3-tokenizers/description
Provides an implementation of today's most used tokenizers, with a focus on performance and versatility.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-tokenizers))
$(eval $(call BuildPackage,python3-tokenizers))
$(eval $(call BuildPackage,python3-tokenizers-src))
