# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile test-suite" # fails to build docs: haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A simple terminal UI library"
HOMEPAGE="https://github.com/coreyoconnor/vty"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # fails to build

RDEPEND=">=dev-haskell/mtl-1.1.1.0:=[profile?] <dev-haskell/mtl-2.2:=[profile?]
	>=dev-haskell/parallel-2.2:=[profile?] <dev-haskell/parallel-3.3:=[profile?]
	>=dev-haskell/parsec-2:=[profile?] <dev-haskell/parsec-4:=[profile?]
	dev-haskell/string-qq:=[profile?]
	>=dev-haskell/terminfo-0.3:=[profile?] <dev-haskell/terminfo-0.5:=[profile?]
	=dev-haskell/utf8-string-0.3*:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?]
	>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.14.0
	test? ( >=dev-haskell/quickcheck-2.4
		=dev-haskell/random-1.0*
	)"

src_prepare() {
	cabal_chdeps \
		'Cabal == 1.17.*' 'Cabal >= 1.10' \
		'terminfo >= 0.3 && < 0.4' 'terminfo >= 0.3 && < 0.5'
}

src_configure() {
	haskell-cabal_src_configure --disable-tests
}
