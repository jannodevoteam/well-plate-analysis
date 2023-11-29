connection: "janno-well-plate-sample"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: well_plate_analysis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: well_plate_analysis_default_datagroup

explore: well_plate_samples {}
