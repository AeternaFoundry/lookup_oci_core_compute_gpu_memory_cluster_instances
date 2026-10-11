data "oci_core_compute_gpu_memory_cluster_instances" "core_compute_gpu_memory_cluster_instances_lookup" {
  for_each = var.core_compute_gpu_memory_cluster_instances_lookup

  compute_gpu_memory_cluster_id = each.value.compute_gpu_memory_cluster_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

