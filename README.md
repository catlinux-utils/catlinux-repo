# catlinux-repo

## Instalation

1. Add the key to the pacman keyring:

```
   sudo pacman-key --recv-keys E40E7EDDF0FF9143
   sudo pacman-key --lsign-key E40E7EDDF0FF9143
```

2. Install the catlinux-mirrorlist and catlinux-keyring packages:

```
   sudo pacman -U https://github.com/catlinux-utils/catlinux-repo/raw/refs/heads/main/x86_64/catlinux-mirrorlist-1-1-any.pkg.tar.zst
   sudo pacman -U https://github.com/catlinux-utils/catlinux-repo/raw/refs/heads/main/x86_64/catlinux-keyring-20250302-1-any.pkg.tar.zst
```

3. Add the following lines to the `/etc/pacman.conf` file:

```
   [catlinux]
   Include = /etc/pacman.d/catlinux-mirrorlist
```
