include $(TOPDIR)/rules.mk

PKG_NAME:=python-mitmproxy-linux
PKG_VERSION:=0.12.9
PKG_RELEASE:=1

PYPI_NAME:=mitmproxy_linux
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-maturin/host bpf-linker/host rustup/host
HOST_BUILD_DEPENDS:=python-maturin/host bpf-linker/host rustup/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-mitmproxy-linux
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=mitmproxy-linux
  URL:=https://github.com/mitmproxy/mitmproxy_rs
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-mitmproxy-linux/description
mitmproxy-linux-redirector: A Rust executable that redirects traffic to mitmproxy via eBPF.
endef

$(eval $(call Py3Package,python3-mitmproxy-linux))
$(eval $(call BuildPackage,python3-mitmproxy-linux))
$(eval $(call BuildPackage,python3-mitmproxy-linux-src))
$(eval $(call HostBuild))
