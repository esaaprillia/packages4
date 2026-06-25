include $(TOPDIR)/rules.mk

PKG_NAME:=python-ollama-gui
PKG_VERSION:=1.2.2
PKG_RELEASE:=1

PYPI_NAME:=ollama_gui
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-ollama-gui
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A single-file tkinter-based Ollama GUI project with no external dependencies.
  URL:=https://github.com/chyok/ollama-gui
  DEPENDS:=+python3 +python3-tkinter
endef

define Package/python3-ollama-gui/description
A very simple ollama GUI, implemented using the built-in Python Tkinter library, with no additional dependencies.
Provide you with the simplest possible visual Ollama interface.
endef

$(eval $(call Py3Package,python3-ollama-gui))
$(eval $(call BuildPackage,python3-ollama-gui))
$(eval $(call BuildPackage,python3-ollama-gui-src))
