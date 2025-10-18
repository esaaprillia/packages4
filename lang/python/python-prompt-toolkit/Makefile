include $(TOPDIR)/rules.mk

PKG_NAME:=python-prompt-toolkit
PKG_VERSION:=3.0.52
PKG_RELEASE:=1

PYPI_NAME:=prompt_toolkit
PKG_HASH:=skip

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-prompt-toolkit
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Library for building powerful interactive command lines in Python
  URL:=https://python-prompt-toolkit.readthedocs.io/
  DEPENDS:=+python3 +python3-wcwidth
endef

define Package/python3-prompt-toolkit/description
prompt_toolkit is a library for building powerful interactive command line applications in Python.
endef

$(eval $(call Py3Package,python3-prompt-toolkit))
$(eval $(call BuildPackage,python3-prompt-toolkit))
$(eval $(call BuildPackage,python3-prompt-toolkit-src))
