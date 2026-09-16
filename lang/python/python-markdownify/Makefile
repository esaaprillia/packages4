include $(TOPDIR)/rules.mk

PKG_NAME:=python-markdownify
PKG_VERSION:=1.2.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=markdownify
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-markdownify
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Convert HTML to Markdown
  URL:=http://github.com/matthewwithanm/python-markdownify
  DEPENDS:= \
	+python3 \
	+python3-beautifulsoup4 \
	+python3-six
endef

define Package/python3-markdownify/description
Convert HTML to Markdown
endef

$(eval $(call Py3Package,python3-markdownify))
$(eval $(call BuildPackage,python3-markdownify))
$(eval $(call BuildPackage,python3-markdownify-src))
