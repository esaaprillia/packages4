export PLATFORM=posix
export STAGING_DIR=/home/runner/work/mosdns/mosdns/sdk/staging_dir
export PATH=$PATH:/home/runner/work/mosdns/mosdns/sdk/staging_dir/toolchain-aarch64_generic_gcc-14.3.0_musl/bin

SCONS_VARS = \
	CC="$(TARGET_CC_NOCACHE)" \
	CXX="$(TARGET_CXX_NOCACHE)" \
	CFLAGS="$(TARGET_CFLAGS) $(EXTRA_CFLAGS)" \
	CXXFLAGS="$(TARGET_CXXFLAGS) $(EXTRA_CXXFLAGS)" \
	CPPFLAGS="$(TARGET_CPPFLAGS) $(EXTRA_CPPFLAGS)" \
	LDFLAGS="$(TARGET_LDFLAGS) $(EXTRA_LDFLAGS)" \
	LINKFLAGS="$(TARGET_LDFLAGS)" \
	DESTDIR="$(PKG_INSTALL_DIR)"

define Build/Configure/Default
	(cd $(PKG_BUILD_DIR); \
		$(SCONS_VARS) \
		scons \
			CC="$(TARGET_CC_NOCACHE)" \
			CXX="$(TARGET_CXX_NOCACHE)" \
			CFLAGS="$(TARGET_CFLAGS) $(EXTRA_CFLAGS)" \
			CCFLAGS="$(TARGET_CFLAGS) $(EXTRA_CFLAGS)" \
			CXXFLAGS="$(TARGET_CXXFLAGS) $(EXTRA_CXXFLAGS)" \
			LINKFLAGS="$(TARGET_LDFLAGS)" \
			DESTDIR="$(PKG_INSTALL_DIR)" \
			$(SCONS_OPTIONS) \
		install-core \
	)
endef

define Build/Compile
endef
