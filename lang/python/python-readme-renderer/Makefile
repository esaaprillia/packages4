include $(TOPDIR)/rules.mk

PKG_NAME:=python-readme-renderer
PKG_VERSION:=44.0
PKG_RELEASE:=1

PYPI_NAME:=readme_renderer
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-docutils/host python-nh3/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-readme-renderer
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=readme_renderer is a library for rendering readme descriptions for Warehouse
  URL:=https://github.com/pypa/readme_renderer
  DEPENDS:=+python3 +python3-nh3 +python3-docutils +python3-pygments
endef

define Package/python3-readme-renderer/description
Readme Renderer is a library that will safely render arbitrary README files into HTML. It is designed to be used in Warehouse to render the long_description for packages. It can handle Markdown, reStructuredText (.rst), and plain text.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-readme-renderer))
$(eval $(call BuildPackage,python3-readme-renderer))
$(eval $(call BuildPackage,python3-readme-renderer-src))
