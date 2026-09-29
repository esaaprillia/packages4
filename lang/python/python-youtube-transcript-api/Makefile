include $(TOPDIR)/rules.mk

PKG_NAME:=python-youtube-transcript-api
PKG_VERSION:=1.2.4
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=youtube_transcript_api
PKG_HASH:=skip

PKG_BUILD_DEPENDS:=python-poetry-core/host

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-youtube-transcript-api
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=YouTube Transcript API
  URL:=https://github.com/jdepoix/youtube-transcript-api
  DEPENDS:= \
	+python3 \
	+python3-requests \
	+python3-defusedxml
endef

define Package/python3-youtube-transcript-api/description
This is a python API which allows you to get the transcripts/subtitles for a given YouTube video. It also works for automatically generated subtitles, supports translating subtitles and it does not require a headless browser, like other selenium based solutions do!
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-youtube-transcript-api))
$(eval $(call BuildPackage,python3-youtube-transcript-api))
$(eval $(call BuildPackage,python3-youtube-transcript-api-src))
