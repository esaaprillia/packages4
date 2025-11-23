include $(TOPDIR)/rules.mk

PKG_NAME:=python-slixmpp
PKG_VERSION:=1.12.0
PKG_RELEASE:=1

PYPI_NAME:=slixmpp
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-slixmpp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Slixmpp is an elegant Python library for XMPP (aka Jabber).
  URL:=https://codeberg.org/poezio/slixmpp
  DEPENDS:=+python3 +python3-aiodns +python3-pyasn1 +python3-pyasn1-modules +python3-aiohttp +python3-emoji +python3-cryptography +python3-defusedxml $(RUST_ARCH_DEPENDS)
endef

define Package/python3-slixmpp/description
Slixmpp is an MIT licensed XMPP library for Python 3.7+. It is a fork of SleekXMPP.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-slixmpp))
$(eval $(call BuildPackage,python3-slixmpp))
$(eval $(call BuildPackage,python3-slixmpp-src))
