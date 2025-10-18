include $(TOPDIR)/rules.mk

PKG_NAME:=python-comm
PKG_VERSION:=0.2.3
PKG_RELEASE:=1

PYPI_NAME:=comm
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-comm
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Jupyter Python Comm implementation, for usage in ipykernel, xeus-python etc.
  URL:=https://github.com/ipython/comm
  DEPENDS:=+python3
endef

define Package/python3-comm/description
  It provides a way to register a Kernel Comm implementation, as per the Jupyter kernel protocol. It also provides a base Comm implementation and a default CommManager that can be used.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-comm))
$(eval $(call BuildPackage,python3-comm))
$(eval $(call BuildPackage,python3-comm-src))
