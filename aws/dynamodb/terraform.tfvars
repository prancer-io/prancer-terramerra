name                = "prancer-dynamodb"
hash_key            = "HashKey"
range_key           = "RangeKey"
enabled             = true
billing_mode        = "PROVISIONED"
enable_streams      = false
enable_encryption   = false
dynamodb_attributes = [
  {
    name = "PersonalID"
    type = "N"
  },
  {
    name = "Age"
    type = "N"
  },
  {
    name = "FirstName"
    type = "S"
  },
  {
    name = "LastName"
    type = "S"
  }
]

local_secondary_index_map = [
  {
    name               = "age_index"
    range_key          = "Age"
    projection_type    = "INCLUDE"
    non_key_attributes = ["HashKey", "RangeKey"]
  },
  {
    name               = "firstname_index"
    range_key          = "FirstName"
    projection_type    = "INCLUDE"
    non_key_attributes = ["HashKey", "RangeKey"]
  },
  {
    name               = "lastname_index"
    range_key          = "LastName"
    projection_type    = "INCLUDE"
    non_key_attributes = ["HashKey", "RangeKey"]
  }
]

global_secondary_index_map = [
  {
    name               = "personalid_index"
    hash_key           = "PersonalID"
    range_key          = "Age"
    write_capacity     = 5
    read_capacity      = 5
    projection_type    = "INCLUDE"
    non_key_attributes = ["HashKey", "RangeKey"]
  }
]

tags                  = {
  environmet = "Production"
  project    = "Prancer"
}
