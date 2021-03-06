# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal git-2

DESCRIPTION="Efficient Arrays"
HOMEPAGE="http://code.haskell.org/vector"
SRC_URI=""
EGIT_REPO_URI="https://github.com/haskell/vector"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-haskell/primitive-0.5.0.1:=[profile?]
		<dev-haskell/primitive-0.6:=[profile?]
		>=dev-lang/ghc-6.12.3:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"
