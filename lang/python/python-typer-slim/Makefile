include $(TOPDIR)/rules.mk

PKG_NAME:=python-typer-slim
PKG_VERSION:=0.21.1
PKG_RELEASE:=1

PYPI_NAME:=typer_slim
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pdm-backend/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-typer-slim
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Typer, build great CLIs. Easy to code. Based on Python type hints.
  URL:=https://typer.tiangolo.com/
  DEPENDS:=+python3 +python3-click +python3-typing-extensions
endef

define Package/python3-typer-slim/description
Typer is a library for building CLI applications that users will love using and developers will love creating. Based on Python type hints.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-typer-slim))
$(eval $(call BuildPackage,python3-typer-slim))
$(eval $(call BuildPackage,python3-typer-slim-src))
