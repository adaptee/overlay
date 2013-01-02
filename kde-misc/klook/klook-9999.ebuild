# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit kde4-base

DESCRIPTION="A quick file content preview application"
HOMEPAGE="http://projects.kde.org/klook"
KEYWORDS=""
SLOT="4"
IUSE="debug"

COMMONDEPEND="
	media-gfx/exiv2
"

DEPEND="${COMMONDEPEND}"

RDEPEND="${COMMONDEPEND}"
