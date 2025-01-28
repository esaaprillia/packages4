include $(TOPDIR)/rules.mk

PKG_NAME:=python-construct
PKG_VERSION:=2.10.70
PKG_RELEASE:=1

PYPI_NAME:=construct
PKG_HASH:=4d2472f9684731e58cc9c56c463be63baa1447d674e0d66aeb5627b22f512c29

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-construct
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A powerful declarative symmetric parser/builder for binary data
  URL:=https://github.com/construct/construct
  DEPENDS:=+python3 +python3-numpy +python3-arrow +python3-ruamel-yaml +python3-cloudpickle +python3-lz4 +python3-cryptography
endef

define Package/python3-construct/description
Construct is a powerful declarative and symmetrical parser and builder for binary data.
endef

$(eval $(call Py3Package,python3-construct))
$(eval $(call BuildPackage,python3-construct))
$(eval $(call BuildPackage,python3-construct-src))
