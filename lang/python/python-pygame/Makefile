include $(TOPDIR)/rules.mk

PKG_NAME:=python-pygame
PKG_VERSION:=2.6.1
PKG_RELEASE:=1

PYPI_NAME:=pygame
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1-or-later
PKG_LICENSE_FILES:=LGPL.txt

PKG_BUILD_DEPENDS:=python-cython/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-pygame
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Game Development
  URL:=https://www.pygame.org/
  DEPENDS:=+python3 +python3-numpy +sdl2 +sdl2-image +sdl2-mixer +sdl2-ttf +sdl2-gfx +libfreetype +libpng +libjpeg-turbo +fontconfig +portmidi
endef

define Package/python3-pygame/description
  Pygame is a free and open-source cross-platform library for the development of multimedia applications like video games using Python.
  It uses the Simple DirectMedia Layer library and several other popular libraries to abstract the most common functions, making writing these programs a more intuitive task.
endef

PYTHON3_PKG_SETUP_VARS += \
	LOCALBASE="$(STAGING_DIR)/usr" \
	PORTMIDI_INC_PORTTIME=1 \
	SDL_VIDEODRIVER=dummy \
	SDL_AUDIODRIVER=disk

$(eval $(call Py3Package,python3-pygame))
$(eval $(call BuildPackage,python3-pygame))
$(eval $(call BuildPackage,python3-pygame-src))
