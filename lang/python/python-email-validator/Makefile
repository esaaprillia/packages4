include $(TOPDIR)/rules.mk

PKG_NAME:=python-email-validator
PKG_VERSION:=2.3.0
PKG_RELEASE:=1

PYPI_NAME:=email_validator
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Unlicense
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-email-validator
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A robust email address syntax and deliverability validation library.
  URL:=https://github.com/JoshData/python-email-validator
  DEPENDS:=+python3 +python3-dnspython +python3-idna
endef

define Package/python3-email-validator/description
This library validates that a string is of the form name@example.com and optionally checks that the domain name is set up to receive email.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-email-validator))
$(eval $(call BuildPackage,python3-email-validator))
$(eval $(call BuildPackage,python3-email-validator-src))
