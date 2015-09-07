#!/bin/bash

if [[ $1 == "clean" ]]; then
	make CFLAGS_MODULE=-fno-pic \
	KERNEL_BUILD=../../ZTab/BUILD/kernel-LP454/ \
	KERNEL_CROSS_COMPILE=arm-linux-androideabi- \
	ARCH=arm \
	clean
elif [[ $1 == "arm64" ]]; then
	make CFLAGS_MODULE="-fno-pic -DARM64" \
        KERNEL_BUILD=../../Xperia_Z4/BUILD/kernel/ \
        KERNEL_CROSS_COMPILE=aarch64-linux-gnu- \
	ARCH=arm64
else
        make CFLAGS_MODULE=-fno-pic \
        KERNEL_BUILD=../../ZTab/BUILD/kernel-LP454/ \
        KERNEL_CROSS_COMPILE=arm-linux-androideabi- \
	ARCH=arm
fi
