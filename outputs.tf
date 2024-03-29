output "bastion_instance_id" {
  value       = "${module.bastion_compute.ids}"
}
output "bastion_private_key_file" {
  value       = "${local_file.bastion_private_key.filename}"
  description = "The private Key (generated) to access bastion"
}

output "mgmt_network_id" {
  value       = "${module.mgmt_network.network_id}"
  description = "The id of the Mgmt Network being created"
}

output "mgmt_subnet_ids" {
  value       = "${module.mgmt_network.subnet_ids}"
  description = "The id of all mgmt subnets being created"
}

output "project_router_id" {
  value       = "${openstack_networking_router_v2.project_router.id}"
  description = "The project router id"
}

output "bastion_floating_ip" {
  value       = "${local.bastion_floating_ip}"
  description = "The floating ip bind to bastion"
}

output "project_keypair_name" {
  value       = "${module.project_generated_keypair.name}"
  description = "Default keypair used for project hosts"
}
