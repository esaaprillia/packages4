include $(TOPDIR)/rules.mk

PKG_NAME:=python-home-assistant-intents
PKG_VERSION:=2025.1.1
PKG_RELEASE:=1

PYPI_NAME:=home_assistant_intents
PKG_HASH:=621aebe1e60fa4a0dde7e724a03815f73796b942ce97f8c1e8adc0baef18a9d2

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=CC-BY-4.0
PKG_LICENSE_FILES:=LICENSE.md

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-home-assistant-intents
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Intents to be used with Home Assistant
  URL:=https://developers.home-assistant.io/docs/voice/overview/
  DEPENDS:=+python3-light +python3-hassil +python3-yaml +python3-voluptuous +python3-regex +python3-jinja2 +python3-black +python3-flake8 +python3-isort +python3-mypy +python3-pylint +python3-pytest +python3-pytest-xdist
endef

define Package/python3-home-assistant-intents/description
This repository contains training data for Home Assistant's local voice control.
endef

$(eval $(call Py3Package,python3-home-assistant-intents))
$(eval $(call BuildPackage,python3-home-assistant-intents))
$(eval $(call BuildPackage,python3-home-assistant-intents-src))
