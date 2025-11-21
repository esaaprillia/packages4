include $(TOPDIR)/rules.mk

PKG_NAME:=python-pendulum
PKG_VERSION:=3.1.0
PKG_RELEASE:=1

PYPI_NAME:=pendulum
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-pendulum
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python datetimes made easy
  URL:=https://pendulum.eustace.io/
  DEPENDS:=+python3 +python3-dateutil +python3-tzdata $(RUST_ARCH_DEPENDS)
endef

define Package/python3-pendulum/description
Python datetimes made easy
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-pendulum))
$(eval $(call BuildPackage,python3-pendulum))
$(eval $(call BuildPackage,python3-pendulum-src))
