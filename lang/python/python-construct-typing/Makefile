include $(TOPDIR)/rules.mk

PKG_NAME:=python-construct-typing
PKG_VERSION:=0.6.2
PKG_RELEASE:=1

PYPI_NAME:=construct-typing
PKG_HASH:=948e998cfc003681dc34f2d071c3a688cf35b805cbe107febbc488ef967ccba1

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-construct-typing
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Extension for the python package 'construct' that adds typing features
  URL:=https://github.com/timrid/construct-typing
  DEPENDS:=+python3 +python3-construct +python3-typing-extensions
endef

define Package/python3-construct-typing/description
This project is an extension of the python package construct, which is a powerful declarative and symmetrical parser and builder for binary data. This Repository consists of two packages:
• construct-stubs: Adding .pyi for the whole construct 2.10 package (according to PEP 561 stub-only packages)
• construct_typed: Adding additional classes that help with autocompletion and additional type hints.
endef

$(eval $(call Py3Package,python3-construct-typing))
$(eval $(call BuildPackage,python3-construct-typing))
$(eval $(call BuildPackage,python3-construct-typing-src))
