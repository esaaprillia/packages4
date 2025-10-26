include $(TOPDIR)/rules.mk

PKG_NAME:=rabbitmq-amqp-python-client
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PYPI_NAME:=rabbitmq_amqp_python_client
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:= LICENCE

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-rabbitmq-amqp-python-client
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python RabbitMQ client for AMQP 1.0 protocol
  URL:=https://github.com/rabbitmq/rabbitmq-amqp-python-client
  DEPENDS:=+python3 +python3-qpid-proton +python3-typing-extensions +python3-packaging
endef

define Package/python3-rabbitmq-amqp-python-client/description
This library is meant to be used with RabbitMQ 4.0. Suitable for testing in pre-production environments.
endef

$(eval $(call Py3Package,python3-rabbitmq-amqp-python-client))
$(eval $(call BuildPackage,python3-rabbitmq-amqp-python-client))
$(eval $(call BuildPackage,python3-rabbitmq-amqp-python-client-src))
