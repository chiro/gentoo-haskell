# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Ways to write a file cautiously, to reduce the chances of problems such as data loss due to crashes or power failures"
HOMEPAGE="http://hackage.haskell.org/package/cautious-file"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.12.3"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

RESTRICT="test"
# broken test suite; expects the package to be already installed

src_prepare() {
	sed -e 's@directory == 1.1.\*@directory >= 1.0 \&\& < 1.2@' \
		-e 's@filepath == 1.2.\*@filepath >= 1.1 \&\& < 1.4@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies for ghc 6.12.3"
}
