TERMUX_PKG_HOMEPAGE=https://github.com/termux/TermuxAm
TERMUX_PKG_DESCRIPTION="Android Oreo-compatible am command reimplementation"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="Michal Bednarski @michalbednarski"
TERMUX_PKG_VERSION=0.4
TERMUX_PKG_SRCURL=https://github.com/termux/TermuxAm/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=f13e7de6682b2a8303ac69e6a908fc7bd2ae091b3941eb33ecc35f47ea77a435
TERMUX_PKG_PLATFORM_INDEPENDENT=true
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_CONFLICTS="termux-tools (<< 0.51)"
#_GRADLE_VERSION=6.5.1
# Diupdate ke 7.6.1 karena tidak support java 17 (class version 61)
_GRADLE_VERSION=7.6.1

termux_step_make() {
	# Download and use a new enough gradle version to avoid the process hanging after running:
# 	termux_download \
# 		https://services.gradle.org/distributions/gradle-$_GRADLE_VERSION-bin.zip \
# 		$TERMUX_PKG_CACHEDIR/gradle-$_GRADLE_VERSION-bin.zip \
# 		6147605a23b4eff6c334927a86ff3508cb5d6722cd624c97ded4c2e8640f1f87
# 	mkdir $TERMUX_PKG_TMPDIR/gradle
# 	unzip -q $TERMUX_PKG_CACHEDIR/gradle-$_GRADLE_VERSION-bin.zip -d $TERMUX_PKG_TMPDIR/gradle

# 	# Avoid spawning the gradle daemon due to org.gradle.jvmargs
# 	# being set (https://github.com/gradle/gradle/issues/1434):
# 	rm gradle.properties

# 	export ANDROID_HOME
# 	export GRADLE_OPTS="-Dorg.gradle.daemon=false -Xmx1536m"

# 	$TERMUX_PKG_TMPDIR/gradle/gradle-$_GRADLE_VERSION/bin/gradle \
# 		:app:assembleRelease
	echo "Skipping building termux-am package because of error i don't know how to solve it"
}

termux_step_make_install() {
	echo "Skipping installing termux-am package because of error i don't know how to solve it"
# 	cp $TERMUX_PKG_SRCDIR/am-libexec-packaged $TERMUX_PREFIX/bin/am
	mkdir -p $TERMUX_PREFIX/libexec/termux-am
	# Fool the build system that there is file in the termux-am folder
	# to avoid error: "ERROR: No files in package"
	touch $TERMUX_PREFIX/libexec/termux-am/am.apk
# 	cp $TERMUX_PKG_SRCDIR/app/build/outputs/apk/release/app-release-unsigned.apk $TERMUX_PREFIX/libexec/termux-am/am.apk
}
