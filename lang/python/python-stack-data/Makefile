include $(TOPDIR)/rules.mk

PKG_NAME:=python-stack-data
PKG_VERSION:=0.6.3
PKG_RELEASE:=1

PYPI_NAME:=stack_data
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-executing/host python-asttokens/host python3-pure-eval/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-stack-data
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Extract data from python stack frames and tracebacks for informative displays
  URL:=https://github.com/alexmojaki/stack_data
  DEPENDS:=+python3 +python3-executing +python3-asttokens +python3-pure-eval
endef

define Package/python3-stack-data/description
  This is a library that extracts data from stack frames and tracebacks, particularly to display more useful tracebacks than the default. It powers the tracebacks in IPython and futurecoder
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-stack-data))
$(eval $(call BuildPackage,python3-stack-data))
$(eval $(call BuildPackage,python3-stack-data-src))
