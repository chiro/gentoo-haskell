# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Abstract, parameterized interface to mutable Deques."
HOMEPAGE="https://github.com/rrnewton/haskell-lockfree-queue/wiki"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="usecas"

RDEPEND="dev-haskell/hunit:=[profile?]
		dev-haskell/random:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/test-framework-0.6
			>=dev-haskell/test-framework-hunit-0.2.7
		)"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag usecas usecas)
}