include $(TOPDIR)/rules.mk

PKG_NAME:=python-tuf
PKG_VERSION:=5.1.0
PKG_RELEASE:=1

PYPI_NAME:=tuf
PKG_HASH:=1865737bf8e05893ae31b4511617da7f02cf070562fa3c931074d29ef5fb46d7

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-tuf
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A secure updater framework for Python
  URL:=https://theupdateframework.com/
  DEPENDS:=+python3 +python3-requests +python3-securesystemslib
endef

define Package/python3-tuf/description
The Update Framework (TUF) is a framework for secure content delivery and updates. It protects against various types of supply chain attacks and provides resilience to compromise. This repository is a reference implementation written in Python. It is intended to conform to version 1.0 of the TUF specification.
Python-TUF provides the following APIs:

• tuf.api.metadata, a "low-level" API, designed to provide easy and safe access to TUF metadata and to handle (de)serialization from/to files.
• tuf.ngclient, a client implementation built on top of the metadata API.
• tuf.repository, a repository library also built on top of the metadata API. This module is currently not considered part of python-tuf stable API.
The reference implementation strives to be a readable guide and demonstration for those working on implementing TUF in their own languages, environments, or update systems.
endef

$(eval $(call Py3Package,python3-tuf))
$(eval $(call BuildPackage,python3-tuf))
$(eval $(call BuildPackage,python3-tuf-src))
