include $(TOPDIR)/rules.mk

PKG_NAME:=python-ollama
PKG_VERSION:=0.6.2
PKG_RELEASE:=1

PYPI_NAME:=ollama
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ollama
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Ollama Python library
  URL:=https://github.com/ollama/ollama-python
  DEPENDS:= \
	+python3 \
	+python3-httpx \
	+python3-pydantic
endef

define Package/python3-ollama/description
The Ollama Python library provides the easiest way to integrate Python 3.8+ projects with Ollama.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ollama))
$(eval $(call BuildPackage,python3-ollama))
$(eval $(call BuildPackage,python3-ollama-src))
