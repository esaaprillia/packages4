include $(TOPDIR)/rules.mk

PKG_NAME:=python-openai
PKG_VERSION:=1.61.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=openai
PKG_HASH:=216f325a24ed8578e929b0f1b3fb2052165f3b04b0461818adaa51aa29c71f8a

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-openai
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The official Python library for the openai API
  URL:=https://github.com/openai/openai-python
  DEPENDS:=+python3 +python3-httpx +python3-pydantic +python3-typing-extensions +python3-anyio +python3-distro +python3-sniffio +python3-tqdm +python3-jiter
endef

define Package/python3-openai/description
The OpenAI Python library provides convenient access to the OpenAI REST API from any Python 3.8+ application. The library includes type definitions for all request params and response fields, and offers both synchronous and asynchronous clients powered by httpx.
endef

$(eval $(call Py3Package,python3-openai))
$(eval $(call BuildPackage,python3-openai))
$(eval $(call BuildPackage,python3-openai-src))
