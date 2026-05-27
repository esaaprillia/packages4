include $(TOPDIR)/rules.mk

PKG_NAME:=python-meshtastic
PKG_VERSION:=2.7.8
PKG_RELEASE:=1

PYPI_NAME:=meshtastic
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE.md

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-meshtastic
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python API & client shell for talking to Meshtastic devices
  URL:=https://meshtastic.org/
  DEPENDS:=+python3 +python3-pyserial +python3-protobuf +python3-tabulate +python3-requests +python3-yaml +python3-pypubsub +python3-bleak +python3-packaging +python3-argcomplete +python3-pyqrcode +python3-dotmap +python3-print-color +python3-dash +python3-pytap2 +python3-dash-bootstrap-components +python3-pandas +python3-pandas-stubs +python3-wcwidth
endef

define Package/python3-meshtastic/description
  This small library (and example application) provides an easy API for sending and receiving messages over mesh radios. It also provides access to any of the operations/data available in the device user interface or the Android application. Events are delivered using a publish-subscribe model, and you can subscribe to only the message types you are interested in.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-meshtastic))
$(eval $(call BuildPackage,python3-meshtastic))
$(eval $(call BuildPackage,python3-meshtastic-src))
