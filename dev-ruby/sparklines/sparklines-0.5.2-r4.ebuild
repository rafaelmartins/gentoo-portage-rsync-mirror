# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/sparklines/sparklines-0.5.2-r4.ebuild,v 1.5 2015/04/11 05:40:27 graaff Exp $

EAPI=5
USE_RUBY="ruby19 ruby20"

RUBY_FAKEGEM_TASK_DOC=""

RUBY_FAKEGEM_EXTRADOC="History.txt README.txt"

inherit ruby-fakegem

DESCRIPTION="Create sparklines, small graphs to be used inline in texts"
HOMEPAGE="http://sparklines.rubyforge.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-macos"
IUSE=""

RDEPEND="dev-ruby/rmagick"

ruby_add_bdepend test "dev-ruby/tidy_table dev-ruby/dust"

each_ruby_test() {
	${RUBY} -I. test/test_all.rb || die
}
