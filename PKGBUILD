# Maintainer: tippfehlr <tippfehlr at gmail dot com>

pkgname=radicle-node-bin
# there are no versions attached to the binaries, just upload dates.
pkgver=20240403
_srchash="ea69168f44b1b5a1cfde6e84def408895f6c0b65"
pkgrel=1
pkgdesc="open source, peer-to-peer code collaboration stack built on Git - node"
arch=('x86_64' 'aarch64')
license=('Apache-2.0 OR MIT')
url="https://app.radicle.xyz/nodes/seed.radicle.xyz/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5"
_srcurl="https://files.radicle.xyz/$_srchash/$CARCH-unknown-linux-musl"
_license_url="https://seed.radicle.xyz/raw/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5/ea69168f44b1b5a1cfde6e84def408895f6c0b65/LICENSE-MIT"
_license_sha256sum="fff889db903497b59500b5171806c511b3c83df1100532c2f7aa8f96af46cc4d"
_prefix=$pkgname-$pkgver
source_x86_64=(
	$_prefix-radicle-node::$_srcurl/radicle-node
	$_prefix-radicle-node.1::$_srcurl/radicle-node.1
	$_prefix-LICENSE-MIT::$_license_url
	radicle-node.service
)
source_aarch64=(
	$_srcurl/radicle-node
	$_srcurl/radicle-node.1
	$_prefix-LICENSE-MIT::$_license_url
	radicle-node.service
)
sha256sums_x86_64=(
	'504430d00a8311a75d506292821d338cd54ba57515898576fc71146818962c92'
	'b7bfd9063001af48a6ef3510f15a758dc2aa039179d4bbdd426192852b80a982'
	$_license_sha256sum
	'SKIP'
)
sha256sums_aarch64=(
	'7e5a9eeff274ca1256397ebb0a1717123cb5f82f4385165487bc361e11692c21'
	'd9bc2c1c200e4baa8ed6b4743257953f1ed448bfa5e5888479e50a62b1bed5f2'
	$_license_sha256sum
	'SKIP'
)
install="radicle-node-bin.install"
provides=('radicle-node')
conflicts=('radicle-node')

package() {
	install -Dm755 "$_prefix-radicle-node" "$pkgdir/usr/bin/radicle-node"
	install -Dm644 "radicle-node.service" "$pkgdir/usr/lib/systemd/user/radicle-node.service"
	install -Dm644 "$_prefix-radicle-node.1" "$pkgdir/usr/share/man/man1/radicle-node.1"
	install -Dm644 "$_prefix-LICENSE-MIT" "$pkgdir/usr/share/licenses/$pkgname/LICENSE-MIT"
}
