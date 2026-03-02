include $(TOPDIR)/rules.mk

PKG_NAME:=python-progressbar2
PKG_VERSION:=4.5.0
PKG_RELEASE:=1

PYPI_NAME:=progressbar2
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-progressbar2
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Text progress bar library for Python
  URL:=https://progressbar-2.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-utils
endef

define Package/python3-progressbar2/description
A text progress bar is typically used to display the progress of a long running operation, providing a visual cue that processing is underway.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-progressbar2))
$(eval $(call BuildPackage,python3-progressbar2))
$(eval $(call BuildPackage,python3-progressbar2-src))
