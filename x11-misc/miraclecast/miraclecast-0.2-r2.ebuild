# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="(fork) Connect external monitors to your system via Wifi-Display specification"
HOMEPAGE="https://github.com/Lqp1/miraclecast"
SRC_URI="https://github.com/Lqp1/miraclecast/archive/v${PV}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="systemd"

DEPEND="net-wireless/wpa_supplicant[p2p]
		net-wireless/iw
		virtual/udev
		media-plugins/gst-plugins-libav
		media-plugins/gst-plugins-ximagesrc
		media-plugins/gst-plugins-x264
		media-libs/gst-plugins-ugly
		media-libs/gst-plugins-good
		media-libs/gst-plugins-bad
		systemd? ( >=sys-apps/systemd-221 )
		!systemd? ( >=sys-auth/elogind-221 )"
RDEPEND="${DEPEND}"
BDEPEND="dev-lang/vala"

CMAKE_MAKEFILE_GENERATOR="emake"

inherit cmake

src_configure() {
	local mycmakeargs=(
	-DENABLE_SYSTEMD="$(usex systemd)"
	)
	cmake_src_configure
}

DOCS="COPYING NEWS README.md LICENSE_lgpl LICENSE_htable LICENSE_gdhcp"
