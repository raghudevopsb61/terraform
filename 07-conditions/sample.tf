output "sample" {
  value = var.a == 1 ? "SAME" : "NOTSAME"
}

# COND ? TRUE_VAL : FAL_VAL

variable "a" {
  default = 1
}

resource "null_resource" "sample" {
  count = var.a == 1 ? 1 : 0
}
