include $(TOPDIR)/rules.mk

PKG_NAME:=python-apprise
PKG_VERSION:=1.9.9
PKG_RELEASE:=1

PYPI_NAME:=apprise
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-babel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-apprise
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Push Notifications that work with just about every platform!
  URL:=https://appriseit.com/
  DEPENDS:= \
	+python3-light \
	+python3-requests \
	+python3-requests-oauthlib \
	+python3-click \
	+python3-markdown \
	+python3-yaml \
	+python3-certifi
endef

define Package/python3-apprise/description
Apprise allows you to send a notification to almost all of the most popular notification services available to us today such as: Telegram, Discord, Slack, Amazon SNS, Gotify, etc.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-apprise))
$(eval $(call BuildPackage,python3-apprise))
$(eval $(call BuildPackage,python3-apprise-src))
