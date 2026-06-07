include $(TOPDIR)/rules.mk

PKG_NAME:=python-typer
PKG_VERSION:=0.26.7
PKG_RELEASE:=1

PYPI_NAME:=typer
PKG_HASH:=skip

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

PKG_BUILD_DEPENDS:=python-pdm-backend/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-typer
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Typer, build great CLIs. Easy to code. Based on Python type hints.
  URL:=https://typer.tiangolo.com/
  DEPENDS:= \
	+python3-light \
	+python3-click \
	+python3-shellingham \
	+python3-rich \
	+python3-annotated-doc
endef

define Package/python3-typer/description
Typer is a library for building CLI applications that users will love using and developers will love creating. Based on Python type hints.
endef

$(eval $(call Py3Package,python3-typer))
$(eval $(call BuildPackage,python3-typer))
$(eval $(call BuildPackage,python3-typer-src))
