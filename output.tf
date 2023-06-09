output "Eth0PublicIpAddress" {
	value = {
		"address" : google_compute_address.Eth0PublicIpAddress.address
		"address_type" : google_compute_address.Eth0PublicIpAddress.address_type
	}
}

output "Image" {
	value = {
		"family" : data.google_compute_image.Image.family
		"name" : data.google_compute_image.Image.name
		"project" : data.google_compute_image.Image.project
	}
}