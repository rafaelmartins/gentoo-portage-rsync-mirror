# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-python/repoze-who/repoze-who-2.2.ebuild,v 1.2 2014/12/12 23:23:22 mgorny Exp $

EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="repoze.who is an identification and authentication framework for WSGI."
HOMEPAGE="http://www.repoze.org"
SRC_URI="mirror://pypi/${PN:0:1}/repoze.who/repoze.who-${PV}.tar.gz"
S="${WORKDIR}/repoze.who-${PV}"

LICENSE="repoze"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
	dev-python/webob[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]
"
