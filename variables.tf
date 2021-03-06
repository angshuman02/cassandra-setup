locals {

    vm_details = {

     "dev-mip-cassandra-dus11-1"  = {
        machine_type                         = "n2-standard-2" , 
        zone                                 = "europe-north1-a" ,
        image                                = "ubuntu-1804-bionic-v20220505" ,
        os_disk_size                         = 20 , 
        network                              = "default" ,
        additional_disk_name                 = "disk-dev-mip-cassandra-dus11-1" ,
        additional_disk_type                 = "pd-standard"
        additional_disk_size                 = 30 ,
        instance_self_link                   = "https://www.googleapis.com/compute/v1/projects/cf-mip-dev-u4/zones/europe-north1-a/instances/dev-mip-cassandra-dus11-1"
        }
    
    "dev-mip-cassandra-dus21-1"  = { 
        machine_type                         = "n2-standard-2" , 
        zone                                 = "europe-west1-b" ,
        image                                = "ubuntu-1804-bionic-v20220505" ,
        os_disk_size                         = 20 , 
        network                              = "default" ,
        additional_disk_name                 = "disk-dev-mip-cassandra-dus21-1" ,
        additional_disk_type                 = "pd-standard"
        additional_disk_size                 = 30 ,
        instance_self_link                   = "https://www.googleapis.com/compute/v1/projects/cf-mip-dev-u4/zones/europe-west1-b/instances/dev-mip-cassandra-dus21-1"
        }

    "dev-mip-cassandra-fra11-1"  = { 
        machine_type                         = "n2-standard-2" , 
        zone                                 = "europe-west9-a" ,
        image                                = "ubuntu-1804-bionic-v20220505" ,
        os_disk_size                         = 20 , 
        network                              = "default" ,
        additional_disk_name                 = "disk-3dev-mip-cassandra-fra11-1" ,
        additional_disk_type                 = "pd-standard"
        additional_disk_size                 = 30 ,
        instance_self_link                   = "https://www.googleapis.com/compute/v1/projects/cf-mip-dev-u4/zones/europe-west9-a/instances/dev-mip-cassandra-fra11-1"
        }
  }
}