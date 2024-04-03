# Maintainer: tippfehlr <tippfehlr at gmail dot com>

pkgname=radicle-node-bin
epoch=1
pkgver='1.0.0rc.2'
_srchash="ea69168f44b1b5a1cfde6e84def408895f6c0b65"
pkgrel=1
pkgdesc="open source, peer-to-peer code collaboration stack built on Git - node"
arch=('x86_64' 'aarch64')
license=('Apache-2.0 OR MIT')
url="https://app.radicle.xyz/nodes/seed.radicle.xyz/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5"
_srcurl="https://files.radicle.xyz/$_srchash/$CARCH-unknown-linux-musl"
_license_url="https://seed.radicle.xyz/raw/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5/081af03362b5bd3d637ee22011a4e5b51a1f1498/LICENSE-MIT"
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
sha256sums_x86_64=('504430d00a8311a75d506292821d338cd54ba57515898576fc71146818962c92'
                   'b7bfd9063001af48a6ef3510f15a758dc2aa039179d4bbdd426192852b80a982'
                   'fff889db903497b59500b5171806c511b3c83df1100532c2f7aa8f96af46cc4d'
                   '38071bb7e6c362cd587e30e42f42abcb9960612276da88c9099367713e4ca412')
sha256sums_aarch64=('504430d00a8311a75d506292821d338cd54ba57515898576fc71146818962c92'
                    'b7bfd9063001af48a6ef3510f15a758dc2aa039179d4bbdd426192852b80a982'
                    'fff889db903497b59500b5171806c511b3c83df1100532c2f7aa8f96af46cc4d'
                    '38071bb7e6c362cd587e30e42f42abcb9960612276da88c9099367713e4ca412')
install="radicle-node-bin.install"
provides=('radicle-node')
conflicts=('radicle-node')

package() {
	install -Dm755 "$_prefix-radicle-node" "$pkgdir/usr/bin/radicle-node"
	install -Dm644 "radicle-node.service" "$pkgdir/usr/lib/systemd/user/radicle-node.service"
	install -Dm644 "$_prefix-radicle-node.1" "$pkgdir/usr/share/man/man1/radicle-node.1"
	install -Dm644 "$_prefix-LICENSE-MIT" "$pkgdir/usr/share/licenses/$pkgname/LICENSE-MIT"
}
