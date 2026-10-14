include $(TOPDIR)/rules.mk

PKG_NAME:=python-streamlit-pdf
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=streamlit_pdf
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=node/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-streamlit-pdf
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Streamlit component for viewing PDF files
  URL:=https://github.com/streamlit/streamlit-pdf
  DEPENDS:= \
	+python3-light
endef

define Package/python3-streamlit-pdf/description
A lightweight Streamlit feature that seamlessly displays PDF files in your apps, allowing for simple, responsive, and clean document viewing with minimal effort.
endef

$(eval $(call Py3Package,python3-streamlit-pdf))
$(eval $(call BuildPackage,python3-streamlit-pdf))
$(eval $(call BuildPackage,python3-streamlit-pdf-src))
