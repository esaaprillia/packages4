include $(TOPDIR)/rules.mk

PKG_NAME:=python-httpx
PKG_VERSION:=0.27.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=httpx
PKG_HASH:=f7c2be1d2f3c3c3160d441802406b206c2b76f5947b11115e6df10c6c65e66c2

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-fancy-pypi-readme/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-httpx
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The next generation HTTP client.
  URL:=https://www.python-httpx.org/
  DEPENDS:=+python3-light +python3-certifi +python3-httpcore +python3-anyio +python3-idna +python3-sniffio +python3-brotli +python3-brotlicffi +python3-click +python3-pygments +python3-rich +python3-h2 +python3-socksio +python3-zstandard
endef

define Package/python3-httpx/description
HTTPX is a fully featured HTTP client library for Python 3. It includes an integrated command line client, has support for both HTTP/1.1 and HTTP/2, and provides both sync and async APIs.
endef

$(eval $(call Py3Package,python3-httpx))
$(eval $(call BuildPackage,python3-httpx))
$(eval $(call BuildPackage,python3-httpx-src))
