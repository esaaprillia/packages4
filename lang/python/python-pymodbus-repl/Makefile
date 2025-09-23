include $(TOPDIR)/rules.mk

PKG_NAME:=python-pymodbus-repl
PKG_VERSION:=2.0.4
PKG_RELEASE:=1

PYPI_NAME:=pymodbus_repl
PKG_HASH:=skip

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pymodbus-repl
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=REPL client and server for pymodbus
  URL:=https://github.com/pymodbus-dev/repl
  DEPENDS:=+python3 +python3-typer +python3-prompt-toolkit +python3-pygments +python3-tabulate
endef

define Package/python3-pymodbus-repl/description
Pymodbus-REPL is a REPL (Read-Eval-Print Loop) tool for working with Modbus devices using the Pymodbus library.
endef

$(eval $(call Py3Package,python3-pymodbus-repl))
$(eval $(call BuildPackage,python3-pymodbus-repl))
$(eval $(call BuildPackage,python3-pymodbus-repl-src))
