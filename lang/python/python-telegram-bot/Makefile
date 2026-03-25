include $(TOPDIR)/rules.mk

PKG_NAME:=python-telegram-bot
PKG_VERSION:=22.7
PKG_RELEASE:=1

PYPI_NAME:=python_telegram_bot
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0 LGPL-3.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-telegram-bot
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=We have made you a wrapper you can't refuse
  URL:=https://python-telegram-bot.org/
  DEPENDS:=+python3 +python3-httpx +python3-httpcore +python3-cachetools +python3-apscheduler +python3-cryptography +python3-cffi +python3-aiolimiter +python3-tornado
endef

define Package/python3-telegram-bot/description
This library provides a pure Python, asynchronous interface for the Telegram Bot API. It’s compatible with Python versions 3.9+.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-telegram-bot))
$(eval $(call BuildPackage,python3-telegram-bot))
$(eval $(call BuildPackage,python3-telegram-bot-src))
