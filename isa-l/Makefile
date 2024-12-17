include $(TOPDIR)/rules.mk

PKG_NAME:=isa-l
PKG_VERSION:=2.31.0
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=https://github.com/intel/isa-l/archive/v$(PKG_VERSION)
#PKG_HASH:=skip

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/intel/isa-l.git
PKG_SOURCE_VERSION:=b1e6ac3c66ade56de004de3bafeb9e2cc903d10a
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=nasm/host
PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/isa-l
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Intelligent Storage Acceleration Library
	DEPENDS:=
	URL:=https://github.com/intel/isa-l
endef

define Package/isa-l/description
ISA-L is a collection of optimized low-level functions targeting storage applications. ISA-L includes:

• Erasure codes - Fast block Reed-Solomon type erasure codes for any encode/decode matrix in GF(2^8).
• CRC - Fast implementations of cyclic redundancy check. Six different polynomials supported.
• iscsi32, ieee32, t10dif, ecma64, iso64, jones64, rocksoft64.
• Raid - calculate and operate on XOR and P+Q parity found in common RAID implementations.
• Compression - Fast deflate-compatible data compression.
• De-compression - Fast inflate-compatible data compression.
• igzip - A command line application like gzip, accelerated with ISA-L.
endef

TARGET_CFLAGS:=$(filter-out -O%,$(TARGET_CFLAGS))
MAKE_FLAGS:=$(filter-out LD=%,$(MAKE_FLAGS)) LD="$(TARGET_CC) -o"

# Instead of blacklisting a boatload of platforms just enable
# optimization where it makes sense (matters) ie ARMv7+ and x86_64

ifneq ($(findstring cortex-a,$(CONFIG_CPU_TYPE)),)
  CONFIGURE_ARGS += --enable-lto
else
  ifneq ($(CONFIG_TARGET_x86_64),)
    CONFIGURE_ARGS += --enable-lto
    ifeq ($(CONFIG_NASM),y)
      CONFIGURE_VARS+= AS=nasm
      MAKE_FLAGS+= AS=nasm
    endif
  else
    CONFIGURE_VARS+= AS=
    MAKE_FLAGS+= AS=
    CONFIGURE_ARGS += --disable-asm
  endif
endif

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/isa-l/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/igzip \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,isa-l))
