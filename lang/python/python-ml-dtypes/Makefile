include $(TOPDIR)/rules.mk

PKG_NAME:=python-ml-dtypes
PKG_VERSION:=0.5.2
PKG_RELEASE:=1

PYPI_NAME:=ml_dtypes
PKG_SOURCE_URL:=https://github.com/jax-ml/ml_dtypes/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE LICENSE.eigen

PKG_BUILD_DEPENDS:=numpy/host python-absl-py/host eigen
HOST_BUILD_DEPENDS:=numpy/host python-absl-py/host eigen/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ml-dtypes
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A stand-alone implementation of several NumPy dtype extensions used in machine learning.
  URL:=https://github.com/jax-ml/ml_dtypes
  DEPENDS:=+python3 +python3-numpy
endef

define Package/python3-ml-dtypes/description
ml_dtypes is a stand-alone implementation of several NumPy dtype extensions used in machine learning libraries, including
endef

$(eval $(call Py3Package,python3-ml-dtypes))
$(eval $(call BuildPackage,python3-ml-dtypes))
$(eval $(call BuildPackage,python3-ml-dtypes-src))
$(eval $(call HostBuild))
