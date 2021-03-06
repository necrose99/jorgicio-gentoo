# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

USE_RUBY="ruby24 ruby25 ruby26"

RUBY_FAKEGEM_TASK_TEST="spec"
RUBY_FAKEGEM_TASK_DOC="yard"

RUBY_FAKEDIR_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC="${PN}.gemspec"

inherit ruby-fakegem

DESCRIPTION="Ruby implementation of OpenCV library"
HOMEPAGE="https://github.com/ruby-opencv/ruby-opencv"

SRC_URI="${HOMEPAGE}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~x86 ~amd64 ~x86-linux ~amd64-linux ~arm ~ppc ~ppc64"

LICENSE="BSD"
SLOT="0"
IUSE=""

DEPEND="
	>=media-libs/opencv-2.4.0
"
RDEPEND="${DEPEND}"

ruby_add_bdepend "doc? (
	dev-ruby/jeweler
	>=dev-ruby/yard-0.8.7
)"

ruby_add_bdepend "test? (
	dev-ruby/bacon
	dev-ruby/jeweler
	dev-ruby/rspec:2
)"
