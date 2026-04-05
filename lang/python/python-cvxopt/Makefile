include $(TOPDIR)/rules.mk

PKG_NAME:=python-cvxopt
PKG_VERSION:=1.3.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=cvxopt
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-cvxopt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Convex optimization package
  URL:=https://cvxopt.org/
  DEPENDS:= \
	+python3 \
	+openblas \
	+suitesparse
endef

define Package/python3-cvxopt/description
Python Software for Convex Optimization
endef

PYTHON3_HOST_BUILD_VARS += \
	CVXOPT_BUILD_DSDP=0 \
	CVXOPT_BUILD_FFTW=0 \
	CVXOPT_BUILD_GLPK=0 \
	CVXOPT_BUILD_GSL=0 \
	CVXOPT_BLAS_LIB_DIR="$(STAGING_DIR)/usr/lib" \
	CVXOPT_SUITESPARSE_LIB_DIR="$(STAGING_DIR)/usr/lib" \
	CVXOPT_SUITESPARSE_INC_DIR="$(STAGING_DIR)/usr/include/suitesparse"

$(eval $(call Py3Package,python3-cvxopt))
$(eval $(call BuildPackage,python3-cvxopt))
$(eval $(call BuildPackage,python3-cvxopt-src))
