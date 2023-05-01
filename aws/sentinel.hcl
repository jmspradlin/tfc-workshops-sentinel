# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

policy "desired-instance-type" {
  enforcement_level = "soft-mandatory"
}

policy "enforce-mandatory-tags" {
    enforcement_level = "advisory"
}

module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

policy "less-than-200-percent-month" {
  enforcement_level = "hard-mandatory"
}

policy "less-than-50-percent-month" {
  enforcement_level = "advisory"
}