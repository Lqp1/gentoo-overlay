# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Simple Live EBUILD for smount tool"
HOMEPAGE="https://github.com/lqp1/smount"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-python/pyyaml"
RDEPEND="${DEPEND}"
BDEPEND="
	dev-vcs/git
	test? ( dev-python/pyfakefs )
	"

SRC_URI=""
EGIT_REPO_URI="https://github.com/lqp1/${PN}.git"
EGIT_BRANCH="main"
EGIT_CHECKOUT_DIR="${S}"

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9,10,11} )

inherit git-r3 distutils-r1

distutils_enable_tests pytest

python_install_all(){
	distutils-r1_python_install_all
}

DOCS="README.md"
