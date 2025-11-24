include $(TOPDIR)/rules.mk

PKG_NAME:=python-sentencepiece
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PYPI_NAME:=sentencepiece
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYTHON3_PKG_SETUP_DIR:=python

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sentencepiece
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Unsupervised text tokenizer and detokenizer.
  URL:=https://github.com/google/sentencepiece
  DEPENDS:=+python3 +sentencepiece
endef

define Package/python3-sentencepiece/description
Python wrapper for SentencePiece. This API will offer the encoding, decoding and training of Sentencepiece.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sentencepiece))
$(eval $(call BuildPackage,python3-sentencepiece))
$(eval $(call BuildPackage,python3-sentencepiece-src))
