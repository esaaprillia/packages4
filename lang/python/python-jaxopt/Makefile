include $(TOPDIR)/rules.mk

PKG_NAME:=python-jaxopt
PKG_VERSION:=0.8.5
PKG_RELEASE:=1

PYPI_NAME:=jaxopt
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.txt

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jaxopt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=JAXopt
  URL:=https://github.com/google/jaxopt
  DEPENDS:= \
	+python3 \
	+python3-jax \
	+python3-jaxlib \
	+python3-numpy \
	+python3-scipy
endef

define Package/python3-jaxopt/description
Hardware accelerated, batchable and differentiable optimizers in JAX.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jaxopt))
$(eval $(call BuildPackage,python3-jaxopt))
$(eval $(call BuildPackage,python3-jaxopt-src))
