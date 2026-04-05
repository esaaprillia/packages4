include $(TOPDIR)/rules.mk

PKG_NAME:=python-jax
PKG_VERSION:=0.9.2
PKG_RELEASE:=1

PYPI_NAME:=jax
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jax
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Transformable numerical computing at scale
  URL:=https://github.com/jax-ml/jax
  DEPENDS:= \
	+python3 \
	+python3-jaxlib \
	+python3-ml-dtypes \
	+python3-numpy \
	+python3-opt-einsum \
	+python3-scipy
endef

define Package/python3-jax/description
JAX is a Python library for accelerator-oriented array computation and program transformation, designed for high-performance numerical computing and large-scale machine learning.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jax))
$(eval $(call BuildPackage,python3-jax))
$(eval $(call BuildPackage,python3-jax-src))
