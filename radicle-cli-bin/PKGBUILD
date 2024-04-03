# Maintainer: tippfehlr <tippfehlr at gmail dot com>
# Contributor: Adam Szkoda <adaszko at gmail dot com>

pkgname=radicle-cli-bin
# there are no versions attached to the binaries, just upload dates.
pkgver=20240403
_srchash="ea69168f44b1b5a1cfde6e84def408895f6c0b65"
pkgrel=1
pkgdesc="cli for radicle, a peer-to-peer GitHub alternative"
arch=('x86_64' 'aarch64')
url="https://app.radicle.xyz/nodes/seed.radicle.xyz/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5"
_srcurl="https://files.radicle.xyz/$_srchash/$CARCH-unknown-linux-musl"
_license_url="https://seed.radicle.xyz/raw/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5/ea69168f44b1b5a1cfde6e84def408895f6c0b65/LICENSE-MIT"
_license_sha256sum="fff889db903497b59500b5171806c511b3c83df1100532c2f7aa8f96af46cc4d"
_prefix=$pkgname-$pkgver
source_x86_64=(
	$_prefix-rad::$_srcurl/rad
	$_prefix-rad-web::$_srcurl/rad-web
	$_prefix-git-remote-rad::$_srcurl/git-remote-rad
	$_prefix-rad.1::$_srcurl/rad.1
	$_prefix-rad-patch.1::$_srcurl/rad-patch.1
	$_prefix-git-remote-rad.1::$_srcurl/git-remote-rad.1
	$_prefix-LICENSE-MIT::$_license_url
)
source_aarch64=(
	$_prefix-rad::$_srcurl/rad
	$_prefix-rad-web::$_srcurl/rad-web
	$_prefix-git-remote-rad::$_srcurl/git-remote-rad
	$_prefix-rad.1::$_srcurl/rad.1
	$_prefix-rad-patch.1::$_srcurl/rad-patch.1
	$_prefix-git-remote-rad.1::$_srcurl/git-remote-rad.1
	$_prefix-LICENSE-MIT::$_license_url
)
sha256sums_x86_64=(
	'acd250af4cc0666b5f013422d2032be1791ed88f10863c68949c5b5a2035cc54'
	'3519b26cb86cf7135c468982625b88a3e78fb4c8df6e49b98789a6a9db6b83c9'
	'ea12193fff03efcb5561dbd07a03527dd064067635fbf91abccc866630744b58'
	'fb4045b17feed04bb7a1e1ca712dd06df4fe85690ef2304f19a99752d38bfb2a'
	'b094abea90c9e6f8d881a694b2ce0f91cc7380f69d8d8367de93465f06ef58b7'
	'6857d4eecd894fcfcb4a6e2afca93a250441920f510cebbebf3e0442ab94f54c'
	$_license_sha256sum
)
sha256sums_aarch64=(
	'87eaaaa2f27002c1781726ad3febce9e64db46df4f1193af1f99916b5629c322'
	'7408162dc98bce839a52389dcd61154ae1d8570d9abc83c0ae196f39d66b50e0'
	'1aae257dc009ab88ad94b0f325f54162203b2914371d13e54106588b8c39e13f'
	'27cbc2dccab448f60f756a10e1ee928ec8d4434455ee1a9c414cd08cdd93ec8d'
	'5c1d35458ef3e2588878473b674d063dfb8c16f6e0eee6a890bf8fc563492ae8'
	'f132092d14e077f11c516ebad725ed15b2c78111023d0fa956a1fa3763dedc26'
	$_license_sha256sum
)
install="radicle-cli-bin.install"
provides=('radicle-cli')
conflicts=('radicle-cli')
license=('Apache-2.0 OR MIT')

package() {
	install -Dm755 "$_prefix-rad" "$pkgdir/usr/bin/rad"
	install -Dm755 "$_prefix-rad-web" "$pkgdir/usr/bin/rad-web"
	install -Dm755 "$_prefix-git-remote-rad" "$pkgdir/usr/bin/git-remote-rad"

	install -Dm644 "$_prefix-rad.1" "$pkgdir/usr/share/man/man1/rad.1"
	install -Dm644 "$_prefix-rad-patch.1" "$pkgdir/usr/share/man/man1/rad-patch.1"
	install -Dm644 "$_prefix-git-remote-rad.1" "$pkgdir/usr/share/man/man1/git-remote-add.1"

	install -Dm644 "$_prefix-LICENSE-MIT" "$pkgdir/usr/share/licenses/$pkgname/LICENSE-MIT"
}
