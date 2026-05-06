include $(TOPDIR)/rules.mk

PKG_NAME:=python-gitpython
PKG_VERSION:=3.1.50
PKG_RELEASE:=1

PYPI_NAME:=gitpython
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-gitdb/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-gitpython
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=GitPython is a Python library used to interact with Git repositories
  URL:=https://github.com/gitpython-developers/GitPython
  DEPENDS:= \
	+python3 \
	+python3-gitdb
endef

define Package/python3-gitpython/description
GitPython is a python library used to interact with git repositories, high-level like git-porcelain, or low-level like git-plumbing.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-gitpython))
$(eval $(call BuildPackage,python3-gitpython))
$(eval $(call BuildPackage,python3-gitpython-src))
