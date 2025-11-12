include $(TOPDIR)/rules.mk

PKG_NAME:=python-rockstor-core
PKG_VERSION:=5.1.0-0
PKG_RELEASE:=1

PYPI_NAME:=rockstor-core
PKG_SOURCE_URL:=https://github.com/rockstor/rockstor-core/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-rockstor-core
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Linux/BTRFS based Network Attached Storage(NAS)
  URL:=http://rockstor.com/
  DEPENDS:=+python3 +python3-django +python3-django-oauth-toolkit +python3-django-restframework +python3-django-pipeline +python3-docutils +python3-engineio +python3-socketio +python3-dbus +python3-psycopg +python3-psycogreen +python3-gevent +python3-gunicorn +python3-packaging +python3-six +python3-huey +python3-psutil +python3-pyzmq +python3-distro +python3-urlobject +python3-keyring-pass +python3-zypper-changelog-lib +python3-supervisor
endef

define Package/python3-rockstor-core/description
An Open Source (Licensed: FSF Free/Libre & OSI approved) community endeavour to sustainably develop, maintain, and distribute an easy to use, flexible, Linux & BTRFS based DIY Network Attached Storage (NAS) software appliance.
endef

$(eval $(call Py3Package,python3-rockstor-core))
$(eval $(call BuildPackage,python3-rockstor-core))
$(eval $(call BuildPackage,python3-rockstor-core-src))
