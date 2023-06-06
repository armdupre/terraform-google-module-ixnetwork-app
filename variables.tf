variable "AppName" {
	default = "ixnetwork"
	type = string
}

variable "CustomImageFamilyName" {
	default = "ixnetwork-cloud-gcp-9-30-2212-7"
	description = "Group of images to which image belongs"
	type = string
}

variable "CustomImageProjectId" {
	default = "ixvm-261016"
	description = "Globally unique identifier for image source project"
	type = string
}

variable "Eth0PrivateIpAddress" {
	default = "10.0.10.10"
	type = string
}

variable "Eth0SubnetName" {
	type = string
}

variable "Eth0VpcNetworkName" {
	type = string
}

variable "InstanceId" {
	default = "app"
	type = string
}

variable "MachineType" {
	default = "n1-standard-4"
	description = "Designation for set of resources available to VM"
	type = string
	validation {
		condition = can(regex("n1-standard-8", var.MachineType)) || can(regex("n1-standard-4", var.MachineType))
		error_message = "MachineType must be one of (n1-standard-8 | n1-standard-4) types."
	}
}

variable "RegionName" {
	default = "us-central1"
	description = "Geographical location where resources can be hosted" 
	type = string
}

variable "UserEmailTag" {
	default = "terraform@example.com"
	description = "Email address tag of user creating the deployment"
	type = string
}

variable "UserLoginTag" {
	default = "terraform"
	description = "Login ID tag of user creating the deployment"
	type = string
}

variable "UserProjectTag" {
	default = "example"
	description = "Project tag of user creating the deployment"
	type = string
}

variable "ZoneName" {
	default = "us-central1-a"
	description = "Deployment area within a region"
	type = string
}