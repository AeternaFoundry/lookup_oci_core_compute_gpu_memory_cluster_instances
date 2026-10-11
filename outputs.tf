output "core_compute_gpu_memory_cluster_instances_lookup_id" {
  description = "Map of id values across all core_compute_gpu_memory_cluster_instances_lookup, keyed the same as var.core_compute_gpu_memory_cluster_instances_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_compute_gpu_memory_cluster_instances.core_compute_gpu_memory_cluster_instances_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_compute_gpu_memory_cluster_instances_lookup_compute_gpu_memory_cluster_id" {
  description = "Map of compute_gpu_memory_cluster_id values across all core_compute_gpu_memory_cluster_instances_lookup, keyed the same as var.core_compute_gpu_memory_cluster_instances_lookup except keys with no compute_gpu_memory_cluster_id are omitted"
  value       = { for k, v in data.oci_core_compute_gpu_memory_cluster_instances.core_compute_gpu_memory_cluster_instances_lookup : k => v.compute_gpu_memory_cluster_id if v.compute_gpu_memory_cluster_id != null && length(v.compute_gpu_memory_cluster_id) > 0 }
}
output "core_compute_gpu_memory_cluster_instances_lookup_compute_gpu_memory_cluster_instance_collection" {
  description = "Map of compute_gpu_memory_cluster_instance_collection values across all core_compute_gpu_memory_cluster_instances_lookup, keyed the same as var.core_compute_gpu_memory_cluster_instances_lookup except keys with no compute_gpu_memory_cluster_instance_collection are omitted"
  value       = { for k, v in data.oci_core_compute_gpu_memory_cluster_instances.core_compute_gpu_memory_cluster_instances_lookup : k => v.compute_gpu_memory_cluster_instance_collection if v.compute_gpu_memory_cluster_instance_collection != null && length(v.compute_gpu_memory_cluster_instance_collection) > 0 }
}
output "core_compute_gpu_memory_cluster_instances_lookup_filter" {
  description = "Map of filter values across all core_compute_gpu_memory_cluster_instances_lookup, keyed the same as var.core_compute_gpu_memory_cluster_instances_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_compute_gpu_memory_cluster_instances.core_compute_gpu_memory_cluster_instances_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

