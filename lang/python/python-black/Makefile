include $(TOPDIR)/rules.mk

PKG_NAME:=python-black
PKG_VERSION:=24.10.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=black
PKG_HASH:=846ea64c97afe3bc677b761787993be4991810ecc7a4a937816dd6bddedc4875

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatch-fancy-pypi-readme/host python-hatch-vcs/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-black
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The uncompromising code formatter.
  URL:=https://black.readthedocs.io/en/stable/
  DEPENDS:=+python3 +python3-click +python3-mypy-extensions +python3-packaging +python3-pathspec +python3-platformdirs +python3-aiohttp +python3-colorama +python3-tokenize-rt
endef

define Package/python3-black/description
Black is the uncompromising Python code formatter. By using it, you agree to cede control over minutiae of hand-formatting. In return, Black gives you speed, determinism, and freedom from pycodestyle nagging about formatting. You will save time and mental energy for more important matters.
Blackened code looks the same regardless of the project you're reading. Formatting becomes transparent after a while and you can focus on the content instead.
Black makes code review faster by producing the smallest diffs possible.
Try it out now using the Black Playground. Watch the PyCon 2019 talk to learn more.
endef

$(eval $(call Py3Package,python3-black))
$(eval $(call BuildPackage,python3-black))
$(eval $(call BuildPackage,python3-black-src))
