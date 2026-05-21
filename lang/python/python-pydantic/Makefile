include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydantic
PKG_VERSION:=2.13.4
PKG_RELEASE:=1

PYPI_NAME:=pydantic
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host
HOST_BUILD_DEPENDS:=python-typing-extensions/host python-annotated-types/host python-pydantic-core/host python-typing-inspection/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pydantic
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Data validation using Python type hints
  URL:=https://docs.pydantic.dev/
  DEPENDS:= \
	+python3 \
	+python3-typing-extensions \
	+python3-annotated-types \
	+python3-pydantic-core \
	+python3-typing-inspection
endef

define Package/python3-pydantic/description
Data validation using Python type hints.

Fast and extensible, Pydantic plays nicely with your linters/IDE/brain. Define how data should be in pure, canonical Python 3.8+; validate it with Pydantic.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pydantic))
$(eval $(call BuildPackage,python3-pydantic))
$(eval $(call BuildPackage,python3-pydantic-src))
