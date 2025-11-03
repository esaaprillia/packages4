include $(TOPDIR)/rules.mk

PKG_NAME:=python-asyncssh
PKG_VERSION:=2.21.1
PKG_RELEASE:=1

PYPI_NAME:=asyncssh
PKG_HASH:=skip

PKG_LICENSE:=EPL-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-asyncssh
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Asynchronous SSH for Python
  URL:=https://github.com/ronf/asyncssh
  DEPENDS:=+python3-light +python3-cryptography +python3-typing-extensions
endef

define Package/python3-asyncssh/description
AsyncSSH is a Python package which provides an asynchronous client and server implementation of the SSHv2 protocol on top of the Python asyncio framework.
endef

$(eval $(call Py3Package,python3-asyncssh))
$(eval $(call BuildPackage,python3-asyncssh))
$(eval $(call BuildPackage,python3-asyncssh-src))
