variable "core_compute_gpu_memory_cluster_instances_lookup" {
  description = <<EOT
Map of core_compute_gpu_memory_cluster_instances_lookup, attributes below
Required:
    - compute_gpu_memory_cluster_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compute_gpu_memory_cluster_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

