resource "google_compute_instance" "vms" {
  for_each     = local.vm_details

  name         = each.key
  machine_type = each.value.machine_type
  zone         = each.value.zone


  boot_disk {
    initialize_params {
      image = each.value.image
      size = each.value.os_disk_size
    }
  }

  network_interface {
    network = each.value.network 
    access_config {
    }
  }

  metadata_startup_script = file("${path.module}/cassandra.sh")

}

resource "google_compute_disk" "additional_disk" {
  for_each           = local.vm_details
    name             = each.value.additional_disk_name
    type             = each.value.additional_disk_type
    zone             = each.value.zone
    size             = each.value.additional_disk_size
}

resource "google_compute_attached_disk" "sdisk" {
  for_each           = local.vm_details
    disk             = each.value.additional_disk_name
    instance         = each.value.instance_self_link
    zone             = each.value.zone

    depends_on = [
      google_compute_instance.vms , google_compute_disk.additional_disk
    ]
   }