include $(TOPDIR)/rules.mk

PKG_NAME:=python-tqdm
PKG_VERSION:=4.67.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MPL-2.0 MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=tqdm
PKG_HASH:=f8aef9c52c08c13a65f30ea34f4e5aac3fd1a34959879d7e59e63027286627f2

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tqdm
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast, Extensible Progress Meter
  URL:=https://tqdm.github.io/
  DEPENDS:=+python3 +python3-colorama
endef

define Package/python3-tqdm/description
tqdm derives from the Arabic word taqaddum (تقدّم) which can mean progress, and is an abbreviation for I love you so much in Spanish (te quiero demasiado).
Instantly make your loops show a smart progress meter - just wrap any iterable with tqdm(iterable), and you’re done!
endef

$(eval $(call Py3Package,python3-tqdm))
$(eval $(call BuildPackage,python3-tqdm))
$(eval $(call BuildPackage,python3-tqdm-src))
