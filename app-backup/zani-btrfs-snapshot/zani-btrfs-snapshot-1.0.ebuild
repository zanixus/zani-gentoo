# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="zani's btrfs snapshot tool"
HOMEPAGE="https://github.com/zanixus/zani-gentoo"
SRC_URI="https://github.com/zanixus/zani-gentoo/raw/main/distfiles/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_unpack() {
	if [[ -n ${A} ]]; then
		unpack ${A}
	fi
}

src_install() {
	cp -R "${S}/usr/local/bin/zani-btrfs-snapshot ${D}/opt/zani/bin"
}
