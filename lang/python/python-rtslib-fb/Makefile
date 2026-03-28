include $(TOPDIR)/rules.mk

PKG_NAME:=python-rtslib-fb
PKG_VERSION:=2.2.4
PKG_RELEASE:=1

PYPI_NAME:=rtslib_fb
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-rtslib-fb
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=API for Linux kernel SCSI target (aka LIO)
  URL:=http://github.com/open-iscsi/rtslib-fb
  DEPENDS:=+python3 +python3-pyudev
endef

define Package/python3-rtslib-fb/description
rtslib-fb is an object-based Python library for configuring the LIO generic SCSI target, present in Linux kernel.
endef

$(eval $(call Py3Package,python3-rtslib-fb))
$(eval $(call BuildPackage,python3-rtslib-fb))
$(eval $(call BuildPackage,python3-rtslib-fb-src))
