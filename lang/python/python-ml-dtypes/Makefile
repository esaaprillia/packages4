include $(TOPDIR)/rules.mk

PKG_NAME:=python-ml-dtypes
PKG_VERSION:=0.6.0
PKG_RELEASE:=1

PYPI_NAME:=ml_dtypes
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0 MPL-2.0
PKG_LICENSE_FILES:=LICENSE LICENSE.eigen

PKG_BUILD_DEPENDS:=numpy/host python-absl-py/host python-scikit-build-core/host
HOST_BUILD_DEPENDS:=numpy/host python-absl-py/host python-scikit-build-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ml-dtypes
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A stand-alone implementation of several NumPy dtype extensions used in machine learning.
  URL:=https://github.com/jax-ml/ml_dtypes
  DEPENDS:= \
	+python3-light \
	+python3-numpy
endef

define Package/python3-ml-dtypes/description
A stand-alone implementation of several NumPy dtype extensions used in machine learning.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ml-dtypes))
$(eval $(call BuildPackage,python3-ml-dtypes))
$(eval $(call BuildPackage,python3-ml-dtypes-src))
