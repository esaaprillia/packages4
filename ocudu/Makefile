include $(TOPDIR)/rules.mk

PKG_NAME:=ocudu
PKG_VERSION:=26.04.0
#PKG_SOURCE_VERSION:=26_04
PKG_RELEASE:=2

#PKG_SOURCE:=ocudu-release_$(PKG_SOURCE_VERSION).tar.gz
#PKG_SOURCE_URL:=https://gitlab.com/ocudu/ocudu/-/archive/release_$(PKG_SOURCE_VERSION)/
#PKG_HASH:=skip

PKG_SOURCE_URL:=https://gitlab.com/ocudu/ocudu.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=3aaea2b7558db524ff9cff14f033fcedcf308124
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD 3-Clause-Open-MPI
PKG_LICENSE_FILES:=COPYRIGHT.txt LICENSE

#PKG_BUILD_DIR:=$(BUILD_DIR)/ocudu-release_$(PKG_SOURCE_VERSION)
#PKG_BUILD_DEPENDS:=fftw3 mbedtls pcsc-lite lksctp-tools zmq backward-cpp libdwarf rohc

CMAKE_BINARY_SUBDIR:=build

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/ocudu
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=OCUDU is a permissively-licensed, open-source 5G
	DEPENDS:=+libatomic +libstdcpp +libpthread +libmbedtls +libsctp +libyaml-cpp
	URL:=https://ocudu.org/
endef

define Package/ocudu/description
	OCUDU is a permissively-licensed, open-source 5G (and beyond) CU/DU project designed for commercial deployment and broad industry adoption, as well as advanced research and development.
endef

TARGET_CFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CFLAGS))
TARGET_CCFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CCFLAGS))
TARGET_CXXFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CXXFLAGS))

TARGET_CFLAGS += -Os -pipe -mcpu=generic-armv8-a
TARGET_CCFLAGS += -Os -pipe -mcpu=generic-armv8-a
TARGET_CXXFLAGS += -Os -pipe -mcpu=generic-armv8-a

TARGET_CFLAGS:= $(filter-out -O%,$(TARGET_CFLAGS))
TARGET_CCFLAGS:= $(filter-out -O%,$(TARGET_CFLAGS))
TARGET_CXXFLAGS:= $(filter-out -O%,$(TARGET_CFLAGS))

#TARGET_LDFLAGS +=-lpthread

CMAKE_OPTIONS += \
	-DBUILD_TESTING=OFF -DENABLE_WERROR=ON \
	-DMCPU=generic-armv8-a \
	-DHAVE_ARM_CRYPTO=1 \
	-DHAVE_PLUS_CRYPTO=1

define Build/InstallDev
	$(call Build/InstallDev/cmake,$(1))
endef

define Package/ocudu/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	#$(INSTALL_DIR) $(1)/usr/lib
	#$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/share
	$(CP) $(PKG_INSTALL_DIR)/usr/share/* $(1)/usr/share/
endef

$(eval $(call BuildPackage,ocudu))
