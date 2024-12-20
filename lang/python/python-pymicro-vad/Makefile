include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymicro-vad
PKG_VERSION:=1.0.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pymicro_vad
PKG_HASH:=60e0508b338b694c7ad71c633c0da6fcd2678a88abb8e948b80fa68934965111

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-pybind11/host

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
