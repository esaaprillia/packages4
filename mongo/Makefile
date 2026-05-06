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

PKG_BUILD_DEPENDS:= \
	scons/host \
	python-psutil/host \
	python-jsonschema/host \
	python-bson/host \
	python-yaml/host \
	python-typing-extensions/host \
	python-memory-profiler/host \
	python-cheetah3/host \
	python-requirements-parser/host \
	python-puremagic/host \
	python-mongo-tooling-metrics/host \
	python-networkx/host \
	python-cxxfilt/host \
	python-regex/host \
	python-types-pyyaml/host \
	python-requests/host \
	python-packaging/host \
	python-tabulate/host

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/python/lang/python/scons/scons.mk

define Package/mongo
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The MongoDB Database
	DEPENDS:=
	URL:=https://www.mongodb.com/
endef

define Package/mongo/description
A high-performance, open source, schema-free document-oriented database
endef

SCONS_OPTIONS += \
	--allocator=system \
	--disable-warnings-as-errors \
	--use-system-abseil-cpp \
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
	MONGO_VERSION="$(PKG_VERSION)"

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/gps.h $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libgps*.so* $(1)/usr/lib/
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/libgps.pc $(1)/usr/lib/pkgconfig
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/libgps.pc
	$(SED) 's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/libgps.pc
endef

define Package/mongo/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,mongo))
