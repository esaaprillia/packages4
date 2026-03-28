include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-genai
PKG_VERSION:=1.68.0
PKG_RELEASE:=1

PYPI_NAME:=google_genai
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-twine/host python-packaging/host python-pkginfo/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-google-genai
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=GenAI Python SDK
  URL:=https://googleapis.github.io/python-genai/
  DEPENDS:=+python3 +python3-anyio +python3-google-auth +python3-httpx +python3-pydantic +python3-requests +python3-tenacity +python3-websockets +python3-typing-extensions +python3-aiohttp +python3-sentencepiece +python3-protobuf
endef

define Package/python3-google-genai/description
Google Gen AI Python SDK provides an interface for developers to integrate Google's generative models into their Python applications. It supports the Gemini Developer API and Vertex AI APIs.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-google-genai))
$(eval $(call BuildPackage,python3-google-genai))
$(eval $(call BuildPackage,python3-google-genai-src))
