# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

VIRTUALX_REQUIRED="test"
inherit kde4-base

DESCRIPTION="Todo management application for KDE"
HOMEPAGE="http://zanshin.kde.org/"
[[ ${PV} == *9999 ]] || SRC_URI="http://files.kde.org/${PN}/${P}.tar.bz2"

LICENSE="|| ( GPL-2 GPL-3 )"
SLOT="4"
KEYWORDS=""
IUSE=""

RDEPEND="
	$(add_kdebase_dep kdepim-runtime '' 4.6.0)
	dev-libs/boost
"
DEPEND=${RDEPEND}
