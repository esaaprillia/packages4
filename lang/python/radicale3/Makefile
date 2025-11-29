# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=radicale3
PKG_VERSION:=3.5.8
PKG_RELEASE:=1

PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=COPYING
PKG_CPE_ID:=cpe:/a:radicale:radicale

PYPI_NAME:=radicale
PKG_HASH:=skip

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/radicale3/Default
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Web Servers/Proxies
  URL:=https://radicale.org/
  TITLE:=Radicale 3.x CalDAV/CardDAV server
endef

define Package/radicale3
$(call Package/radicale3/Default)
  USERID:=radicale3=225:radicale3=225
  DEPENDS:=+python3 +python3-dateutil +python3-defusedxml +python3-passlib +python3-vobject +python3-pika +python3-requests +python3-pytest +python3-waitress +python3-bcrypt +python3-argon2-cffi +python3-ldap3 +python3-setuptools
  CONFLICTS:=radicale radicale2
endef

define Package/radicale3-examples
$(call Package/radicale3/Default)
  TITLE:=Radicale v3 example configs
endef

define Package/radicale3-meta/description
The Radicale Project is a CalDAV (calendar) and CardDAV (contact) server. It aims to be a light solution, easy to use, easy to install, easy to configure. As a consequence, it requires few software dependances and is pre-configured to work out-of-the-box.

The Radicale Project runs on most of the UNIX-like platforms (Linux, BSD, MacOS X) and Windows. It is known to work with Evolution, Lightning, iPhone and Android clients. It is free and open-source software, released under GPL version 3.
endef

define Package/radicale3/description
$(call Package/radicale3-meta/description)

This package contains the python files.

Note that md5 encryption of passwords requires passlib, and
bcrypt encryption requires passlib + bcrypt.  These are not
added as hard dependencies as users may be running radicale3
with a web server doing the authentication instead of radicale3.

endef

define Package/radicale3-examples/description
$(call Package/radicale3-meta/description)
.
This package contains upstream configs for example purposes.
endef

define Package/radicale3/conffiles
/etc/config/radicale3
/etc/radicale3/config
/etc/radicale3/users
/etc/radicale3/rights
/etc/radicale3/logging
endef

define Py3Package/radicale3/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/radicale $(1)/usr/bin/radicale3
	$(INSTALL_DIR) $(1)/etc/config $(1)/etc/init.d
	$(INSTALL_CONF) ./files/radicale3.config $(1)/etc/config/radicale3
	$(INSTALL_BIN) ./files/radicale3.init $(1)/etc/init.d/radicale3
endef

define Package/radicale3-examples/install
	$(INSTALL_DIR) $(1)/usr/share/radicale3
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/config $(1)/usr/share/radicale3/config.example
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/rights $(1)/usr/share/radicale3/rights.example
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/logging $(1)/usr/share/radicale3/logging.example
endef

$(eval $(call Py3Package,radicale3))
$(eval $(call BuildPackage,radicale3))
$(eval $(call BuildPackage,radicale3-src))
$(eval $(call BuildPackage,radicale3-examples))
