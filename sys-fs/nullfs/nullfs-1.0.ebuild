# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="FUSE nullfs drivers"
HOMEPAGE="https://github.com/coreydunn/nullfs"
SRC_URI="https://github.com/coreydunn/nullfs/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake all
}

src_install() {
	dobin nullfs
}
