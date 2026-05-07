export PLATFORM=posix

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
		scons \
			CC="$(TARGET_CROSS)gcc" \
			CXX="$(TARGET_CROSS)g++" \
			OBJCOPY="$(TARGET_CROSS)objcopy" \
			RANLIB="$(TARGET_CROSS)ranlib" \
			CFLAGS="$(TARGET_CFLAGS) $(EXTRA_CFLAGS)" \
			CCFLAGS="$(TARGET_CFLAGS) $(EXTRA_CFLAGS)" \
			CXXFLAGS="$(TARGET_CXXFLAGS) $(EXTRA_CXXFLAGS)" \
			LINKFLAGS="$(TARGET_LDFLAGS)" \
			cc="$(TARGET_CROSS)gcc" \
			cxx="$(TARGET_CROSS)g++" \
			objcopy="$(TARGET_CROSS)objcopy" \
			ranlib="$(TARGET_CROSS)ranlib" \
			cflags="$(TARGET_CFLAGS) $(EXTRA_CFLAGS)" \
			ccflags="$(TARGET_CFLAGS) $(EXTRA_CFLAGS)" \
			cxxflags="$(TARGET_CXXFLAGS) $(EXTRA_CXXFLAGS)" \
			linkflags="$(TARGET_LDFLAGS)" \
			DESTDIR="$(PKG_INSTALL_DIR)" \
			$(SCONS_OPTIONS) \
		install-core \
	)
endef

define Build/Compile
endef
