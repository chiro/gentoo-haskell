# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Name resolution library for Haskell"
HOMEPAGE="http://documentup.com/haskell-suite/haskell-names"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/cabal-1.14:=[profile?] <dev-haskell/cabal-1.20:=[profile?]
	dev-haskell/data-lens:=[profile?]
	dev-haskell/data-lens-template:=[profile?]
	>=dev-haskell/haskell-packages-0.2:=[profile?]
	>=dev-haskell/haskell-src-exts-1.14:=[profile?]
	dev-haskell/hse-cpp:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/tagged:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/traverse-with-class:=[profile?]
	dev-haskell/type-eq:=[profile?]
	>=dev-haskell/uniplate-1.5.1:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/filemanip
		>=dev-haskell/pretty-show-1.6.1
		dev-haskell/tasty
		dev-haskell/tasty-golden
		dev-haskell/utf8-string )
"

src_prepare() {
	cabal_chdeps \
		'pretty-show >= 1.6.1 && <= 1.6.2' 'pretty-show >= 1.6.1'
}
