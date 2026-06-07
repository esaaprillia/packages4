include $(TOPDIR)/rules.mk

PKG_NAME:=python-hatch
PKG_VERSION:=1.17.0
PKG_RELEASE:=1

PYPI_NAME:=hatch
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PKG_HOST_ONLY:=1
HOST_BUILD_DEPENDS:= \
	python3/host \
	python-hatchling/host \
	python-hatch-vcs/host \
	python-click/host \
	python-httpx/host \
	python-hyperlink/host \
	python-keyring/host \
	python-packaging/host \
	python-pexpect/host \
	python-platformdirs/host \
	python-rich/host \
	python-shellingham/host \
	python-tomli-w/host \
	python-tomlkit/host \
	python-userpath/host \
	python-uv/host \
	python-virtualenv/host \
	python-zstandard/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-hatch
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Modern, extensible Python project management
  URL:=https://github.com/pypa/hatch
  DEPENDS:=+python3
  BUILDONLY:=1
endef

define Package/python3-hatch/description
Hatch is a modern, extensible Python project manager.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-hatch))
$(eval $(call BuildPackage,python3-hatch))
$(eval $(call BuildPackage,python3-hatch-src))
