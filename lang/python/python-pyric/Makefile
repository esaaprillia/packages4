include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyric
PKG_VERSION:=0.1.6.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=PyRIC
PKG_HASH:=b539b01cafebd2406c00097f94525ea0f8ecd1dd92f7731f43eac0ef16c2ccc9

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pyric
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Wireless Library
  URL:=http://wraith-wireless.github.io/PyRIC
  DEPENDS:=+python3 +python3-twisted
endef

define Package/python3-pyric/description
PyRIC (is a Linux only) library providing wireless developers and pentesters the ability to identify, enumerate and manipulate their system's wireless cards programmatically in Python. Pentesting applications and scripts written in Python have increased dramatically in recent years. However, these tools still rely on Linux command lines tools to setup and prepare and restore the system for use. Until now. Why use subprocess.Popen, regular expressions and str.find to interact with your wireless cards? PyRIC is:

1. Pythonic: no ctypes, SWIG etc. PyRIC redefines C header files as Python and uses sockets to communicate with the kernel.
2. Self-sufficient: No third-party files used. PyRIC is completely self-contained.
3. Fast: (relatively speaking) PyRIC is faster than using command line tools through subprocess.Popen
4. Parseless: Get the output you want without parsing output from command line tools. Never worry about newer iw versions and having to rewrite your parsers.
5. Easy: If you can use iw, you can use PyRIC.

At it's heart, PyRIC is a Python port of (a subset of) iw and by extension, a Python port of Netlink w.r.t nl80211 functionality. The original goal of PyRIC was to provide a simple interface to the underlying nl80211 kernel support, handling the complex operations of Netlink seamlessy while maintaining a minimum of "code walking" to understand, modify and extend. But, why stop there? Since it's initial inception, PyRIC has grown. PyRIC puts iw, ifconfig, rfkill, udevadm, airmon-ng and macchanger in your hands (or your program).
endef

PYTHON3_PKG_WHEEL_NAME:=PyRIC
PYTHON3_PKG_WHEEL_VERSION:=0.1.6.3

$(eval $(call Py3Package,python3-pyric))
$(eval $(call BuildPackage,python3-pyric))
$(eval $(call BuildPackage,python3-pyric-src))
