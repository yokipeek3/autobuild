#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
# DIY扩展二合一了，在此处可以增加插件
# 自行拉取插件之前请SSH连接进入固件配置里面确认过没有你要的插件再单独拉取你需要的插件
# 不要一下就拉取别人一个插件包N多插件的，多了没用，增加编译错误，自己需要的才好


# 后台IP设置
export Ipv4_ipaddr="10.10.10.253"            # 修改openwrt后台地址(填0为关闭)
export Netmask_netm="255.255.255.0"         # IPv4 子网掩码（默认：255.255.255.0）(填0为不作修改)
export Op_name="OpenWrt-Yoki"                # 修改主机名称为OpenWrt-123(填0为不作修改)

# 内核和系统分区大小(不是每个机型都可用)
export Kernel_partition_size="350"            # 内核分区大小,每个机型默认值不一样 (填写您想要的数值,默认一般16,数值以MB计算，填0为不作修改),如果你不懂就填0
export Rootfs_partition_size="800"            # 系统分区大小,每个机型默认值不一样 (填写您想要的数值,默认一般300左右,数值以MB计算，填0为不作修改),如果你不懂就填0

# 默认主题设置
export Mandatory_theme="argon"              # 将bootstrap替换您需要的主题为必选主题(可自行更改您要的,源码要带此主题就行,填写名称也要写对) (填写主题名称,填0为不作修改)
export Default_theme="argon"                # 多主题时,选择某主题为默认第一主题 (填写主题名称,填0为不作修改)

# 旁路由选项
export Gateway_Settings="10.10.10.1"                 # 旁路由设置 IPv4 网关(填入您的网关IP为启用)(填0为不作修改)
export DNS_Settings="223.5.5.5 8.8.8.8"                     # 旁路由设置 DNS(填入DNS，多个DNS要用空格分开)(填0为不作修改)
export Broadcast_Ipv4="10.10.10.255"                   # 设置 IPv4 广播(填入您的IP为启用)(填0为不作修改)
export Disable_DHCP="1"                     # 旁路由关闭DHCP功能(1为启用命令,填0为不作修改)
export Disable_Bridge="0"                   # 旁路由去掉桥接模式(1为启用命令,填0为不作修改)
export Create_Ipv6_Lan="0"                  # 爱快+OP双系统时,爱快接管IPV6,在OP创建IPV6的lan口接收IPV6信息(1为启用命令,填0为不作修改)

# IPV6、IPV4 选择
export Enable_IPV6_function="1"             # 编译IPV6固件(1为启用命令,填0为不作修改)(如果跟Create_Ipv6_Lan一起启用命令的话,Create_Ipv6_Lan命令会自动关闭)
export Enable_IPV4_function="0"             # 编译IPV4固件(1为启用命令,填0为不作修改)(如果跟Enable_IPV6_function一起启用命令的话,此命令会自动关闭)

# 替换passwall的源码(默认luci分支)
export PassWall_luci_branch="0"             # passwall的源码分别有【luci分支】和【luci-smartdns-new-version分支】(填0为使用luci分支,填1为使用luci-smartdns-new-version分支)

# 替换OpenClash的源码(默认master分支)
export OpenClash_branch="0"                 # OpenClash的源码分别有【master分支】和【dev分支】(填0为使用master分支,填1为使用dev分支)
export OpenClash_Core="2"                   # 增加OpenClash时,把核心下载好,(填1为下载【dev单核】,填2为下载【dev/meta/premium三核】,填0为不需要核心)

# 个性签名,默认增加年月日[$(TZ=UTC-8 date "+%Y.%m.%d")]
export Customized_Information="$(TZ=UTC-8 date "+%Y.%m.%d" by Yoki)"  # 个性签名,你想写啥就写啥，(填0为不作修改)

# 更换固件内核
export Replace_Kernel="5.15"                    # 更换内核版本,在对应源码的[target/linux/架构]查看patches-x.x,看看x.x有啥就有啥内核了(填入内核x.x版本号,填0为不作修改)

