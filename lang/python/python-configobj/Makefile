include $(TOPDIR)/rules.mk

PKG_NAME:=python-configobj
PKG_VERSION:=5.0.9
PKG_RELEASE:=1

PYPI_NAME:=configobj
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-configobj
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Config file reading, writing and validation.
  URL:=https://github.com/DiffSK/configobj
  DEPENDS:= \
	+python3-light
endef

define Package/python3-configobj/description
ConfigObj is a simple but powerful config file reader and writer: an ini file round tripper. Its main feature is that it is very easy to use, with a straightforward programmer’s interface and a simple syntax for config files.
endef

$(eval $(call Py3Package,python3-configobj))
$(eval $(call BuildPackage,python3-configobj))
$(eval $(call BuildPackage,python3-configobj-src))
