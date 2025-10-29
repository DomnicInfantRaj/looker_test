connection: "sqsh-looker-project"

# include all the views
include: "/views/**/*.view.lkml"

# datagroup: looker_extension_test_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

# persist_with: looker_extension_test_default_datagroup

explore: order_details {}

explore: orders {}
