# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Test Utililty Pack for HUnit and QuickCheck"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/testpack"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""

RDEPEND="dev-haskell/hunit:=[profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-haskell/quickcheck-2.1.0.3:=[profile?]
		dev-haskell/random:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

PATCHES=("${FILESDIR}/${PN}-2.1.2-quickcheck-2.5.patch")

src_prepare() {
	base_src_prepare

	cabal_chdeps \
		'QuickCheck >= 2.1.0.3 && < 2.5' 'QuickCheck >= 2.1.0.3'
}