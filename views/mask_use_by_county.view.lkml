view: mask_use_by_county {
  sql_table_name: `covid19_nyt.mask_use_by_county` ;;

  dimension: always {
    type: number
    description: "The estimated share of people in this county who would say always"
    sql: ${TABLE}.always ;;
  }
  dimension: county_fips_code {
    type: string
    description: "Standard geographic identifier for the county"
    sql: ${TABLE}.county_fips_code ;;
  }
  dimension: frequently {
    type: number
    description: "The estimated share of people in this county who would say frequently"
    sql: ${TABLE}.frequently ;;
  }
  dimension: never {
    type: number
    description: "The estimated share of people in this county who would say never in response to the question \"How often do you wear a mask in public when you expect to be within six feet of another person?\""
    sql: ${TABLE}.never ;;
  }
  dimension: rarely {
    type: number
    description: "The estimated share of people in this county who would say rarely"
    sql: ${TABLE}.rarely ;;
  }
  dimension: sometimes {
    type: number
    description: "The estimated share of people in this county who would say sometimes"
    sql: ${TABLE}.sometimes ;;
  }
  measure: count {
    type: count
  }
}
