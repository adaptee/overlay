# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-misc/quadkonsole/quadkonsole-0.2.1.ebuild,v 1.1 2011/05/05 14:38:53 scarabeus Exp $

EAPI=4

KDE_SCM=git
KDE_HANDBOOK=optional
inherit git-2 kde4-base

EGIT_REPO_URI="git://kb.ccchl.de/${PN}4.git"

MY_P=${PN}4-${PV}

DESCRIPTION="Grid of Konsole terminals"
HOMEPAGE="http://kb.ccchl.de/quadkonsole4/"

LICENSE="GPL-2"
SLOT="4"
KEYWORDS=""
IUSE="debug"

RDEPEND="
	$(add_kdebase_dep konsole)
	$(add_kdebase_dep libkonq)
"
DEPEND="${RDEPEND}"

DOCS=( AUTHORS ChangeLog )

S=${WORKDIR}/${MY_P}
