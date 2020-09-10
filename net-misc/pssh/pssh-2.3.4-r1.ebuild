EAPI=7

PYTHON_COMPAT=( python2_7 python3_7 )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1

DESCRIPTION="PSSH provides parallel versions of OpenSSH and related tools"
HOMEPAGE="https://github.com/lilydjwg/pssh"
SRC_URI="https://github.com/lilydjwg/pssh/archive/v${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="net-misc/openssh
	!net-misc/putty"
DEPEND="${RDEPEND}"

# Requires ssh access to run.
RESTRICT="test"

pkg_setup() {
	python-single-r1_pkg_setup
}

python_prepare_all() {
	sed -i -e "s|man/man1'|share/&|g" setup.py || die
	distutils-r1_python_prepare_all
}


