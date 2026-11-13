include $(TOPDIR)/rules.mk

PKG_NAME:=python-sbom
PKG_VERSION:=0.3.1
PKG_RELEASE:=1

PYPI_NAME:=python_sbom
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatch-fancy-pypi-readme/host python-hatchling/host python-hatch-vcs/host python-packageurl/host python-zipremove/host
HOST_BUILD_DEPENDS:=python-hatch-fancy-pypi-readme/host python-hatchling/host python-hatch-vcs/host python-packageurl/host python-zipremove/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sbom
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Software bills of materials (SBOMs) for Python distributions.
  URL:=https://github.com/tox-dev/python-sbom
  DEPENDS:=+python3-light
endef

define Package/python3-sbom/description
SBOMs for Python distributions: write PEP 770 CycloneDX SBOMs into wheels.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sbom))
$(eval $(call BuildPackage,python3-sbom))
$(eval $(call BuildPackage,python3-sbom-src))
