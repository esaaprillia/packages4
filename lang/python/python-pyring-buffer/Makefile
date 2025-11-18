include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyring-buffer
PKG_VERSION:=1.0.2
PKG_RELEASE:=1

PYPI_NAME:=pyring_buffer
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyring-buffer
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A pure Python ring buffer for bytes
  URL:=https://github.com/rhasspy/pyring-buffer
  DEPENDS:=+python3
endef

define Package/python3-pyring-buffer/description
A pure Python ring/circular buffer for bytes.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pyring-buffer))
$(eval $(call BuildPackage,python3-pyring-buffer))
$(eval $(call BuildPackage,python3-pyring-buffer-src))
