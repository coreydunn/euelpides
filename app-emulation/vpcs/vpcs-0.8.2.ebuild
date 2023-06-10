# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=8

DESCRIPTION="Simulate up to 9 PCs in place of VMware boxes in a Dynamips network"
HOMEPAGE="https://github.com/GNS3/vpcs"
SRC_URI="https://github.com/GNS3/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND=""

src_compile() {
	emake -C src -f Makefile.linux
}

src_install() {
	dobin src/vpcs
	doman man/vpcs.1
}
