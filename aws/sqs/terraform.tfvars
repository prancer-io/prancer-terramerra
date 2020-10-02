name                              = "prancer-sqs"
name_prefix                       = null
visibility_timeout_seconds        = 30
message_retention_seconds         = 345600
max_message_size                  = 262144
delay_seconds                     = 0
receive_wait_time_seconds         = 0
policy                            = ""
redrive_policy                    = ""
fifo_queue                        = false
content_based_deduplication       = false
kms_master_key_id                 = null
kms_data_key_reuse_period_seconds = 300

tags                                     = {
  environment = "Production"
  project = "Prancer"
}
