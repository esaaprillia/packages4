include $(TOPDIR)/rules.mk

PKG_NAME:=python-pycodestyle
PKG_VERSION:=2.12.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pycodestyle
PKG_HASH:=6838eae08bbce4f6accd5d5572075c63626a15ee3e6f842df996bf62f6d73521

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pycodestyle
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python style guide checker
  URL:=https://pycodestyle.pycqa.org/en/latest/
  DEPENDS:=+python3
endef

define Package/python3-pycodestyle/description
pycodestyle is a tool to check your Python code against some of the style conventions in PEP 8.
This package used to be called pep8 but was renamed to pycodestyle to reduce confusion. Further discussion can be found in the issue where Guido requested this change, or in the lightning talk at PyCon 2016 by @IanLee1521: slides video.
endef

$(eval $(call Py3Package,python3-pycodestyle))
$(eval $(call BuildPackage,python3-pycodestyle))
$(eval $(call BuildPackage,python3-pycodestyle-src))
