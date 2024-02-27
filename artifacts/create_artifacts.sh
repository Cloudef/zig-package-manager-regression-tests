#!/bin/sh
tar -cf 1.tar template
tar -czf 1.tgz template
tar -czf 1.tar.gz template
tar -cJf 1.txz template
tar -cJf 1.tar.xz template
tar --zstd -cf 1.tzst template
tar --zstd -cf 1.tar.zst template
file 1.*
