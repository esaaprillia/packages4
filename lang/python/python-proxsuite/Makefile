include $(TOPDIR)/rules.mk

PKG_NAME:=python-proxsuite
PKG_VERSION:=0.7.2
PKG_RELEASE:=1

PYPI_NAME:=proxsuite
PKG_SOURCE_URL:=https://github.com/Simple-Robotics/proxsuite/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-cmeel/host python-cmeel-simde/host python-cmeel-eigen/host python-typing-extensions/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-proxsuite
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Quadratic Programming Solver for Robotics and beyond.
  URL:=https://github.com/Simple-Robotics/proxsuite
  DEPENDS:= \
	+python3 \
	+python3-numpy \
	+python3-scipy
endef

define Package/python3-proxsuite/description
ProxSuite is a collection of open-source, numerically robust, precise, and efficient numerical solvers (e.g., LPs, QPs, etc.)
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-proxsuite))
$(eval $(call BuildPackage,python3-proxsuite))
$(eval $(call BuildPackage,python3-proxsuite-src))
