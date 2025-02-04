include $(TOPDIR)/rules.mk

PKG_NAME:=python-pulp
PKG_VERSION:=2.9.0
PKG_RELEASE:=1

PYPI_NAME:=pulp
PKG_HASH:=2e30e6c0ef2c0edac185220e3e53faca62eb786a9bd68465208f05bc63e850f3

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pulp
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A python Linear Programming API
  URL:=http://coin-or.github.io/pulp/
  DEPENDS:=+python3-light +python3-pyparsing
endef

define Package/python3-pulp/description
  PuLP is an linear and mixed integer programming modeler written in Python. With PuLP, it is simple to create MILP optimisation problems and solve them with the latest open-source (or proprietary) solvers. PuLP can generate MPS or LP files and call solvers such as GLPK, COIN-OR CLP/CBC, CPLEX, GUROBI, MOSEK, XPRESS, CHOCO, MIPCL, HiGHS, SCIP/FSCIP.
endef

$(eval $(call Py3Package,python3-pulp))
$(eval $(call BuildPackage,python3-pulp))
$(eval $(call BuildPackage,python3-pulp-src))
