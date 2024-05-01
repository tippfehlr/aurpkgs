# Maintainer: tippfehlr <tippfehlr at tippfehlr dot eu>

pkgbase=radicle-bin
pkgname=(radicle-bin radicle-{cli,node,httpd}-bin)
epoch=1
_version='1.0.0-rc.7'
pkgver=${_version/-/}
pkgrel=1
pkgdesc="open source, peer-to-peer code collaboration stack built on Git"
arch=('x86_64' 'aarch64')
license=('Apache-2.0 OR MIT')
url="https://app.radicle.xyz/nodes/seed.radicle.xyz/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5"
_license_url="https://seed.radicle.xyz/raw/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5/081af03362b5bd3d637ee22011a4e5b51a1f1498/LICENSE-MIT"
_prefix="$pkgbase-$epoch:$pkgver-$pkgrel"
_source=(
	"https://files.radicle.xyz/releases/$_version/radicle-${_version}-$CARCH-unknown-linux-musl.tar.xz"
	"$_prefix-LICENSE-MIT::$_license_url"
	"radicle-node.service"
	"radicle-httpd.service"
)
source_x86_64=(${_source[@]})
source_aarch64=(${_source[@]})
sha256sums_x86_64=(
	'de1a1f64c7ce18c2b7bc6d6a8d12cfd1dedf7c95e6444d579360d29154aa7274'
	'fff889db903497b59500b5171806c511b3c83df1100532c2f7aa8f96af46cc4d'
	'SKIP'
	'SKIP'
)
sha256sums_aarch64=(
	'c690f6a056d89d720d1df1fd997ad8b8fb4addaaba5d92bf734a5622f12e65be'
	'fff889db903497b59500b5171806c511b3c83df1100532c2f7aa8f96af46cc4d'
	'SKIP'
	'SKIP'
)
package_radicle-bin() {
	provides=('radicle')
	conflicts=('radicle')
	depends=(radicle-{cli,node,httpd}-bin)
}

package_radicle-cli-bin() {
	pkgdesc+=" - cli"
	provides=('radicle-cli')
	conflicts=('radicle-cli')

	pushd "radicle-${_version}-$CARCH-unknown-linux-musl" >/dev/null
	install -Dm755 "bin/rad" "$pkgdir/usr/bin/rad"
	install -Dm755 "bin/rad-web" "$pkgdir/usr/bin/rad-web"
	install -Dm755 "bin/git-remote-rad" "$pkgdir/usr/bin/git-remote-rad"

	install -Dm644 "man/man1/rad.1" "$pkgdir/usr/share/man/man1/rad.1"
	install -Dm644 "man/man1/rad-patch.1" "$pkgdir/usr/share/man/man1/rad-patch.1"
	install -Dm644 "man/man1/git-remote-rad.1" "$pkgdir/usr/share/man/man1/git-remote-rad.1"
	popd >/dev/null
	install -Dm644 "$_prefix-LICENSE-MIT" "$pkgdir/usr/share/licenses/$pkgname/LICENSE-MIT"
}

package_radicle-node-bin() {
	pkgdesc+=" - node"
	install="radicle-node-bin.install"
	provides=('radicle-node')
	conflicts=('radicle-node')

	pushd "radicle-${_version}-$CARCH-unknown-linux-musl" >/dev/null
	install -Dm755 "bin/radicle-node" "$pkgdir/usr/bin/radicle-node"
	install -Dm644 "man/man1/radicle-node.1" "$pkgdir/usr/share/man/man1/radicle-node.1"
	popd >/dev/null
	install -Dm644 "radicle-node.service" "$pkgdir/usr/lib/systemd/user/radicle-node.service"
	install -Dm644 "$_prefix-LICENSE-MIT" "$pkgdir/usr/share/licenses/$pkgname/LICENSE-MIT"
}

package_radicle-httpd-bin() {
	pkgdesc+=" - httpd"
	provides=('radicle-httpd')
	conflicts=('radicle-httpd')

	pushd "radicle-${_version}-$CARCH-unknown-linux-musl" >/dev/null
	install -Dm755 "bin/radicle-httpd" "$pkgdir/usr/bin/radicle-httpd"
	install -Dm644 "man/man1/radicle-httpd.1" "$pkgdir/usr/share/man/man1/radicle-httpd.1"
	popd >/dev/null
	install -Dm644 "radicle-httpd.service" "$pkgdir/usr/lib/systemd/user/radicle-httpd.service"
	install -Dm644 "$_prefix-LICENSE-MIT" "$pkgdir/usr/share/licenses/$pkgname/LICENSE-MIT"
}
