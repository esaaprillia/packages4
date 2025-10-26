include $(TOPDIR)/rules.mk

PKG_NAME:=python-pika
PKG_VERSION:=1.3.2
PKG_RELEASE:=1

PYPI_NAME:=pika
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:= LICENCE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pika
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pika Python AMQP Client Library
  URL:=https://pika.readthedocs.io/
  DEPENDS:=+python3 +python3-gevent +python3-tornado +python3-twisted
endef

define Package/python3-pika/description
Pika is a pure-Python implementation of the AMQP 0-9-1 protocol including RabbitMQ’s extensions.
endef

$(eval $(call Py3Package,python3-pika))
$(eval $(call BuildPackage,python3-pika))
$(eval $(call BuildPackage,python3-pika-src))
