TERMUX_PKG_HOMEPAGE=https://github.com/fadhil3310/command-not-found
TERMUX_PKG_DESCRIPTION="Suggest installation of packages in interactive shell sessions"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.1.0
TERMUX_PKG_REVISION=19
TERMUX_PKG_SRCURL=https://github.com/fadhil3310/command-not-found/archive/refs/tags/Release.tar.gz
TERMUX_PKG_SHA256=897c3e3e60739cc8a700db0370cb70dae8220fb88c9bcdc4f21f995d0c4757a4
TERMUX_PKG_DEPENDS="libc++"

termux_step_pre_configure() {
	export TERMUX_PREFIX
	export TERMUX_SCRIPTDIR
	termux_setup_nodejs
}
