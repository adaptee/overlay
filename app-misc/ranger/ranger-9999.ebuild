# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-misc/ranger/ranger-1.4.2.ebuild,v 1.1 2011/03/14 21:14:46 radhermit Exp $

EAPI=3
PYTHON_DEPEND="2:2.6 3:3.1"
PYTHON_USE_WITH="ncurses"

inherit distutils git

DESCRIPTION="A vim-inspired file manager for the console"
HOMEPAGE="http://ranger.nongnu.org/"
EGIT_REPO_URI="git://git.sv.gnu.org/ranger.git"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="sys-apps/less"

pkg_postinst() {
	distutils_pkg_postinst

	elog "Ranger has many optional dependencies to support enhanced file previews."
	elog "See the README or homepage for more details."
}