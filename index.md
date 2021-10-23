# Cloudflare_WARP_Connect

警告⚠:目前此方法已不可用于解锁Netflix!!!

需要配合v2ray/xray出口规则修改，原生ip请忽略！

流媒体检测脚本:
```
bash <(curl -L -s https://raw.githubusercontent.com/lmc999/RegionRestrictionCheck/main/check.sh)
```

1.脚本运行:

`CentOS7/8(vps仅提供ipv4网络):`
```
bash <(curl -L -s https://raw.githubusercontent.com/HXHGTS/Cloudflare_WARP_Connect/main/netflix_support.sh)
```

`Debian/Ubuntu(vps仅提供ipv4网络):`
```
bash <(curl -L -s https://raw.githubusercontent.com/HXHGTS/TCPOptimization/master/KernelUpdate_debian10.sh)
bash <(curl -L -s https://raw.githubusercontent.com/HXHGTS/Cloudflare_WARP_Connect/main/netflix_support_debian.sh)
```

`CentOS7/8(vps仅提供ipv6网络):`
```
bash <(curl -L -s https://raw.githubusercontent.com/HXHGTS/Cloudflare_WARP_Connect/main/netflix_support_ipv6.sh)
```

`Debian/Ubuntu(vps仅提供ipv6网络):`
```
bash <(curl -L -s https://raw.githubusercontent.com/HXHGTS/Cloudflare_WARP_Connect/main/netflix_support_debian_ipv6.sh)
```

2.在`/usr/local/etc/xray`文件夹或`/usr/local/etc/v2ray`中找到配置文件`config.json`并按仓库中[模板格式](https://raw.githubusercontent.com/HXHGTS/Cloudflare_WARP_Connect/main/config.json)修改

3.应该可以正常使用了
