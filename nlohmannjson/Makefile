#
# This is free software, licensed under the GNU General Public License v2.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=nlohmannjson
PKG_VERSION:=3.12.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/nlohmann/json/archive/v$(PKG_VERSION)?
PKG_HASH:=skip
PKG_BUILD_DIR:=$(BUILD_DIR)/json-$(PKG_VERSION)

PKG_MAINTAINER:=Leonid Esman <leonid.esman@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.MIT
PKG_CPE_ID:=cpe:/a:json-for-modern-cpp_project:json-for-modern-cpp

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/nlohmannjson
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=JSON for Modern C++
  URL:=https://nlohmann.github.io/json/
  BUILDONLY:=1
endef

define Package/nlohmannjson/description
  Niels Lohmann's JSON headers-only library for modern C++
endef

CMAKE_OPTIONS += \
	-DJSON_MultipleHeaders=ON

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

$(eval $(call BuildPackage,nlohmannjson))
