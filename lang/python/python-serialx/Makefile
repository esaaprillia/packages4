include $(TOPDIR)/rules.mk

PKG_NAME:=python-serialx
PKG_VERSION:=1.7.1
PKG_RELEASE:=1

PYPI_NAME:=serialx
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-setuptools-rust/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-serialx
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Serial library with native async support for Windows and POSIX
  URL:=https://github.com/puddly/serialx
  DEPENDS:= \
	+python3 \
	+python3-typing-extensions \
	+python3-async-timeout \
	$(RUST_ARCH_DEPENDS)
endef

define Package/python3-serialx/description
Serialx is a no-compromise serial communication library for Python targeting common platforms such as Linux (POSIX), macOS, and Windows.
endef

$(eval $(call Py3Package,python3-serialx))
$(eval $(call BuildPackage,python3-serialx))
$(eval $(call BuildPackage,python3-serialx-src))
