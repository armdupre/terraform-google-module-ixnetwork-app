locals {
	AppName = var.AppName
	CustomImageProjectId = var.CustomImageProjectId
	CustomImageFamilyName = var.CustomImageFamilyName
	Eth0PrivateIpAddress = var.Eth0PrivateIpAddress
	Eth0PublicIpAddressName = "${local.Preamble}-eth0-ip-addr"
	Eth0SubnetName = var.Eth0SubnetName
	Eth0VpcNetworkName = var.Eth0VpcNetworkName
	InstanceId = var.InstanceId
	InstanceName = "${local.Preamble}-instance"
	MachineType = var.MachineType
	NetworkTargetTags = [
		"${local.AppName}-app"
	]
	Preamble = "${local.UserLoginTag}-${local.UserProjectTag}-${local.AppName}-${local.InstanceId}"
	RegionName = var.RegionName
	UserEmailTag = var.UserEmailTag
	UserLoginTag = var.UserLoginTag
	UserProjectTag = var.UserProjectTag
	ZoneName = var.ZoneName
}