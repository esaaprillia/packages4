include $(TOPDIR)/rules.mk

PKG_NAME:=mongo
PKG_VERSION:=7.0.37
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-r$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mongodb/mongo/archive/r$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=SSPL-1.0
PKG_LICENSE_FILES:=LICENSE-Community.txt

PKG_BUILD_DIR:=$(BUILD_DIR)/mongo-r$(PKG_VERSION)
PYTHON3_PKG_BUILD:=0

PKG_BUILD_DEPENDS:= \
	scons/host \
	python-psutil/host \
	python-pymongo/host \
	python-yaml/host \
	python-cheetah3/host \
	python-packaging/host \
	python-regex/host \
	python-legacy-cgi/host

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/scons/scons.mk
include $(TOPDIR)/feeds/python/lang/python/python3-package.mk

define Package/mongo
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The MongoDB Database
	URL:=https://www.mongodb.com/
	DEPENDS:= \
	+libcurl \
	+libsasl2 \
	+libopenssl \
	+libpcap \
	+snappy \
	+snowball \
	+libunwind \
	+libyaml \
	+libyaml-cpp \
	+zlib \
	+liblzma \
	+libzstd
endef

define Package/mongo/description
A high-performance, open source, schema-free document-oriented database
endef

TARGET_CFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CFLAGS))
TARGET_CCFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CCFLAGS))
TARGET_CXXFLAGS := $(filter-out -Os -pipe -mcpu=generic,$(TARGET_CXXFLAGS))

TARGET_CFLAGS += -Os -pipe -march=armv8-a+crc -D_LARGEFILE64_SOURCE
TARGET_CCFLAGS += -Os -pipe -march=armv8-a+crc -D_LARGEFILE64_SOURCE
TARGET_CXXFLAGS += -Os -pipe -march=armv8-a+crc -D_LARGEFILE64_SOURCE

SCONS_OPTIONS += \
	--allocator=system \
	--disable-warnings-as-errors \
	--use-system-snappy \
	--use-system-stemmer \
	--use-system-libunwind \
	--use-system-yaml \
	--use-system-zlib \
	--use-system-zstd \
	--use-sasl-client \
	--ssl \
	PREFIX=/usr \
	RPATH="$(STAGING_DIR)/usr/lib" \
	CPPPATH="$(STAGING_DIR)/usr/include" \
	LIBPATH="$(STAGING_DIR)/usr/lib" \
	MONGO_VERSION="$(PKG_VERSION)"

define Package/mongo/install
	#$(INSTALL_DIR) $(1)/etc
	#$(CP) $(PKG_INSTALL_DIR)/etc/* $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,mongo))
