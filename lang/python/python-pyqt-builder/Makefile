include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyqt-builder
PKG_VERSION:=1.18.1
PKG_RELEASE:=1

PYPI_NAME:=pyqt_builder
PKG_HASH:=3f7a3a2715947a293a97530a76fd59f1309fcb8e57a5830f45c79fe7249b3998

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pyqt-builder
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The PyQt build system
  URL:=https://github.com/Python-PyQt/PyQt-builder
  DEPENDS:=+python3 +python3-packaging +python3-sip
endef

define Package/python3-pyqt-builder/description
PyQt-builder is the PEP 517 compliant build system for PyQt and projects that extend PyQt. It extends the SIP build system and uses Qt's qmake to perform the actual compilation and installation of extension modules.
endef

PYTHON3_HOST_WHEEL_NAME:=PyQt_builder
PYTHON3_HOST_WHEEL_VERSION:=1.18.1

$(eval $(call Py3Package,python3-pyqt-builder))
$(eval $(call BuildPackage,python3-pyqt-builder))
$(eval $(call BuildPackage,python3-pyqt-builder-src))
$(eval $(call HostBuild))
