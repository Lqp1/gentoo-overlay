# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Python client for Consul (http://www.consul.io/)"
HOMEPAGE="https://github.com/cablehead/python-consul"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=(python3_{9,10})

inherit distutils-r1

RDEPEND="
	${PYTHON_DEPS}
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	${RDEPEND}
"

DOCS="README.rst CHANGELOG.rst"
