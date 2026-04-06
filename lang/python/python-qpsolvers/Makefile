include $(TOPDIR)/rules.mk

PKG_NAME:=python-qpsolvers
PKG_VERSION:=4.11.0
PKG_RELEASE:=1

PYPI_NAME:=qpsolvers
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-qpsolvers
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Quadratic programming solvers in Python with a unified API.
  URL:=https://github.com/qpsolvers/qpsolvers
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-scipy \
	+python3-osqp \
	+python3-proxsuite \
	+python3-scs \
	+python3-daqp
endef

define Package/python3-qpsolvers/description
  Quadratic Programming Solvers in Python
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-qpsolvers))
$(eval $(call BuildPackage,python3-qpsolvers))
$(eval $(call BuildPackage,python3-qpsolvers-src))
