# Maintainer: tippfehlr <tippfehlr at gmail dot com>

pkgbase=radicle-bin
pkgname=(radicle-{cli,node,httpd}-bin)
epoch=1
pkgver='1.0.0rc.2'
_srchash="ea69168f44b1b5a1cfde6e84def408895f6c0b65"
pkgrel=1
pkgdesc="open source, peer-to-peer code collaboration stack built on Git"
arch=('x86_64' 'aarch64')
license=('Apache-2.0 OR MIT')
url="https://app.radicle.xyz/nodes/seed.radicle.xyz/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5"
_license_url="https://seed.radicle.xyz/raw/rad:z3gqcJUoA1n9HaHKufZs5FCSGazv5/081af03362b5bd3d637ee22011a4e5b51a1f1498/LICENSE-MIT"
_prefix=$pkgbase-$pkgver
source_x86_64=(
	"$_prefix::https://files.radicle.xyz/$_srchash/x86_64-unknown-linux-musl/radicle-x86_64-unknown-linux-musl.tar.gz"
	"$_prefix-LICENSE-MIT::$_license_url"
	"radicle-node.service"
	"radicle-httpd.service"
)
source_aarch64=(
	"https://files.radicle.xyz/$_srchash/aarch64-unknown-linux-musl/radicle-aarch64-unknown-linux-musl.tar.gz"
	"$_prefix-LICENSE-MIT::$_license_url"
	"radicle-node.service"
	"radicle-httpd.service"
)
sha256sums_x86_64=('f04b51f02e5e1bfdfce033f938fbfe07e7f08a4bf1b15d82d302421f2e9a1a5f'
                   'fff889db903497b59500b5171806c511b3c83df1100532c2f7aa8f96af46cc4d'
                   '38071bb7e6c362cd587e30e42f42abcb9960612276da88c9099367713e4ca412'
                   '1da5107935e110e8d65178cd0b21d7b2a21649f25c85c7019ee4061fc2169baf')
sha256sums_aarch64=('e163213b85033e2c28f69c08783ffbe79899728d89e78f783634d9c29bb329f8'
                    'fff889db903497b59500b5171806c511b3c83df1100532c2f7aa8f96af46cc4d'
                    '38071bb7e6c362cd587e30e42f42abcb9960612276da88c9099367713e4ca412'
                    '1da5107935e110e8d65178cd0b21d7b2a21649f25c85c7019ee4061fc2169baf')

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
