include $(TOPDIR)/rules.mk

PKG_NAME:=python-mongo-tooling-metrics
PKG_VERSION:=1.0.8
PKG_RELEASE:=1

PYPI_NAME:=mongo_tooling_metrics
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=
PKG_LICENSE_FILES:=

HOST_BUILD_DEPENDS:= \
	python-poetry-core/host \
	python-distro/host \
	python-pydantic/host \
	python-pymongo-auth-aws/host \
	python-pymongo/host \
	python-gitpython/host \
	python-setuptools/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-mongo-tooling-metrics
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A slim library which leverages Pydantic to reliably collect type enforced metrics and store them to MongoDB.
  URL:=https://pypi.org/project/mongo-tooling-metrics/
  DEPENDS:= \
	+python3 \
	+python3-distro \
	+python3-pydantic \
	+python3-pymongo-auth-aws \
	+python3-pymongo \
	+python3-gitpython \
	+python3-setuptools
endef

define Package/python3-mongo-tooling-metrics/description
A slim library which leverages Pydantic to reliably collect type enforced metrics and store them to MongoDB.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-mongo-tooling-metrics))
$(eval $(call BuildPackage,python3-mongo-tooling-metrics))
$(eval $(call BuildPackage,python3-mongo-tooling-metrics-src))
