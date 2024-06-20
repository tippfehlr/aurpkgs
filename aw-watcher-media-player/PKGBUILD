# Maintainer: tippfehlr <tippfehlr at tippfehlr dot eu>

pkgname='aw-watcher-media-player'
pkgver=1.1.0
pkgrel=1
pkgdesc="Watcher of system's currently playing media for ActivityWatch"
arch=('x86_64')
url="https://github.com/2e3s/$pkgname"
license=('Unlicense')
depends=('activitywatch')
makedepends=('git' 'cargo')
conflicts=($pkgname)

source=("git+$url#tag=v$pkgver")
sha512sums=('a15f7b1941534e3e15593b7baef4ac7a99fc52b6fb5d240f604d18f27f33e48b83a4b2f9fb7c904cbd5dbcda8ac7a24493c4d378bdcb7648e2d7d49530908595')

prepare() {
  cd "$srcdir/$pkgname"
  export RUSTUP_TOOLCHAIN=stable
  cargo fetch --locked --target "$CARCH-unknown-linux-gnu"
}

build() {
  cd "$srcdir/$pkgname"
  export RUSTUP_TOOLCHAIN=stable
  export CARGO_TARGET_DIR=target
  cargo build --frozen --release

}

package() {
  cd "$srcdir/$pkgname"
  install -Dm755 "target/release/aw-watcher-media-player" -t "$pkgdir/usr/bin/"
  install -Dm644 "visualization/index.html" -t "$pkgdir/usr/share/$pkgname/visualization/"
  install -Dm644 "README.md" -t "$pkgdir/usr/share/doc/$pkgname/"
}
