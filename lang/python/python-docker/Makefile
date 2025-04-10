include $(TOPDIR)/rules.mk

PKG_NAME:=python-docker
PKG_VERSION:=7.1.0
PKG_RELEASE:=1

PYPI_NAME:=docker
PKG_HASH:=ad8c70e6e3f8926cb8a92619b832b4ea5299e2831c14284663184e200546fa6c

PKG_MAINTAINER:=Javier Marcet <javier@marcet.info>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE
PKG_CPE_ID:=cpe:/a:docker:docker-py

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-docker
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A Python library for the Docker Engine API
  URL:=https://github.com/docker/docker-py
  DEPENDS:=\
	  +python3-light +python3-logging \
	  +python3-openssl +python3-packaging +python3-paramiko +python3-six \
	  +python3-requests +python3-urllib3 +python3-websocket-client
endef

define Package/python3-docker/description
  A Python library for the Docker Engine API. It lets you do anything the
  docker command does, but from within Python apps – run containers manage
  containers, manage Swarms, etc.
endef

$(eval $(call Py3Package,python3-docker))
$(eval $(call BuildPackage,python3-docker))
$(eval $(call BuildPackage,python3-docker-src))
