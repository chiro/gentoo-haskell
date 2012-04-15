# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Graphviz bindings for Haskell."
HOMEPAGE="http://projects.haskell.org/graphviz/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

COMMONDEPS="=dev-haskell/colour-2.3*[profile?]
		=dev-haskell/dlist-0.5*[profile?]
		dev-haskell/extensible-exceptions[profile?]
		=dev-haskell/fgl-5.4*[profile?]
		=dev-haskell/polyparse-1.7*[profile?]
		dev-haskell/text[profile?]
		>=dev-haskell/transformers-0.2[profile?] <dev-haskell/transformers-0.4[profile?]
		dev-haskell/wl-pprint-text[profile?]
		>=dev-lang/ghc-6.10.1"

DEPEND="${COMMONDEPS}
		>=dev-haskell/cabal-1.6
		test? ( >=dev-haskell/quickcheck-2.3:2 )
		"

RDEPEND="${COMMONDEPS}
		media-gfx/graphviz"

PATCHES=("${FILESDIR}"/${P}-tf-0.3.patch)

src_configure() {
	cabal_src_configure $(cabal_flag test)
}
