variable "CustomImageFamilyName" {
	default = "ixnetwork-cloud-gcp-10-00-2312-4"
	description = "Group of images to which image belongs"
	type = string
}

variable "CustomImageProjectId" {
	default = "ixvm-261016"
	description = "Globally unique identifier for image source project"
	type = string
}

variable "Eth0SubnetName" {
	description = "Name of the subnet associated with the first network interface"
	type = string
}

variable "Eth0VpcNetworkName" {
	description = "Name of the virtual private cloud associated with the first network interface"
	type = string
}

variable "InstanceId" {
	default = "app"
	description = "Id of the instance of this module that ensures uniqueness"
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

variable "NetworkTargetTags" {
	default = [
		"ixnetwork-app"
	]
	description = "Network tags make firewall rules and routes applicable to specific VM instances."
	type = list(string)
}

variable "RegionName" {
	default = "us-central1"
	description = "Geographical location where resources can be hosted" 
	type = string
}

variable "Tag" {
	default = "ixnetwork"
	description = "App ID tag of application using the deployment"
	type = string
}

variable "UserEmailTag" {
	default = "terraform@example.com"
	description = "Email address tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserEmailTag) >= 14
		error_message = "UserEmailTag minimum length must be >= 14."
	}
}

variable "UserLoginTag" {
	default = "terraform"
	description = "Login ID tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserLoginTag) >= 4
		error_message = "UserLoginTag minimum length must be >= 4."
	}
}

variable "UserProjectTag" {
	default = "module"
	description = "Project tag of user creating the deployment"
	type = string
}

variable "Version" {
	default = "10-00"
	description = "Versioning of the application using the deployment"
	type = string
}

variable "ZoneName" {
	default = "us-central1-a"
	description = "Deployment area within a region"
	type = string
}