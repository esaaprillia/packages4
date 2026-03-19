include $(TOPDIR)/rules.mk

PKG_NAME:=openjdk
PKG_VERSION:=25.0.2
PKG_RELEASE:=1

PKG_MAINTAINER:=
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/openjdk
  SUBMENU:=Java
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Alpine Linux Openjdk
  DEPENDS:=+libstdcpp +libc +alsa-lib +libfreetype +giflib +libjpeg-turbo +lcms2 +libpng +zlib +libxi +libxrender +libxtst +libxext +libx11
endef

define Package/openjdk/description
 Oracle OpenJDK 25
endef

define Package/openjdk/extra_provides
    echo "libc.musl-aarch64.so.1";
endef

define Download/openjdk25
	URL:=https://dl-cdn.alpinelinux.org/alpine/edge/community/aarch64/
	FILE:=openjdk25-25.0.2_p10-r1.apk
	HASH:=skip
endef

define Download/openjdk25-demos
	URL:=https://dl-cdn.alpinelinux.org/alpine/edge/community/aarch64/
	FILE:=openjdk25-demos-25.0.2_p10-r1.apk
	HASH:=skip
endef

define Download/openjdk25-doc
	URL:=https://dl-cdn.alpinelinux.org/alpine/edge/community/aarch64/
	FILE:=openjdk25-doc-25.0.2_p10-r1.apk
	HASH:=skip
endef

define Download/openjdk25-jdk
	URL:=https://dl-cdn.alpinelinux.org/alpine/edge/community/aarch64/
	FILE:=openjdk25-jdk-25.0.2_p10-r1.apk
	HASH:=skip
endef

define Download/openjdk25-jmods
	URL:=https://dl-cdn.alpinelinux.org/alpine/edge/community/aarch64/
	FILE:=openjdk25-jmods-25.0.2_p10-r1.apk
	HASH:=skip
endef

define Download/openjdk25-jre
	URL:=https://dl-cdn.alpinelinux.org/alpine/edge/community/aarch64/
	FILE:=openjdk25-jre-25.0.2_p10-r1.apk
	HASH:=skip
endef

define Download/openjdk25-jre-headless
	URL:=https://dl-cdn.alpinelinux.org/alpine/edge/community/aarch64/
	FILE:=openjdk25-jre-headless-25.0.2_p10-r1.apk
	HASH:=skip
endef

define Download/openjdk25-src
	URL:=https://dl-cdn.alpinelinux.org/alpine/edge/community/aarch64/
	FILE:=openjdk25-src-25.0.2_p10-r1.apk
	HASH:=skip
endef

TAR_OPTIONS+= --strip-components 1
TAR_CMD=$(HOST_TAR) -C $(1) $(TAR_OPTIONS)

define Build/Prepare
	$(call Build/Prepare/Default)
		mkdir -p $(PKG_INSTALL_DIR)
		tar -xf $(DL_DIR)/openjdk25-25.0.2_p10-r1.apk -C $(PKG_INSTALL_DIR)
		tar -xf $(DL_DIR)/openjdk25-demos-25.0.2_p10-r1.apk -C $(PKG_INSTALL_DIR)
		tar -xf $(DL_DIR)/openjdk25-doc-25.0.2_p10-r1.apk -C $(PKG_INSTALL_DIR)
		tar -xf $(DL_DIR)/openjdk25-jdk-25.0.2_p10-r1.apk -C $(PKG_INSTALL_DIR)
		tar -xf $(DL_DIR)/openjdk25-jmods-25.0.2_p10-r1.apk -C $(PKG_INSTALL_DIR)
		tar -xf $(DL_DIR)/openjdk25-jre-25.0.2_p10-r1.apk -C $(PKG_INSTALL_DIR)
		tar -xf $(DL_DIR)/openjdk25-jre-headless-25.0.2_p10-r1.apk -C $(PKG_INSTALL_DIR)
		tar -xf $(DL_DIR)/openjdk25-src-25.0.2_p10-r1.apk -C $(PKG_INSTALL_DIR)
endef

define Build/Compile
endef

define Package/openjdk/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/jvm $(1)/usr/lib/
endef

$(eval $(call Download,openjdk25))
$(eval $(call Download,openjdk25-demos))
$(eval $(call Download,openjdk25-doc))
$(eval $(call Download,openjdk25-jdk))
$(eval $(call Download,openjdk25-jmods))
$(eval $(call Download,openjdk25-jre))
$(eval $(call Download,openjdk25-jre-headless))
$(eval $(call Download,openjdk25-src))
$(eval $(call BuildPackage,openjdk))
