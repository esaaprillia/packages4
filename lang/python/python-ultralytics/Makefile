include $(TOPDIR)/rules.mk

PKG_NAME:=python-ultralytics
PKG_VERSION:=8.4.218
PKG_RELEASE:=1

PYPI_NAME:=ultralytics
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=AGPL-3.0
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include ../python3-package.mk
include ../python3-host-build.mk

define Package/python3-ultralytics
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Ultralytics YOLO
  URL:=https://github.com/ultralytics/ultralytics
  DEPENDS:= \
	+python3-light \
	+python3-numpy \
	+python3-matplotlib \
	+opencv-python \
	+python3-pillow \
	+python3-requests \
	+python3-psutil \
	+python3-polars \
	+python3-nvidia-ml-py \
	+python3-ultralytics-platform
endef

define Package/python3-ultralytics/description
Ultralytics YOLO27, YOLO26, YOLO11, YOLOv8 — object detection, instance segmentation, semantic segmentation, image classification, pose estimation, object tracking
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,python3-ultralytics))
$(eval $(call BuildPackage,python3-ultralytics))
$(eval $(call BuildPackage,python3-ultralytics-src))
