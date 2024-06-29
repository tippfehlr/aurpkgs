# Maintainer: buckket <felix+arch at buckket dot org>
# Maintainer: tippfehlr <tippfehlr at tippfehlr dot eu>

pkgname=autorestic
pkgver=1.8.2
pkgrel=2
pkgdesc='Config driven, easy backup cli for restic'
arch=('i686' 'x86_64' 'armv7h' 'aarch64')
url="https://github.com/cupcakearmy/$pkgname"
license=('Apache-2.0')
depends=('restic')
makedepends=('go')
source=("${pkgname}-${pkgver}.tar.gz::$url/archive/refs/tags/v$pkgver.tar.gz")
sha256sums=('847a661bcf8bfdf282eca0dfd677293ad932726d357899c15a85b9238c4ea3da')

prepare() {
  cd "$pkgname-$pkgver"
  mkdir -p build/

  # download go modules so build() works offline
  go mod download
}

build() {
  cd "$pkgname-$pkgver"
  export CGO_CPPFLAGS="${CPPFLAGS}"
  export CGO_CFLAGS="${CFLAGS}"
  export CGO_CXXFLAGS="${CXXFLAGS}"
  export CGO_LDFLAGS="${LDFLAGS}"
  export GOFLAGS="-buildmode=pie -trimpath -ldflags=-linkmode=external -mod=readonly -modcacherw"
  go build -o build

  for shell in bash zsh fish; do
    ./build/$pkgname completion $shell >"build/${shell}_completion"
  done
}

package() {
  cd "$pkgname-$pkgver"
  install -Dm755 "build/$pkgname" "$pkgdir/usr/bin/$pkgname"

  install -Dm644 "build/bash_completion" "$pkgdir/usr/share/bash-completion/completions/$pkgname"
  install -Dm644 "build/zsh_completion" "$pkgdir/usr/share/zsh/site-functions/_$pkgname"
  install -Dm644 "build/fish_completion" "$pkgdir/usr/share/fish/vendor_completions.d/$pkgname.fish"
}
