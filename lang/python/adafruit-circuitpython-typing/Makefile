include $(TOPDIR)/rules.mk

PKG_NAME:=adafruit-circuitpython-typing
PKG_VERSION:=1.12.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=adafruit_circuitpython_typing
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-adafruit-circuitpython-typing
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Definitions not in the standard typing module that are needed for type annotation of CircuitPython code.
  URL:=https://github.com/adafruit/Adafruit_CircuitPython_Typing
  DEPENDS:=+python3 +python3-adafruit-blinka +python3-adafruit-circuitpython-busdevice +python3-adafruit-circuitpython-requests +python3-typing-extensions
endef

define Package/python3-adafruit-circuitpython-typing/description
Definitions not in the standard typing module that are needed for type annotation of CircuitPython code.
endef

$(eval $(call Py3Package,python3-adafruit-circuitpython-typing))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-typing))
$(eval $(call BuildPackage,python3-adafruit-circuitpython-typing-src))
