# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit kde4-base

DESCRIPTION="KScreen"
KEYWORDS=""
SLOT="4"
IUSE="debug"

COMMONDEPEND="
	
	>=dev-libs/qjson-0.8
"

DEPEND="${COMMONDEPEND}"

RDEPEND="${COMMONDEPEND}"
