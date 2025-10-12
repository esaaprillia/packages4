include $(TOPDIR)/rules.mk

PKG_NAME:=screamrouter
PKG_VERSION:=0.3.12
PKG_RELEASE:=1

PYPI_NAME:=screamrouter
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://github.com/netham45/screamrouter.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=6228e4a35a2517db8233225554af68e89d49cf55
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-pybind11/host python-yaml/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-screamrouter
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=ScreamRouter audio routing system with web interface and C++ audio engine
  URL:=https://screamrouter.net/
  DEPENDS:=+python3-light +python3-cryptography +python3-dnspython +python3-fastapi +python3-httpx +python3-jinja2 +python3-netifaces +python3-numpy +python3-pydantic +python3-pyopenssl +python3-pyyaml +python3-setproctitle +python3-starlette +python3-uvicorn +python3-websockets +python3-zeroconf
endef

define Package/python3-screamrouter/description
  ScreamRouter is a versatile audio routing and management system with a Python frontend/configuration layer and C++ backend, designed for network audio streaming. It supports Scream and RTP audio sources, along with Scream receivers and web-based MP3 streamers.
endef

$(eval $(call Py3Package,python3-screamrouter))
$(eval $(call BuildPackage,python3-screamrouter))
$(eval $(call BuildPackage,python3-screamrouter-src))
