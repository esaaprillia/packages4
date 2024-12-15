# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-cryptodomex
PKG_VERSION:=3.21.0
PKG_RELEASE:=1

PYPI_NAME:=pycryptodomex
PKG_HASH:=222d0bd05381dd25c32dd6065c071ebf084212ab79bab4599ba9e6a3e0009e6c

PKG_LICENSE:=Public-Domain BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE.rst
PKG_MAINTAINER:=Richard Yu <yurichard3839@gmail.com>
PKG_CPE_ID:=cpe:/a:pycryptodome:pycryptodomex

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PYTHON3_PKG_BUILD_VARS:= \
  CONFIG_BIG_ENDIAN="$(CONFIG_BIG_ENDIAN)"

define Package/python3-cryptodomex
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Self-contained cryptographic library
  URL:=https://www.pycryptodome.org/
  DEPENDS:=+libgmp +python3-light +python3-cffi
endef

define Package/python3-cryptodomex/description
PyCryptodome is a self-contained Python package of low-level
cryptographic primitives.
endef

$(eval $(call Py3Package,python3-cryptodomex))
$(eval $(call BuildPackage,python3-cryptodomex))
$(eval $(call BuildPackage,python3-cryptodomex-src))
