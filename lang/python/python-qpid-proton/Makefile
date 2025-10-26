include $(TOPDIR)/rules.mk

PKG_NAME:=python-qpid-proton
PKG_VERSION:=0.40.0
PKG_RELEASE:=1

PYPI_NAME:=python_qpid_proton
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:= LICENCE

PKG_BUILD_DEPENDS:=python-poetry-core/host python-cffi/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-qpid-proton
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An AMQP based messaging library.
  URL:=https://qpid.apache.org/proton
  DEPENDS:=+python3 +python3-cffi
endef

define Package/python3-qpid-proton/description
This module provides a Python binding to the Proton AMQP messaging toolkit.
endef

$(eval $(call Py3Package,python3-qpid-proton))
$(eval $(call BuildPackage,python3-qpid-proton))
$(eval $(call BuildPackage,python3-qpid-proton-src))
