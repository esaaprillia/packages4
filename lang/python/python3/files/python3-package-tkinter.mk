#
# Copyright (C) 2021 Alexandru Ardelean <ardeleanalex@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python3-tkinter
$(call Package/python3/Default)
  TITLE+= tkinter module
  DEPENDS:=+python3-light +tcl +tk
endef

define Package/python3-tkinter/description
$(call Package/python3/Default/description)

This package contains the tkinter module.
endef

$(eval $(call Py3BasePackage,python3-tkinter, \
	/usr/lib/python$(PYTHON3_VERSION)/tkinter \
	/usr/lib/python$(PYTHON3_VERSION)/lib-dynload/_tkinter.$(PYTHON3_SO_SUFFIX) \
))
