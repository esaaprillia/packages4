include $(TOPDIR)/rules.mk

PECL_NAME:=apcu
PECL_LONGNAME:=APCu - APC User Cache

PKG_VERSION:=5.1.28
PKG_RELEASE:=1

PKG_NAME:=php8-pecl-$(PECL_NAME)
PKG_SOURCE:=$(PECL_NAME)-$(PKG_VERSION).tgz
PKG_SOURCE_URL:=https://pecl.php.net/get/
PKG_HASH:=skip

PKG_BUILD_DIR:=$(BUILD_DIR)/pecl-php8/$(PECL_NAME)-$(PKG_VERSION)

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=PHP-3.01
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk
include $(TOPDIR)/feeds/packages/lang/php8/pecl.mk

CONFIGURE_ARGS += \
	--enable-apcu

$(eval $(call PHP8PECLPackage,$(PECL_NAME),$(PECL_LONGNAME),,20))
$(eval $(call BuildPackage,$(PKG_NAME)))
