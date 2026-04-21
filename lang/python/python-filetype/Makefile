include $(TOPDIR)/rules.mk

PKG_NAME:=python-filetype
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=filetype
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-filetype
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Infer file type and MIME type of any file/buffer. No external dependencies.
  URL:=https://github.com/h2non/filetype.py
  DEPENDS:= \
	+python3
endef

define Package/python3-filetype/description
Small and dependency free Python package to infer file type and MIME type checking the magic numbers signature of a file or buffer.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-filetype))
$(eval $(call BuildPackage,python3-filetype))
$(eval $(call BuildPackage,python3-filetype-src))
