include $(TOPDIR)/rules.mk

PKG_NAME:=python-edge-tts
PKG_VERSION:=7.2.8
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=edge_tts
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-edge-tts
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Microsoft Edge's TTS
  URL:=https://github.com/rany2/edge-tts
  DEPENDS:= \
	+python3 \
	+python3-aiohttp \
	+python3-certifi \
	+python3-tabulate \
	+python3-typing-extensions
endef

define Package/python3-edge-tts/description
edge-tts is a Python module that allows you to use Microsoft Edge's online text-to-speech service from within your Python code or using the provided edge-tts or edge-playback command.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-edge-tts))
$(eval $(call BuildPackage,python3-edge-tts))
$(eval $(call BuildPackage,python3-edge-tts-src))
