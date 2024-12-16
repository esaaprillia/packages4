m = Map("mqos")
m.title = translate("MQOS")
m.description = translate("Rate limit devices by MAC address")

s = m:section(TypedSection, "global")
s.addremove = false
s.anonymous = true

e = s:option(Flag, "enabled", translate("enable"))

ifa = s:option(Value, "interface", translate("interface"))
ifa.description = translate("Need to save the application first")
ifa.datatype = "string"
ifa.default = "br-lan"

dl = s:option(Value, "download", translate("Download speed (Mbit/s)"))
dl.description = translate("Interface download speed")
dl.datatype = "and(uinteger,min(1))"

ul = s:option(Value, "upload", translate("upload speed (Mbit/s)"))
ul.description = translate("Interface upload speed")
ul.datatype = "and(uinteger,min(1))"

s = m:section(TypedSection, "device", translate("Rate limiting based on MAC address"))
s.template = "cbi/tblsection"
s.anonymous = true
s.addremove = true
s.sortable = true

mac = s:option(Value, "mac", translate("address"))
mac.datatype = "macaddr"

luci.ip.neighbors({family = 4, dev = luci.sys.exec("uci get mqos.@global[0].interface")},
  function(n)
	if n.mac and n.dest then
		mac:value(n.mac, "%s (%s)" % {n.dest:string(), n.mac})
	end
end)

dl = s:option(Value, "download", translate("Download speed (Mbit/s)"))
dl.datatype = "and(uinteger,min(1))"

ul = s:option(Value, "upload", translate("upload speed (Mbit/s)"))
ul.datatype = "and(uinteger,min(1))"

comment = s:option(Value, "comment", translate("Remark"))

return m
