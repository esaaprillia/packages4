include $(TOPDIR)/rules.mk

PKG_NAME:=python-dill
PKG_VERSION:=0.3.9
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=dill
PKG_HASH:=81aa267dddf68cbfe8029c42ca9ec6a4ab3b22371d1c450abc54422577b4512c

PKG_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-dill
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=serialize all of Python
  URL:=http://dill.rtfd.io/
  DEPENDS:=+python3 +python3-objgraph
endef

define Package/python3-dill/description
dill extends Python’s pickle module for serializing and de-serializing Python objects to the majority of the built-in Python types. Serialization is the process of converting an object to a byte stream, and the inverse of which is converting a byte stream back to a Python object hierarchy.
dill provides the user the same interface as the pickle module, and also includes some additional features. In addition to pickling Python objects, dill provides the ability to save the state of an interpreter session in a single command. Hence, it would be feasible to save an interpreter session, close the interpreter, ship the pickled file to another computer, open a new interpreter, unpickle the session and thus continue from the ‘saved’ state of the original interpreter session.
dill can be used to store Python objects to a file, but the primary usage is to send Python objects across the network as a byte stream. dill is quite flexible, and allows arbitrary user defined classes and functions to be serialized. Thus dill is not intended to be secure against erroneously or maliciously constructed data. It is left to the user to decide whether the data they unpickle is from a trustworthy source.
dill is part of pathos, a Python framework for heterogeneous computing. dill is in active development, so any user feedback, bug reports, comments, or suggestions are highly appreciated. A list of issues is located at https://github.com/uqfoundation/dill/issues, with a legacy list maintained at https://uqfoundation.github.io/project/pathos/query.
endef

$(eval $(call Py3Package,python3-dill))
$(eval $(call BuildPackage,python3-dill))
$(eval $(call BuildPackage,python3-dill-src))
