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

src_unpack() {
	if [[ -n ${A} ]]; then
		unpack ${A}
	fi
}

src_prepare() {
	if [[ $(declare -p PATCHES 2>/dev/null) == "declare -a"* ]]; then
		[[ -n ${PATCHES[@]} ]] && eapply "${PATCHES[@]}"
	else
		[[ -n ${PATCHES} ]] && eapply ${PATCHES}
	fi
	eapply_user
}

src_compile() {
	true;
}

pkg_postinst() {
	true;
}
