include $(TOPDIR)/rules.mk

PKG_NAME:=python-httpcore
PKG_VERSION:=1.0.7
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=httpcore
PKG_HASH:=8551cb62a169ec7162ac7be8d4817d561f60e08eaa485234898414bb5a8a0b4c

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host python-hatch-fancy-pypi-readme/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-httpcore
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A minimal low-level HTTP client.
  URL:=https://www.encode.io/httpcore/
  DEPENDS:=+python3 +python3-anyio +python3-certifi +python3-h11 +python3-sniffio
endef

define Package/python3-httpcore/description
The HTTP Core package provides a minimal low-level HTTP client, which does one thing only. Sending HTTP requests.

It does not provide any high level model abstractions over the API, does not handle redirects, multipart uploads, building authentication headers, transparent HTTP caching, URL parsing, session cookie handling, content or charset decoding, handling JSON, environment based configuration defaults, or any of that Jazz.

Some things HTTP Core does do:

• Sending HTTP requests.
• Thread-safe / task-safe connection pooling.
• HTTP(S) proxy & SOCKS proxy support.
• Supports HTTP/1.1 and HTTP/2.
• Provides both sync and async interfaces.
• Async backend support for asyncio and trio.
endef

$(eval $(call Py3Package,python3-httpcore))
$(eval $(call BuildPackage,python3-httpcore))
$(eval $(call BuildPackage,python3-httpcore-src))
