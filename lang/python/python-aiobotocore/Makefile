include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiobotocore
PKG_VERSION:=3.8.0
PKG_RELEASE:=1

PYPI_NAME:=aiobotocore
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-aiobotocore
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Async client for aws services using botocore and aiohttp
  URL:=https://aiobotocore.aio-libs.org/
  DEPENDS:=+python3-light +python3-aiohttp +python3-aioitertools +python3-botocore +python3-dateutil +python3-jmespath +python3-multidict +python3-wrapt +python3-awscli +python3-boto3 +python3-httpx
endef

define Package/python3-aiobotocore/description
Async client for amazon services using botocore and aiohttp/asyncio.
This library is a mostly full featured asynchronous version of botocore.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-aiobotocore))
$(eval $(call BuildPackage,python3-aiobotocore))
$(eval $(call BuildPackage,python3-aiobotocore-src))
