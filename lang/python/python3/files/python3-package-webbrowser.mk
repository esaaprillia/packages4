#
# Copyright (C) 2006-2016 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python3-webbrowser
$(call Package/python3/Default)
  TITLE+= Python web-browser controller
  DEPENDS:=+python3-light
endef

define Package/python3-webbrowser/description
$(call Package/python3/Default/description)

Convenient web-browser controller
endef

$(eval $(call Py3BasePackage,python3-webbrowser, \
	/usr/lib/python$(PYTHON3_VERSION)/webbrowser.py \
))
