include $(TOPDIR)/rules.mk

PKG_NAME:=peachpy
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PYPI_NAME:=peachpy

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/Maratyszcza/PeachPy.git
PKG_SOURCE_VERSION:=349e8f836142b2ed0efeb6bb99b1b715d87202e9
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.rst

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-opcodes/host python-six/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-opcodes/host python-six/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-peachpy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Portable Efficient Assembly Codegen in Higher-level Python
  URL:=https://github.com/Maratyszcza/PeachPy
  DEPENDS:=+python3-light python3-six
endef

define Package/python3-peachpy/description
PEACH-Py is a Python framework for writing high-performance assembly kernels. PEACH-Py is developed to simplify writing optimized assembly kernels while preserving all optimization opportunities of traditional assembly.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-peachpy))
$(eval $(call BuildPackage,python3-peachpy))
$(eval $(call BuildPackage,python3-peachpy-src))
