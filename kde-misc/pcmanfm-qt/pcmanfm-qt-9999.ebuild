# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

DESCRIPTION="Qt version of PCManFM"
HOMEPAGE="http://blog.lxde.org/?p=982"

if [[ ${PV} = *9999* ]]; then
	inherit git-2
	EGIT_REPO_URI="git://pcmanfm.git.sourceforge.net/gitroot/pcmanfm/pcmanfm-qt"
	KEYWORDS="~amd64 ~x86"
else
	SRC_URI=""
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND="dev-libs/glib
	dev-qt/qtcore
	dev-qt/qtdbus
	dev-qt/qtgui
	>=x11-libs/libfm-1.1.0"
RDEPEND="${DEPEND}"

pkg_postinst() {
	einfo "Be sure to set an icon theme in Edit > Preferences > User Interface"
}
