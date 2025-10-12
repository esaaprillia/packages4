include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioquic
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=aioquic
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-aioquic
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An implementation of QUIC and HTTP/3
  URL:=https://github.com/aiortc/aioquic
  DEPENDS:=+python3 +python3-certifi +python3-cryptography +python3-pylsqpack +python3-pyopenssl +python3-service-identity
endef

define Package/python3-aioquic/description
  aioquic is a library for the QUIC network protocol in Python. It features a minimal TLS 1.3 implementation, a QUIC stack and an HTTP/3 stack.
endef

$(eval $(call Py3Package,python3-aioquic))
$(eval $(call BuildPackage,python3-aioquic))
$(eval $(call BuildPackage,python3-aioquic-src))
