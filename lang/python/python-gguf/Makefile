include $(TOPDIR)/rules.mk

PKG_NAME:=python-gguf
PKG_VERSION:=0.19.0
PKG_RELEASE:=1

PYPI_NAME:=gguf
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-gguf
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Read and write ML models in GGUF for GGML
  URL:=https://ggml.ai/
  DEPENDS:=+python3 +python3-numpy +python3-tqdm +python3-yaml +python3-requests
endef

define Package/python3-gguf/description
  This is a Python package for writing binary files in the GGUF (GGML Universal File) format.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-gguf))
$(eval $(call BuildPackage,python3-gguf))
$(eval $(call BuildPackage,python3-gguf-src))
