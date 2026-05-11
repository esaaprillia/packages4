include $(TOPDIR)/rules.mk

PKG_NAME:=mongo
PKG_VERSION:=7.0.32
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
	protobuf/host \
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
	+boost-filesystem \
	+boost-iostreams \
	+boost-log \
	+boost-program_options \
	+libfmt \
	+benchmark \
	+grpc \
	+icu \
	+mongo-c-driver \
	+libcurl \
	+libsasl2 \
	+libmongocrypt \
	+libopenssl \
	+libpcre2 \
	+libpcap \
	+protobuf \
	+snappy \
	+snowball \
	+gperftools \
	+libunwind \
	+valgrind \
	+wiredtiger \
	+libyaml \
	+libyaml-cpp \
	+zlib \
	+liblzma \
	+libzstd
endef

define Package/mongo/description
A high-performance, open source, schema-free document-oriented database
endef

TARGET_CFLAGS := $(filter-out -mcpu=generic,$(TARGET_CFLAGS))
TARGET_CCFLAGS := $(filter-out -mcpu=generic,$(TARGET_CCFLAGS))
TARGET_CXXFLAGS := $(filter-out -mcpu=generic,$(TARGET_CXXFLAGS))

TARGET_LDFLAGS += -Wl,-rpath-link=$(STAGING_DIR)/usr/lib

SCONS_OPTIONS += \
	--allocator=system \
	--disable-warnings-as-errors \
	--use-system-mongo-c \
	--use-system-asio \
	--use-system-boost \
	--use-system-fmt \
	--use-system-google-benchmark \
	--use-system-grpc \
	--use-system-icu \
	--use-system-libbson \
	--use-system-libmongocrypt \
	--use-system-pcre2 \
	--use-system-protobuf \
	--use-system-snappy \
	--use-system-stemmer \
	--use-system-tcmalloc \
	--use-system-libunwind \
	--use-system-valgrind \
	--use-system-wiredtiger \
	--use-system-yaml \
	--use-system-zlib \
	--use-system-zstd \
	--use-sasl-client \
	--ssl \
	PREFIX=/usr \
	CPPPATH="$(STAGING_DIR)/usr/include" \
	LIBPATH="$(STAGING_DIR)/usr/lib" \
	PROTOC_GRPC_PLUGIN="$(STAGING_DIR_HOSTPKG)/bin/grpc_cpp_plugin" \
	PROTOC="$(STAGING_DIR_HOSTPKG)/bin/protoc" \
	MONGO_VERSION="$(PKG_VERSION)"

define Package/mongo/install
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_INSTALL_DIR)/etc/* $(1)/etc/
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
endef

$(eval $(call BuildPackage,mongo))
