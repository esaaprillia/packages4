include $(TOPDIR)/rules.mk

PKG_NAME:=python-beniget
PKG_VERSION:=0.4.2.post1
PKG_RELEASE:=1

PYPI_NAME:=beniget
PKG_HASH:=a0258537e65e7e14ec33a86802f865a667f949bb6c73646d55e42f7c45a052ae

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-beniget
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Extract semantic information about static Python code
  URL:=https://github.com/serge-sans-paille/beniget
  DEPENDS:=+python3 +python3-gast
endef

define Package/python3-beniget/description
  Beniget is a collection of Compile-time analyse on Python Abstract Syntax Tree(AST). It's a building block to write static analyzer or compiler for Python.
  Beniget relies on gast to provide a cross version abstraction of the AST, effectively working across all Python 3 versions greater than 3.6.
endef

$(eval $(call Py3Package,python3-beniget))
$(eval $(call BuildPackage,python3-beniget))
$(eval $(call BuildPackage,python3-beniget-src))
$(eval $(call HostBuild))
