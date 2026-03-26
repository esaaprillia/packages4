include $(TOPDIR)/rules.mk

PKG_NAME:=python-huggingface-hub
PKG_VERSION:=1.8.0
PKG_RELEASE:=1

PYPI_NAME:=huggingface_hub
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-huggingface-hub
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Client library to download and publish models, datasets and other repos on the huggingface.co hub
  URL:=https://huggingface.co/docs/huggingface_hub
  DEPENDS:= \
	+python3 \
	+python3-filelock \
	+python3-fsspec \
	+python3-hf-xet \
	+python3-httpx \
	+python3-packaging \
	+python3-yaml \
	+python3-tqdm \
	+python3-typer \
	+python3-typing-extensions
endef

define Package/python3-huggingface-hub/description
The huggingface_hub library allows you to interact with the Hugging Face Hub, a platform democratizing open-source Machine Learning for creators and collaborators.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-huggingface-hub))
$(eval $(call BuildPackage,python3-huggingface-hub))
$(eval $(call BuildPackage,python3-huggingface-hub-src))
