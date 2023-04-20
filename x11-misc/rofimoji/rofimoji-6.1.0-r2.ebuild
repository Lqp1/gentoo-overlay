# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="An emoji selector using rofi as input!"
HOMEPAGE="https://github.com/fdw/rofimoji"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="X wayland"

DEPEND="X? ( x11-misc/xdotool x11-misc/xsel ) wayland? ( gui-apps/wl-clipboard ) dev-python/ConfigArgParse"
RDEPEND="${DEPEND}"

SRC_URI="https://github.com/fdw/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{10,11} )

inherit distutils-r1

python_install_all(){
	distutils-r1_python_install_all
}

DOCS="CHANGELOG.md README.md"
