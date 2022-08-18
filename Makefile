include $(TOPDIR)/rules.mk

PKG_NAME:=tcp2udp
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/q191201771/tcp2udp.git
PKG_SOURCE_VERSION:=28fd989696730099b9a7e9e315f4ac1427843bd6
PKG_MIRROR_HASH:=skip

PKG_LICENSE:=MIT license
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=yoko <191201771@qq.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

GO_PKG:=github.com/q191201771/tcp2udp
GO_PKG_LDFLAGS:=-s -w

include $(INCLUDE_DIR)/package.mk
include ../../lang/golang/golang-package.mk

define Package/tcp2udp
  SECTION:=net
  CATEGORY:=Network
  TITLE:=tcp2udp
  URL:=https://github.com/q191201771/tcp2udp
  DEPENDS:=$(GO_ARCH_DEPENDS)
endef

define Package/tcp2udp/description
  tcp proxy serve for udp server
endef

define Package/tcp2udp/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))

	$(INSTALL_DIR) $(1)/usr/bin/
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/tcp2udp $(1)/usr/bin/
endef

$(eval $(call GoBinPackage,irtt))
$(eval $(call BuildPackage,irtt))
