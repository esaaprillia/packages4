include $(TOPDIR)/rules.mk

PKG_NAME:=python-versioningit
PKG_VERSION:=3.1.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=versioningit
PKG_HASH:=4db83ed99f56b07d83940bee3445ca46ca120d13b6b304cdb5fb44e5aa4edec0

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-versioningit
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Versioning It with your Version In Git
  URL:=https://github.com/jwodder/versioningit
  DEPENDS:=+python3 +python3-packaging
endef

define Package/python3-versioningit/description
versioningit — Versioning It with your Version In Git

versioningit is yet another Python packaging plugin for automatically determining your package’s version based on your version control repository’s tags. Unlike others, it allows easy customization of the version format and even lets you easily override the separate functions used for version extraction & calculation.

Features:

• Works with both setuptools and Hatch

• Installed & configured through PEP 518’s pyproject.toml

• Supports Git, modern Git archives, and Mercurial

• Formatting of the final version uses format template strings, with fields for basic VCS information and separate template strings for distanced vs. dirty vs. distanced-and-dirty repository states

• Can optionally write the final version and other details to a file for loading at runtime

• Provides custom hooks for inserting the final version and other details into a source file at build time

• The individual methods for VCS querying, tag-to-version calculation, version bumping, version formatting, and writing the version to a file can all be customized using either functions defined alongside one’s project code or via publicly-distributed entry points

• Can alternatively be used as a library for use in setup.py or the like, in case you don’t want to or can’t configure it via pyproject.toml

• The only thing it does is calculate your version and optionally write it to a file; there’s no overriding of your sdist contents based on what’s in your Git repository, especially not without a way to turn it off, because that would just be rude.
endef

$(eval $(call Py3Package,python3-versioningit))
$(eval $(call BuildPackage,python3-versioningit))
$(eval $(call BuildPackage,python3-versioningit-src))
