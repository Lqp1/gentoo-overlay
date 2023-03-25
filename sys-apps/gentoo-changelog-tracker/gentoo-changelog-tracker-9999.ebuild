# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Simple Live EBUILD for Gentoo-changelog-tracker"
HOMEPAGE="https://github.com/lqp1/gentoo-changelog-tracker"
EGO_PN="github.com/lqp1/gentoo-changelog-tracker"
EGIT_REPO_URI="https://${EGO_PN}.git"

inherit go-module git-r3 bash-completion-r1

KEYWORDS=""
LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="app-portage/eix"
RDEPEND="${DEPEND}"

src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}

src_compile() {
	go build . || die
}

src_install(){
	dobin ${PN}
	newbashcomp sh/gentoo-changelog-tracker-completion.bash gentoo-changelog-tracker-completion.bash
}
