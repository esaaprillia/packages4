include $(TOPDIR)/rules.mk

PKG_NAME:=python-sigstore
PKG_VERSION:=4.1.0
PKG_RELEASE:=1

PYPI_NAME:=sigstore
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-flit-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-sigstore
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A tool for signing Python package distributions
  URL:=https://sigstore.github.io/sigstore-python/
  DEPENDS:= \
	+python3 \
	+python3-cryptography \
	+python3-id \
	+python3-pyasn1 \
	+python3-pydantic \
	+python3-pyjwt \
	+python3-pyopenssl \
	+python3-requests \
	+python3-rich \
	+python3-rfc8785 \
	+python3-rfc3161-client \
	+python3-sigstore-models \
	+python3-sigstore-rekor-types \
	+python3-tuf \
	+python3-platformdirs
endef

define Package/python3-sigstore/description
sigstore is a Python tool for generating and verifying Sigstore signatures. You can use it to sign and verify Python package distributions, or anything else!
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-sigstore))
$(eval $(call BuildPackage,python3-sigstore))
$(eval $(call BuildPackage,python3-sigstore-src))
