include $(TOPDIR)/rules.mk

PKG_NAME:=libkqueue
PKG_VERSION:=2.6.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mheily/libkqueue/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/libkqueue
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=kqueue(2) compatibility library
	URL:=https://github.com/mheily/libkqueue
endef

define Package/libkqueue/description
	A user space implementation of the kqueue(2) kernel event notification mechanism libkqueue acts as a translator between the kevent structure and the native kernel facilities on Linux, Android, Solaris, and Windows.
	libkqueue is not perfect, and you may need to change the behaviour of your application to work around limitations on a given platform.
	Please see BUGS for known behavioural differences between libkqueue and BSD kqueues.
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/kqueue \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/libkqueue/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libkqueue))
