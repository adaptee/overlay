# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit kde4-base

DESCRIPTION="KScreen"
HOMEPAGE="https://projects.kde.org/libkscreen"
LICENSE="GPL-2+"

KEYWORDS=""
IUSE="debug"
SLOT="4"

COMMONRDEPEND="
	>=dev-libs/qjson-0.8
	x11-libs/libXrandr
	x11-libs/qt-gui
"

RDEPEND="${COMMONRDEPEND}"

DEPEND="${COMMONRDEPEND}
	kde-base/kdelibs
"
