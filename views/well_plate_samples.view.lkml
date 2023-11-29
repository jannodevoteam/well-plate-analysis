view: well_plate_samples {
  sql_table_name: `well_plate_dataset.well_plate_samples` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }
  dimension: dominant_family {
    type: string
    sql: ${TABLE}.dominant_family ;;
  }
  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }
  dimension: reads {
    type: number
    sql: ${TABLE}.reads ;;
  }
  dimension: reads_spikein {
    type: number
    sql: ${TABLE}.reads_spikein ;;
  }
  dimension: sample {
    type: string
    sql: ${TABLE}.sample ;;
  }
  dimension: well {
    type: string
    sql: ${TABLE}.well ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
