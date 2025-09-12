include $(TOPDIR)/rules.mk

PKG_NAME:=python-coherent-licensed
PKG_VERSION:=0.5.2
PKG_RELEASE:=1

PYPI_NAME:=coherent_licensed
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-coherent-build/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-coherent-licensed
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=License management tooling for Coherent System and skeleton projects
  URL:=https://github.com/coherent-oss/coherent.licensed
  DEPENDS:=+python3
endef

define Package/python3-coherent-licensed/description
  This library was built for coherent.build and skeleton projects to inject a license file at build time to reflect the license declared in the License Expression.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-coherent-licensed))
$(eval $(call BuildPackage,python3-coherent-licensed))
$(eval $(call BuildPackage,python3-coherent-licensed-src))
