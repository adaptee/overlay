# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

inherit eutils

DESCRIPTION="This KCM allows you to change style, icons, font of GTK applications in KDE4"
HOMEPAGE="http://kde-look.org/content/show.php?content=74689"
SRC_URI="http://betta.houa.org/no-site/gtk-kde4(src)0.9.4.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc64 ~sparc ~x86"
IUSE=""

DEPEND_COMMON="
		kde-base/kdelibs
		>=x11-libs/qt-gui-4.7.0
		>=x11-libs/qt-core-4.7.0
	"
RDEPEND="
	${DEPEND_COMMON}
	"
DEPEND="
	${DEPEND_COMMON}
	"

src_unpack() {
	unpack ${A}

	# this is because of the weired nameing schedme of upstream tarball
	cd "${WORKDIR}"
	mv "gtk-kde4(src)" "gtk-kde4-0.9.4"
}


src_compile() {

	cmake -DCMAKE_INSTALL_PREFIX=/usr ${S}
	emake || die "emake failed"
}

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
}
