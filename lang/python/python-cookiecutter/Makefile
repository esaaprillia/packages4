include $(TOPDIR)/rules.mk

PKG_NAME:=python-cookiecutter
PKG_VERSION:=2.7.1
PKG_RELEASE:=1

PYPI_NAME:=cookiecutter
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-cookiecutter
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A command-line utility that creates projects from project templates, e.g.
  URL:=https://github.com/cookiecutter/cookiecutter
  DEPENDS:= \
	+python3 \
	+python3-binaryornot \
	+python3-jinja2 \
	+python3-click \
	+python3-yaml \
	+python3-slugify \
	+python3-requests \
	+python3-arrow \
	+python3-rich
endef

define Package/python3-cookiecutter/description
Create projects swiftly from cookiecutters (project templates) with this command-line utility. Ideal for generating Python package projects and more.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-cookiecutter))
$(eval $(call BuildPackage,python3-cookiecutter))
$(eval $(call BuildPackage,python3-cookiecutter-src))
