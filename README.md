

# tool-initramfs-extract

* [tool-initramfs-extract](https://samwhelp.github.io/tool-initramfs-extract/) ([GitHub](https://github.com/samwhelp/tool-initramfs-extract))
* [initramfs-extract](https://github.com/samwhelp/tool-initramfs-extract/blob/main/src/asset/bin/initramfs-extract)


## Subject

* [Prepare](#prepare)
* [Manual Install](#manual-install)
* [Usage](#usage)
* [Link](#link)


## Prepare

``` sh
grep 'COMPRESS:' /etc/initramfs-tools/initramfs.conf
```

show

```
# COMPRESS: [ gzip | bzip2 | lz4 | lzma | lzop | xz | zstd ]
```

install (de)compress utils


``` sh
sudo apt-get install cpio gzip bzip2 xz-utils zstd lz4 lzop
```


## Manual Install

install [curl](https://packages.ubuntu.com/jammy/curl)

``` sh
sudo apt-get install curl
```

download [initramfs-extract](https://raw.githubusercontent.com/samwhelp/tool-initramfs-extract/main/src/asset/bin/initramfs-extract) to ~/.local/bin/initramfs-extract,

``` sh
curl -fLo ~/.local/bin/initramfs-extract --create-dirs https://raw.githubusercontent.com/samwhelp/tool-initramfs-extract/main/src/asset/bin/initramfs-extract
chmod 755 ~/.local/bin/initramfs-extract
```


## Usage

### Extract /boot/initrd.img

run

``` sh
initramfs-extract /boot/initrd.img initrd-root
```

or run

``` sh
initramfs-extract "/boot/initrd.img-$(uname -r)" initrd-root
```

> `unmkinitramfs -v /boot/initrd.img initramfs`

> `unmkinitramfs -v "/boot/initrd.img-$(uname -r)" initramfs`


### Extract initrd (other compress format)

create new initrd

``` sh
mkinitramfs -c bzip2 -o initrd.img
```

then extract

``` sh
initramfs-extract initrd.img initrd-root
```

> More [case](https://github.com/samwhelp/tool-initramfs-extract/tree/main/src/asset/case)

> `unmkinitramfs -v initrd.img initramfs`


## Link

* [Why is it that my initrd only has one directory, namely, 'kernel'?](https://unix.stackexchange.com/questions/163346/why-is-it-that-my-initrd-only-has-one-directory-namely-kernel)
* [How to extract initrd which contain microcode](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=362052#forumpost362052)
