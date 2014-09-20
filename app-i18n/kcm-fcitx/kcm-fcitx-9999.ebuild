# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils kde4-base

DESCRIPTION="KDE Config Module for Fcitx"
HOMEPAGE="https://github.com/fcitx/kcm-fcitx"
EGIT_REPO_URI="git://github.com/fcitx/kcm-fcitx.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=app-i18n/fcitx-9999
	=kde-base/systemsettings-4.11.49.9999"
DEPEND="${RDEPEND}"
