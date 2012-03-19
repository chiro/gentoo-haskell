# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI=4

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Utilities for dealing with IEEE floating point numbers"
HOMEPAGE="http://github.com/patperry/hs-ieee754"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.8.2
		!elibc_glibc? ( sys-libs/glibc )"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.0"
