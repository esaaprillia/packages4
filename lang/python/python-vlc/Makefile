include $(TOPDIR)/rules.mk

PKG_NAME:=python-vlc
PKG_VERSION:=3.0.21203
PKG_RELEASE:=1

PYPI_NAME:=python_vlc
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1 GPL-2.0
PKG_LICENSE_FILES:=COPYING COPYING.generator

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-vlc
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=VLC bindings for python.
  URL:=https://wiki.videolan.org/PythonBinding
  DEPENDS:= \
	+python3-light \
	+vlc
endef

define Package/python3-vlc/description
The bindings use ctypes to directly call the libvlc dynamic lib, and the code is generated from the include files defining the public API.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-vlc))
$(eval $(call BuildPackage,python3-vlc))
$(eval $(call BuildPackage,python3-vlc-src))
