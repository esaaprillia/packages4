include $(TOPDIR)/rules.mk

PKG_NAME:=python-yfinance
PKG_VERSION:=1.7.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=yfinance
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-yfinance
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Download market data from Yahoo! Finance's API
  URL:=https://github.com/ranaroussi/yfinance
  DEPENDS:= \
	+python3 \
	+python3-beautifulsoup4 \
	+python3-curl-cffi \
	+python3-lxml \
	+python3-multitasking \
	+python3-numpy \
	+python3-pandas \
	+python3-peewee \
	+python3-platformdirs \
	+python3-protobuf \
	+python3-pytz \
	+python3-requests \
	+python3-websockets \
	+python3-scipy \
	+python3-scikit-learn
endef

define Package/python3-yfinance/description
yfinance offers a Pythonic way to fetch financial & market data from Yahoo!Ⓡ finance.
endef

$(eval $(call Py3Package,python3-yfinance))
$(eval $(call BuildPackage,python3-yfinance))
$(eval $(call BuildPackage,python3-yfinance-src))
