# openwrt-tcp2udp

## Build
```bash
cd openwrt

# 获取源码
git clone https://github.com/w311ang/openwrt-tcp2udp.git package/tcp2udp

# 选中 Network -> tcp2udp
make menuconfig

# 编译 tcp2udp
make package/tcp2udp/{clean,compile} V=s
```

## Thanks
https://www.ohyee.cc/post/note_compile_go_to_openwrt

https://github.com/shynome/shynome.github.io/issues/17

https://github.com/coolsnowwolf/packages/blob/master/utils/restic/Makefile

https://github.com/pexcn/openwrt-dns2tcp/blob/master/Makefile

https://github.com/coolsnowwolf/packages/blob/master/net/irtt/Makefile
