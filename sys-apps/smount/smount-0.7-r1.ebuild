# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Smount tool is a tool to manage several mountpoints from CLI"
HOMEPAGE="https://github.com/lqp1/smount"

SRC_URI="https://github.com/lqp1/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/pyyaml"
RDEPEND="${DEPEND}"
BDEPEND="
	test? ( dev-python/pyfakefs )
"

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9,10,11,12,13} )

inherit distutils-r1

distutils_enable_tests pytest

python_install_all(){
	distutils-r1_python_install_all
}

DOCS="README.md"
