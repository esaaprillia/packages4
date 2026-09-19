include $(TOPDIR)/rules.mk

PKG_NAME:=python-slack-sdk
PKG_VERSION:=3.44.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=slack_sdk
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-slack-sdk
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Slack Developer Kit for Python
  URL:=https://docs.slack.dev/tools/python-slack-sdk/
  DEPENDS:= \
	+python3
endef

define Package/python3-slack-sdk/description
The Slack platform offers several APIs to build apps. Each Slack API delivers part of the capabilities from the platform, so that you can pick just those that fit for your needs.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-slack-sdk))
$(eval $(call BuildPackage,python3-slack-sdk))
$(eval $(call BuildPackage,python3-slack-sdk-src))
