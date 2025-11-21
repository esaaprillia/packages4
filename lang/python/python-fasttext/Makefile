include $(TOPDIR)/rules.mk

PKG_NAME:=python-fasttext
PKG_VERSION:=0.9.3
PKG_RELEASE:=1

PYPI_NAME:=fasttext
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-pybind11/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-fasttext
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=fasttext Python bindings
  URL:=https://github.com/facebookresearch/fastText
  DEPENDS:=+python3 +python3-setuptools +python3-numpy +libstdcpp
endef

define Package/python3-fasttext/description
fastText is a library for efficient learning of word representations and sentence classification.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-fasttext))
$(eval $(call BuildPackage,python3-fasttext))
$(eval $(call BuildPackage,python3-fasttext-src))
