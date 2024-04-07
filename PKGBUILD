# Maintainer: tippfehlr <tippfehlr at gmail dot com>

pkgbase=radicle-bin
pkgname=(radicle-{cli,node,httpd}-bin)
epoch=1
pkgver='1.0.0rc.3'
_commit="bd8e0ebcda8f6f06dc20641a71614e3778a43fea"
pkgrel=1
pkgdesc="open source, peer-to-peer code collaboration stack built on Git"
arch=('x86_64' 'aarch64')
license=('Apache-2.0 OR MIT')
url="https://app.radicle.xyz/nodes/seed.radicle.xyz/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5"
_license_url="https://seed.radicle.xyz/raw/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5/081af03362b5bd3d637ee22011a4e5b51a1f1498/LICENSE-MIT"
_prefix=$pkgbase-$pkgver
source_x86_64=(
	"https://files.radicle.xyz/$_commit/x86_64-unknown-linux-musl/radicle-x86_64-unknown-linux-musl.tar.gz"
	"$_prefix-LICENSE-MIT::$_license_url"
	"radicle-node.service"
	"radicle-httpd.service"
)
source_aarch64=(
	"https://files.radicle.xyz/$_commit/aarch64-unknown-linux-musl/radicle-aarch64-unknown-linux-musl.tar.gz"
	"$_prefix-LICENSE-MIT::$_license_url"
	"radicle-node.service"
	"radicle-httpd.service"
)
sha256sums_x86_64=(
	'a1a65bb519d4041797f48e1c7e005ac3c0188e10b7b3ab0b0603e1d71909189f'
	'fff889db903497b59500b5171806c511b3c83df1100532c2f7aa8f96af46cc4d'
	'SKIP'
	'SKIP'
)
sha256sums_aarch64=(
	'07d0b0b89d099093051b0aa16d8f61ffbe65707b24317d8432a97c6041abe39d'
	'fff889db903497b59500b5171806c511b3c83df1100532c2f7aa8f96af46cc4d'
	'SKIP'
	'SKIP'
)

package_radicle-cli-bin() {
	pkgdesc+=" - cli"
	install="radicle-cli-bin.install"
	provides=('radicle-cli')
	conflicts=('radicle-cli')

	pushd "radicle-$CARCH-unknown-linux-musl" >/dev/null
	install -Dm755 "rad" "$pkgdir/usr/bin/rad"
	install -Dm755 "rad-web" "$pkgdir/usr/bin/rad-web"
	install -Dm755 "git-remote-rad" "$pkgdir/usr/bin/git-remote-rad"

	install -Dm644 "rad.1" "$pkgdir/usr/share/man/man1/rad.1"
	install -Dm644 "rad-patch.1" "$pkgdir/usr/share/man/man1/rad-patch.1"
	install -Dm644 "git-remote-rad.1" "$pkgdir/usr/share/man/man1/git-remote-add.1"
	popd >/dev/null
	install -Dm644 "$_prefix-LICENSE-MIT" "$pkgdir/usr/share/licenses/$pkgname/LICENSE-MIT"
}

package_radicle-node-bin() {
	pkgdesc+=" - node"
	install="radicle-node-bin.install"
	provides=('radicle-node')
	conflicts=('radicle-node')

	pushd "radicle-$CARCH-unknown-linux-musl" >/dev/null
	install -Dm755 "radicle-node" "$pkgdir/usr/bin/radicle-node"
	install -Dm644 "radicle-node.1" "$pkgdir/usr/share/man/man1/radicle-node.1"
	popd >/dev/null
	install -Dm644 "radicle-node.service" "$pkgdir/usr/lib/systemd/user/radicle-node.service"
	install -Dm644 "$_prefix-LICENSE-MIT" "$pkgdir/usr/share/licenses/$pkgname/LICENSE-MIT"
}

package_radicle-httpd-bin() {
	pkgdesc+=" - httpd"
	install="radicle-httpd-bin.install"
	provides=('radicle-httpd')
	conflicts=('radicle-httpd')

	pushd "radicle-$CARCH-unknown-linux-musl" >/dev/null
	install -Dm755 "radicle-httpd" "$pkgdir/usr/bin/radicle-httpd"
	install -Dm644 "radicle-httpd.1" "$pkgdir/usr/share/man/man1/radicle-httpd.1"
	popd >/dev/null
	install -Dm644 "radicle-httpd.service" "$pkgdir/usr/lib/systemd/user/radicle-httpd.service"
	install -Dm644 "$_prefix-LICENSE-MIT" "$pkgdir/usr/share/licenses/$pkgname/LICENSE-MIT"
}
