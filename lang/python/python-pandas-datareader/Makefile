include $(TOPDIR)/rules.mk

PKG_NAME:=python-pandas-datareader
PKG_VERSION:=0.11.0
PKG_RELEASE:=1

PYPI_NAME:=pandas_datareader
PKG_HASH:=skip

PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSES.md
PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pandas-datareader
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Data readers extracted from the pandas codebase
  URL:=https://pydata.github.io/pandas-datareader/stable/index.html
  DEPENDS:=+python3 +python3-lxml +python3-pandas +python3-requests
endef

define Package/python3-pandas-datareader/description
  Data readers extracted from the pandas codebase,should be compatible with recent pandas versions
endef

$(eval $(call Py3Package,python3-pandas-datareader))
$(eval $(call BuildPackage,python3-pandas-datareader))
$(eval $(call BuildPackage,python3-pandas-datareader-src))
$(eval $(call HostBuild))
