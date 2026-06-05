include $(TOPDIR)/rules.mk

PKG_NAME:=python-configargparse
PKG_VERSION:=1.7.5
PKG_RELEASE:=1

PYPI_NAME:=configargparse
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-configargparse
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A drop-in replacement for argparse that allows options to also be set via config files and/or environment variables.
  URL:=https://github.com/bw2/ConfigArgParse
  DEPENDS:= \
	+python3-light \
	+python3-yaml
endef

define Package/python3-configargparse/description
Applications with more than a handful of user-settable options are best configured through a combination of command line args, config files, hard-coded defaults, and in some cases, environment variables.
endef

$(eval $(call Py3Package,python3-configargparse))
$(eval $(call BuildPackage,python3-configargparse))
$(eval $(call BuildPackage,python3-configargparse-src))
