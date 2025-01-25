include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-cloud-texttospeech
PKG_VERSION:=2.24.0
PKG_RELEASE:=1

PYPI_NAME:=google_cloud_texttospeech
PKG_HASH:=c9f5f3bcbe4d345e267015531890f4f991d76c19cb9b6bfadc0e63c600b1034e

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache 2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-google-cloud-texttospeech
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Google Cloud Texttospeech API client library
  URL:=https://github.com/googleapis/google-cloud-python
  DEPENDS:=+python3 +python3-google-api-core +python3-google-auth +python3-proto-plus +python3-protobuf
endef

define Package/python3-google-cloud-texttospeech/description
  Google Cloud Text-to-Speech: enables easy integration of Google text recognition technologies into developer applications. Send text and receive synthesized audio output from the Cloud Text-to-Speech API service.
endef

$(eval $(call Py3Package,python3-google-cloud-texttospeech))
$(eval $(call BuildPackage,python3-google-cloud-texttospeech))
$(eval $(call BuildPackage,python3-google-cloud-texttospeech-src))
