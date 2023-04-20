# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Python client for Consul (http://www.consul.io/)"
HOMEPAGE="https://github.com/cablehead/python-consul"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=(python3_{9,10,11})

inherit distutils-r1 pypi

RDEPEND="
	dev-python/requests
	dev-python/six
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	${RDEPEND}
"

DOCS="README.rst CHANGELOG.rst"
