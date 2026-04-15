include $(TOPDIR)/rules.mk

PKG_NAME:=python-mitmproxy-rs
PKG_VERSION:=0.12.9
PKG_RELEASE:=1

PYPI_NAME:=mitmproxy_rs
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host
HOST_BUILD_DEPENDS:=python-maturin/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-mitmproxy-rs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The Rust bits in mitmproxy.
  URL:=https://github.com/mitmproxy/mitmproxy_rs
  DEPENDS:=+python3 +python3-mitmproxy-linux $(RUST_ARCH_DEPENDS)
endef

define Package/python3-mitmproxy-rs/description
This repository contains mitmproxy's Rust bits, most notably:
WireGuard Mode: The ability to proxy any device that can be configured as a WireGuard client.
Local Redirect Mode: The ability to proxy arbitrary macOS or Windows applications by name or pid.
endef

$(eval $(call Py3Package,python3-mitmproxy-rs))
$(eval $(call BuildPackage,python3-mitmproxy-rs))
$(eval $(call BuildPackage,python3-mitmproxy-rs-src))
$(eval $(call HostBuild))
