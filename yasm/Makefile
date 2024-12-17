include $(TOPDIR)/rules.mk

PKG_NAME:=yasm
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=http://www.tortall.net/projects/yasm/releases/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/yasm
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=A rewrite of NASM to allow for multiple syntax supported (NASM, TASM, GAS, etc.)
	DEPENDS:=
	URL:=https://www.tortall.net/projects/yasm/
endef

define Package/yasm/description
The Yasm Modular Assembler Project
==================================

Yasm is a complete rewrite of the NASM assembler under the “new” BSD License
(some portions are under other licenses, see COPYING for details).

Yasm currently supports the x86 and AMD64 instruction sets, accepts NASM and
GAS assembler syntaxes, outputs binary, ELF32, ELF64, 32 and 64-bit Mach-O,
RDOFF2, COFF, Win32, and Win64 object formats, and generates source debugging
information in STABS, DWARF 2, and CodeView 8 formats.

Yasm can be easily integrated into Visual Studio 2005/2008 and 2010 for
assembly of NASM or GAS syntax code into Win32 or Win64 object files.
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/* \
	  $(1)/usr/lib/
endef

define Package/yasm/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,yasm))
$(eval $(call HostBuild))
