# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Simple Live EBUILD for Checkperms script"
HOMEPAGE="https://github.com/lqp1/checkperms"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="dev-vcs/git"

SRC_URI=""
EGIT_REPO_URI="https://github.com/lqp1/${PN}.git"
EGIT_BRANCH="master"
EGIT_CHECKOUT_DIR="${S}"

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{9,10,11} pypy2_0 )

inherit git-r3 distutils-r1 bash-completion-r1

python_install_all(){
	distutils-r1_python_install_all
	newbashcomp debian/${PN}-bin-completion.bash ${PN}
	doman debian/docs/*.1
}
