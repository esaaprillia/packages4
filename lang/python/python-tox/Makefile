include $(TOPDIR)/rules.mk

PKG_NAME:=python-tox
PKG_VERSION:=4.23.2
PKG_RELEASE:=1

PYPI_NAME:=tox
PKG_HASH:=86075e00e555df6e82e74cfc333917f91ecb47ffbc868dcafbd2672e332f4a2c

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tox
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=tox is a generic virtualenv management and test command line tool
  URL:=http://pygments.org/
  DEPENDS:=+python3-light python3-tox
endef

define Package/python3-tox/description
tox aims to automate and standardize testing in Python. It is part of a larger vision of easing the packaging, testing and release process of Python software (alongside pytest and devpi).
tox is a generic virtual environment management and test command line tool you can use for:

• checking your package builds and installs correctly under different environments (such as different Python implementations, versions or installation dependencies),
• running your tests in each of the environments with the test tool of choice,
• acting as a frontend to continuous integration servers, greatly reducing boilerplate and merging CI and shell-based testing.
• Please read our user guide for an example and more detailed introduction, or watch this YouTube video that presents the problem space and how tox solves it.
endef

$(eval $(call Py3Package,python3-tox))
$(eval $(call BuildPackage,python3-tox))
$(eval $(call BuildPackage,python3-tox-src))
