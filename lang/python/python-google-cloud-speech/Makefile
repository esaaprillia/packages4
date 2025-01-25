include $(TOPDIR)/rules.mk

PKG_NAME:=python-google-cloud-speech
PKG_VERSION:=2.30.0
PKG_RELEASE:=1

PYPI_NAME:=google_cloud_speech
PKG_HASH:=ec63cbd4c2bbdb0306462a0f30082f4495dedc506f0c4a1a2990ee6e6346544c

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache 2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-google-cloud-speech
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Google Cloud Speech API client library
  URL:=https://github.com/googleapis/google-cloud-python
  DEPENDS:=+python3 +python3-google-api-core +python3-google-auth +python3-proto-plus +python3-protobuf
endef

define Package/python3-google-cloud-speech/description
  Cloud Speech: enables easy integration of Google speech recognition technologies into developer applications. Send audio and receive a text transcription from the Speech-to-Text API service.
endef

$(eval $(call Py3Package,python3-google-cloud-speech))
$(eval $(call BuildPackage,python3-google-cloud-speech))
$(eval $(call BuildPackage,python3-google-cloud-speech-src))
