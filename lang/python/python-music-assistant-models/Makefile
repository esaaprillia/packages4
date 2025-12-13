include $(TOPDIR)/rules.mk

PKG_NAME:=python-music-assistant-models
PKG_VERSION:=1.1.81
PKG_RELEASE:=1

PYPI_NAME:=music_assistant_models
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-music-assistant-models
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Music Assistant Base Models
  URL:=https://github.com/music-assistant/models
  DEPENDS:=+python3 +python3-orjson +python3-mashumaro
endef

define Package/python3-music-assistant-models/description
Models used by Music Assistant (shared by client and server)
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-music-assistant-models))
$(eval $(call BuildPackage,python3-music-assistant-models))
$(eval $(call BuildPackage,python3-music-assistant-models-src))
