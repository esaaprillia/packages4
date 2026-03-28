include $(TOPDIR)/rules.mk

PKG_NAME:=python-twine
PKG_VERSION:=6.2.0
PKG_RELEASE:=1

PYPI_NAME:=twine
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host
HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-rfc3986/host python-requests/host python-id/host python-keyring/host python-rich/host python-requests-toolbelt/host python-urllib3/host python-readme-renderer/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-twine
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Collection of utilities for publishing packages on PyPI
  URL:=https://twine.readthedocs.io/
  DEPENDS:= \
	+python3-light \
	+python3-readme-renderer  \
	+python3-requests  \
	+python3-requests-toolbelt  \
	+python3-urllib3  \
	+python3-keyring  \
	+python3-rfc3986  \
	+python3-rich  \
	+python3-packaging  \
	+python3-id
endef

define Package/python3-twine/description
Twine is a utility for publishing Python packages on PyPI.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-twine))
$(eval $(call BuildPackage,python3-twine))
$(eval $(call BuildPackage,python3-twine-src))
