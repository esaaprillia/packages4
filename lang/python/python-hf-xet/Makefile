include $(TOPDIR)/rules.mk

PKG_NAME:=python-hf-xet
PKG_VERSION:=1.4.2
PKG_RELEASE:=1

PYPI_NAME:=hf_xet
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

define Package/python3-hf-xet
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast transfer of large files with the Hugging Face Hub.
  URL:=https://github.com/huggingface/xet-core
  DEPENDS:=+python3 +libopenssl +libopenssl-legacy $(RUST_ARCH_DEPENDS)
endef

define Package/python3-hf-xet/description
hf-xet enables huggingface_hub to utilize xet storage for uploading and downloading to HF Hub.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-hf-xet))
$(eval $(call BuildPackage,python3-hf-xet))
$(eval $(call BuildPackage,python3-hf-xet-src))
