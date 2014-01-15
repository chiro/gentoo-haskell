# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal git-2

DESCRIPTION="Runs commands on remote machines using ssh"
HOMEPAGE="https://github.com/hamishmack/vado"
EGIT_REPO_URI="https://github.com/hamishmack/vado.git"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10.4.0:=[profile?]
		dev-haskell/quickcheck:=[profile?]
		>=dev-haskell/text-0.11.3.1:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

src_prepare() {
	cabal_chdeps \
		'attoparsec >=0.10.4.0 && <0.11' 'attoparsec >=0.10.4.0' \
		'text >=0.11.3.1 && <0.12' 'text >=0.11.3.1'
}
