include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymicro-vad
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pymicro_vad
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pymicro-vad
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Self-contained voice activity detector
  URL:=https://github.com/rhasspy/pymicro-vad
  DEPENDS:=+python3 +libstdcpp
endef

define Package/python3-pymicro-vad/description
Self-contained voice activity detector (VAD) that uses the machine learning architecture from microWakeWord.
endef

$(eval $(call Py3Package,python3-pymicro-vad))
$(eval $(call BuildPackage,python3-pymicro-vad))
$(eval $(call BuildPackage,python3-pymicro-vad-src))
