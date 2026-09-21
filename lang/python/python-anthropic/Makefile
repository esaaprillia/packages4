include $(TOPDIR)/rules.mk

PKG_NAME:=python-anthropic
PKG_VERSION:=1.7.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:= anthropic
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host
HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-anthropic
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The official Python library for the anthropic API
  URL:=https://github.com/anthropics/anthropic-sdk-python
  DEPENDS:= \
	+python3 \
	+python3-httpx2 \
	+python3-pydantic \
	+python3-typing-extensions \
	+python3-anyio \
	+python3-sniffio \
	+python3-jiter \
	+python3-docstring-parser
endef

define Package/python3-anthropic/description
The Claude SDK for Python provides access to the Claude API from Python applications.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-anthropic))
$(eval $(call BuildPackage,python3-anthropic))
$(eval $(call BuildPackage,python3-anthropic-src))
