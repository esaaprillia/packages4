include $(TOPDIR)/rules.mk

PKG_NAME:=python-tiktoken
PKG_VERSION:=0.13.0
PKG_RELEASE:=1

PYPI_NAME:=tiktoken
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-rust/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-tiktoken
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=tiktoken is a fast BPE tokeniser for use with OpenAI's models
  URL:=https://github.com/openai/tiktoken
  DEPENDS:=+python3 +python3-regex +python3-requests +python3-blobfile $(RUST_ARCH_DEPENDS)
endef

define Package/python3-tiktoken/description
tiktoken is a fast BPE tokeniser for use with OpenAI's models.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-tiktoken))
$(eval $(call BuildPackage,python3-tiktoken))
$(eval $(call BuildPackage,python3-tiktoken-src))
