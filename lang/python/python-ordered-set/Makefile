include $(TOPDIR)/rules.mk

PKG_NAME:=python-ordered-set
PKG_VERSION:=4.1.0
PKG_RELEASE:=1

PYPI_NAME:=ordered-set
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=MIT-LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ordered-set
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An OrderedSet is a custom MutableSet that remembers its order, so that every
  URL:=https://github.com/rspeer/ordered-set
  DEPENDS:= \
	+python3
endef

define Package/python3-ordered-set/description
An OrderedSet is a mutable data structure that is a hybrid of a list and a set.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ordered-set))
$(eval $(call BuildPackage,python3-ordered-set))
$(eval $(call BuildPackage,python3-ordered-set-src))
