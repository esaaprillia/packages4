include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydantic
PKG_VERSION:=2.10.6
PKG_RELEASE:=1

PYPI_NAME:=pydantic
PKG_HASH:=ca5daa827cce33de7a42be142548b0096bf05a7e7b365aebfa5f8eeec7128236

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pydantic
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Data validation using Python type hints
  URL:=https://docs.pydantic.dev/
  DEPENDS:=+python3 +python3-typing-extensions +python3-annotated-types +python3-pydantic-core
endef

define Package/python3-pydantic/description
Data validation using Python type hints.

Fast and extensible, Pydantic plays nicely with your linters/IDE/brain. Define how data should be in pure, canonical Python 3.8+; validate it with Pydantic.
endef

$(eval $(call Py3Package,python3-pydantic))
$(eval $(call BuildPackage,python3-pydantic))
$(eval $(call BuildPackage,python3-pydantic-src))