# 设置免密码登录(个别源码本身就没密码的)
export Password_free_login="1"               # 设置首次登录后台密码为空（进入openwrt后自行修改密码）(1为启用命令,填0为不作修改)

# 增加AdGuardHome插件和核心
export AdGuardHome_Core="0"                  # 编译固件时自动增加AdGuardHome插件和AdGuardHome插件核心,需要注意的是一个核心20多MB的,小闪存机子搞不来(1为启用命令,填0为不作修改)

# 禁用ssrplus和passwall的NaiveProxy
export Disable_NaiveProxy="0"                # 因个别源码的分支不支持编译NaiveProxy,不小心选择了就编译错误了,为减少错误,打开这个选项后,就算选择了NaiveProxy也会把NaiveProxy干掉不进行编译的(1为启用命令,填0为不作修改)

# 开启NTFS格式盘挂载
export Automatic_Mount_Settings="1"          # 编译时加入开启NTFS格式盘挂载的所需依赖(1为启用命令,填0为不作修改)

# 去除网络共享(autosamba)
export Disable_autosamba="0"                 # 去掉源码默认自选的luci-app-samba或luci-app-samba4(1为启用命令,填0为不作修改)

# 其他
export Ttyd_account_free_login="1"           # 设置ttyd免密登录(1为启用命令,填0为不作修改)
export Delete_unnecessary_items="0"          # 个别机型内一堆其他机型固件,删除其他机型的,只保留当前主机型固件(1为启用命令,填0为不作修改)
export Disable_53_redirection="0"            # 删除DNS强制重定向53端口防火墙规则(个别源码本身不带此功能)(1为启用命令,填0为不作修改)
export Cancel_running="0"                    # 取消路由器每天跑分任务(个别源码本身不带此功能)(1为启用命令,填0为不作修改)


# 晶晨CPU系列打包固件设置(不懂请看说明)
export amlogic_model="s905d"
export amlogic_kernel="5.10.01_6.1.01"
export auto_kernel="true"
export rootfs_size="2560"
export kernel_usage="stable"

sed -i "/helloworld/d" "feeds.conf.default"
echo "src-git helloworld https://github.com/fw876/helloworld.git;main" >> "feeds.conf.default"
# sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default
# 修改插件名字
sed -i 's/"aMule设置"/"电驴下载"/g' `egrep "aMule设置" -rl ./`
sed -i 's/"网络存储"/"NAS"/g' `egrep "网络存储" -rl ./`
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' `egrep "Turbo ACC 网络加速" -rl ./`
sed -i 's/"实时流量监测"/"流量"/g' `egrep "实时流量监测" -rl ./`
sed -i 's/"KMS 服务器"/"KMS激活"/g' `egrep "KMS 服务器" -rl ./`
sed -i 's/"TTYD 终端"/"TTYD"/g' `egrep "TTYD 终端" -rl ./`
sed -i 's/"USB 打印服务器"/"打印服务"/g' `egrep "USB 打印服务器" -rl ./`
sed -i 's/"Web 管理"/"Web管理"/g' `egrep "Web 管理" -rl ./`
sed -i 's/"管理权"/"改密码"/g' `egrep "管理权" -rl ./`
sed -i 's/"带宽监控"/"监控"/g' `egrep "带宽监控" -rl ./`
sed -i 's/"设置向导"/"向导"/g' `egrep "设置向导" -rl ./`


# 整理固件包时候,删除您不想要的固件或者文件,让它不需要上传到Actions空间(根据编译机型变化,自行调整删除名称)
cat >"$CLEAR_PATH" <<-EOF
packages
sha256sums
version.buildinfo
profiles.json
openwrt-x86-64-generic-kernel.bin
openwrt-x86-64-generic.manifest
openwrt-x86-64-generic-squashfs-rootfs.img.gz
EOF

# 在线更新时，删除不想保留固件的某个文件，在EOF跟EOF之间加入删除代码，记住这里对应的是固件的文件路径，比如： rm -rf /etc/config/luci
cat >>$DELETE <<-EOF
EOF
