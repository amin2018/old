provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

module "gke" {
  source        = "./modules/gke"
  location      = var.location
  cluster_name  = var.cluster_name
}

module "vm" {
  source   = "./modules/vm"
  vm_name  = var.vm_name
  zone     = var.zone
}

module "persistent_disk" {
  source    = "./modules/persistent_disk"
  disk_name = var.disk_name
  zone      = var.zone
}

module "k8s_app" {
  source          = "./modules/k8s_app"
  deployment_name = var.deployment_name
  service_name    = var.service_name
}

module "cloud_sql" {
  source        = "./modules/cloud_sql"
  region        = var.region
  instance_name = var.instance_name
}
