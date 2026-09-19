include $(TOPDIR)/rules.mk

PKG_NAME:=python-slack-bolt
PKG_VERSION:=1.30.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=slack_bolt
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-slack-bolt
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A framework to build Slack apps using Python
  URL:=https://docs.slack.dev/tools/bolt-python/
  DEPENDS:= \
	+python3 \
	+python3-slack-sdk
endef

define Package/python3-slack-bolt/description
A Python framework to build Slack apps in a flash with the latest platform features.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-slack-bolt))
$(eval $(call BuildPackage,python3-slack-bolt))
$(eval $(call BuildPackage,python3-slack-bolt-src))
