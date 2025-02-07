include $(TOPDIR)/rules.mk

PKG_NAME:=perl
PKG_VERSION:=5.40.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.cpan.org/src/5.0/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/perl
	SUBMENU:=Perl
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=The Perl intepreter
	URL:=http://www.perl.com/
	DEPENDS:=+USE_GLIBC:libbsd +PERL_THREADS:libpthread @!arc
endef

define Package/perl/description
	FlatBuffers is a cross platform serialization library architected for maximum memory efficiency. It allows you to directly access serialized data without parsing/unpacking it first, while still having great forwards/backwards compatibility.
endef

define Build/Configure
	./Configure -des \
		-Dcccdlflags='-fPIC' \
		-Dccdlflags='-rdynamic' \
		-Dprefix=/usr \
		-Dprivlib=/usr/share/perl5/core_perl \
		-Darchlib=/usr/lib/perl5/core_perl \
		-Dvendorprefix=/usr \
		-Dvendorlib=/usr/share/perl5/vendor_perl \
		-Dvendorarch=/usr/lib/perl5/vendor_perl \
		-Dsiteprefix=/usr/lib \
		-Dsitelib=/usr/lib/share/perl5/site_perl \
		-Dsitearch=/usr/lib/perl5/site_perl \
		-Dlocincpth=' ' \
		-Doptimize="$(TARGET_CFLAGS)" \
		-Duselargefiles \
		-Dusethreads \
		-Duseshrplib \
		-Dd_semctl_semun \
		-Dman1dir=/usr/share/man/man1 \
		-Dman3dir=/usr/share/man/man3 \
		-Dinstallman1dir=/usr/share/man/man1 \
		-Dinstallman3dir=/usr/share/man/man3 \
		-Dman1ext='1' \
		-Dman3ext='3pm' \
		-Dcf_by='OpenWrt' \
		-Dcf_email='buildozer@alpinelinux.org' \
		-Ud_csh \
		-Ud_fpos64_t \
		-Ud_off64_t \
		-Dusenm \
		-Duse64bitint
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/perl \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,cmake} \
	  $(1)/usr/lib/

	$(SED) \
	  's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/perl.pc

	$(SED) \
	  's,/usr/lib,$$$${exec_prefix}/lib,g' $(1)/usr/lib/pkgconfig/perl.pc
endef

define Package/perl/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/flatc \
	  $(1)/usr/bin/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,perl))
