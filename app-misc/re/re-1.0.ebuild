# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="CLI slideshow viewer"
HOMEPAGE="https://github.com/coreydunn/re"
SRC_URI="https://github.com/coreydunn/re/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

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
	#default
	echo "Installing to: '${D}'"
	echo "emake DESTDIR="${D}" install"
	emake DESTDIR="${D}" install
}
