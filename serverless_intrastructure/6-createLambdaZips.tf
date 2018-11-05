# Archive getheroeslist.js.
data "archive_file" "getheroeslist" {
  type        = "zip"
  source_file = "${path.module}/lambdas/getheroeslist/index.js"
  output_path = "${path.module}/files/getheroeslist.zip"
}

# Archive getmissiondetails.js.
data "archive_file" "getmissiondetails" {
  type        = "zip"
  source_file = "${path.module}/lambdas/getmissiondetails/index.js"
  output_path = "${path.module}/files/getmissiondetails.zip"
}

# NOTE: This need to be run alone just once before the step 7
