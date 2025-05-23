#
# Copyright (C) 2023 Jeffery To
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-setuptools
PKG_VERSION:=80.8.0
PKG_RELEASE:=1

PYPI_NAME:=setuptools
PKG_HASH:=49f7af965996f26d43c8ae34539c8d99c5042fbff34302ea151eaa9c207cd257

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>
CPE_ID:=cpe:/a:python:setuptools

HOST_BUILD_DEPENDS:=python3/host python-build/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-setuptools/Default
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  URL:=https://github.com/pypa/setuptools
endef

define Package/python3-pkg-resources
$(call Package/python3-setuptools/Default)
  TITLE:=Package resource API
  DEPENDS:=+python3-light +python3-email +python3-logging +python3-urllib
endef

define Package/python3-setuptools
$(call Package/python3-setuptools/Default)
  TITLE:=Fully-featured library to package Python projects
  DEPENDS:=+python3 +python3-pkg-resources
endef

define Package/python3-setuptools/description/Default
Setuptools is a fully-featured, actively-maintained, and stable library
designed to facilitate packaging Python projects.

It helps developers to easily share reusable code (in the form of a
library) and programs (e.g., CLI/GUI tools implemented in Python), that
can be installed with pip and uploaded to PyPI.
endef

define Package/python3-pkg-resources/description
$(call Package/python3-setuptools/description/Default)

This is the pkg_resources module of setuptools.
endef

define Package/python3-setuptools/description
$(call Package/python3-setuptools/description/Default)

This is the main setuptools module.
endef

define Py3Package/python3-pkg-resources/filespec
+|$(PYTHON3_PKG_DIR)/pkg_resources
endef

define Py3Package/python3-setuptools/filespec
+|$(PYTHON3_PKG_DIR)
-|$(PYTHON3_PKG_DIR)/pkg_resources
endef

$(eval $(call Py3Package,python3-pkg-resources))
$(eval $(call Py3Package,python3-setuptools))

$(eval $(call BuildPackage,python3-pkg-resources))
$(eval $(call BuildPackage,python3-setuptools))

$(eval $(call BuildPackage,python3-pkg-resources-src))
$(eval $(call BuildPackage,python3-setuptools-src))
$(eval $(call HostBuild))
