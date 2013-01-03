# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit kde4-base

DESCRIPTION="KDE's screen management software (the libarry)"
HOMEPAGE="https://projects.kde.org/libkscreen"
LICENSE="GPL-2+"

KEYWORDS=""
IUSE="debug doc"
SLOT="4"

COMMONRDEPEND="
	>=dev-libs/qjson-0.8
	x11-libs/libXrandr
	x11-libs/qt-gui
"

RDEPEND="${COMMONRDEPEND}"

DEPEND="${COMMONRDEPEND}
	kde-base/kdelibs
	doc? ( app-doc/doxygen )
"

src_configure() {

	mycmakeargs=(
		$(cmake-utils_use_with doc LIBKSCREEN_BUILD_API_DOCS)
	)

	cmake-utils_src_configure
}
