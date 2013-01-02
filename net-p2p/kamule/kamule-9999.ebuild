# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit kde4-base

DESCRIPTION="a KDE frontend for aMule"
HOMEPAGE="http://kde-apps.org/content/show.php?content=150270"
EGIT_REPO_URI="git://anongit.kde.org/scratch/nihui/kamule.git"

KEYWORDS=""
SLOT="4"
IUSE="debug"

RDEPEND="
	net-p2p/amule
"
