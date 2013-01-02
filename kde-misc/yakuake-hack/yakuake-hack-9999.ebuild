# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit kde4-base

DESCRIPTION="A quake-style terminal emulator based on KDE konsole technology"
HOMEPAGE="http://yakuake.kde.org/"

EGIT_REPO_URI="git://github.com/adaptee/yakuake-hack.git"
EGIT_BRANCH="hacking"

LICENSE="GPL-2 LGPL-2"
KEYWORDS=""
SLOT="4"
IUSE="debug"


DEPEND="$(add_kdebase_dep konsole)
	sys-devel/gettext"
RDEPEND="${DEPEND}"

