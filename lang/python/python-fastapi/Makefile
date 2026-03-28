include $(TOPDIR)/rules.mk

PKG_NAME:=python-fastapi
PKG_VERSION:=0.135.2
PKG_RELEASE:=1

PYPI_NAME:=fastapi
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pdm-backend/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-fastapi
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=FastAPI framework, high performance, easy to learn, fast to code, ready for production
  URL:=https://github.com/fastapi/fastapi
  DEPENDS:=+python3 +python3-starlette +python3-pydantic +python3-typing-extensions +python3-annotated-doc
endef

define Package/python3-fastapi/description
  FastAPI is a modern, fast (high-performance), web framework for building APIs with Python based on standard Python type hints.
endef

$(eval $(call Py3Package,python3-fastapi))
$(eval $(call BuildPackage,python3-fastapi))
$(eval $(call BuildPackage,python3-fastapi-src))
