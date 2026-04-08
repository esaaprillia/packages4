include $(TOPDIR)/rules.mk

PKG_NAME:=python-ipython
PKG_VERSION:=9.12.0
PKG_RELEASE:=1

PYPI_NAME:=ipython
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:= \
	python3/host \
	python-decorator/host \
	python-ipython-pygments-lexers/host \
	python-jedi/host \
	python-matplotlib-inline/host \
	python-prompt-toolkit/host \
	python-pygments/host \
	python-stack-data/host \
	python-traitlets/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ipython
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=IPython: Productive Interactive Computing
  URL:=https://ipython.readthedocs.org/
  DEPENDS:= \
	+python3 \
	+python3-decorator \
	+python3-ipython-pygments-lexers \
	+python3-jedi \
	+python3-matplotlib-inline \
	+python3-prompt-toolkit \
	+python3-pygments \
	+python3-stack-data \
	+python3-traitlets
endef

define Package/python3-ipython/description
  IPython provides a rich toolkit to help you make the most out of using Python interactively.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ipython))
$(eval $(call BuildPackage,python3-ipython))
$(eval $(call BuildPackage,python3-ipython-src))
