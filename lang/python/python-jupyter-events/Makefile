include $(TOPDIR)/rules.mk

PKG_NAME:=python-jupyter-events
PKG_VERSION:=0.12.0
PKG_RELEASE:=1

PYPI_NAME:=jupyter_events
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-hatchling/host
HOST_BUILD_DEPENDS:= \
	python3/host \
	python-hatchling/host \
	python-referencing/host \
	python-jsonschema/host \
	python-fqdn/host \
	python-idna/host \
	python-isoduration/host \
	python-jsonpointer/host \
	python-rfc3987-syntax/host \
	python-uri-template/host \
	python-webcolors/host \
	python-json-logger/host \
	python-yaml/host \
	python-traitlets/host \
	python-packaging/host \
	python-rfc3339-validator/host \
	python-rfc3986-validator/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-jupyter-events
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Jupyter Event System library
  URL:=https://jupyter-events.readthedocs.io
  DEPENDS:= \
	+python3 \
	+python3-referencing \
	+python3-jsonschema \
	+python3-fqdn \
	+python3-idna \
	+python3-isoduration \
	+python3-jsonpointer \
	+python3-rfc3987-syntax \
	+python3-uri-template \
	+python3-webcolors \
	+python3-json-logger \
	+python3-yaml \
	+python3-traitlets \
	+python3-packaging \
	+python3-rfc3339-validator \
	+python3-rfc3986-validator
endef

define Package/python3-jupyter-events/description
Jupyter Events enables Jupyter Python Applications (e.g. Jupyter Server, JupyterLab Server, JupyterHub, etc.) to emit events—structured data describing things happening inside the application. Other software (e.g. client applications like JupyterLab) can listen and respond to these events.
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-jupyter-events))
$(eval $(call BuildPackage,python3-jupyter-events))
$(eval $(call BuildPackage,python3-jupyter-events-src))
