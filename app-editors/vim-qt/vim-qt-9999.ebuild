# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit git-2 toolchain-funcs

DESCRIPTION="Qt powered vim GUI"
HOMEPAGE="https://code.google.com/p/vim-qt/"
SRC_URI=""
EGIT_REPO_URI="git://gitorious.org/vim-qt/vim-qt.git
	https://gitorious.org/vim-qt/vim-qt.git"

LICENSE="vim"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
	cd "${S}/src" || die
	tc-export CXX
	econf --enable-gui=qt --with-vim-name=qtvim
}

src_compile() {
	cd "${S}/src" || die
	emake
}

src_install() {
	cd "${S}/src" || die
	dobin qtvim
}
