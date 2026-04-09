include $(TOPDIR)/rules.mk

PKG_NAME:=python-ipython-pygments-lexers
PKG_VERSION:=1.1.1
PKG_RELEASE:=1

PYPI_NAME:=ipython_pygments_lexers
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host
HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-flit-core/host python-pygments/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ipython-pygments-lexers
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Defines a variety of Pygments lexers for highlighting IPython code.
  URL:=https://github.com/ipython/ipython-pygments-lexers
  DEPENDS:=+python3 +python3-pygments
endef

define Package/python3-ipython-pygments-lexers/description
  IPython is an interactive Python shell. Among other features, it adds some special convenience syntax, including %magics, !shell commands and help?. This package contains lexers for these, to use with the Pygments syntax highlighting package.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ipython-pygments-lexers))
$(eval $(call BuildPackage,python3-ipython-pygments-lexers))
$(eval $(call BuildPackage,python3-ipython-pygments-lexers-src))
