view: excess_deaths {
  sql_table_name: `covid19_nyt.excess_deaths` ;;

  dimension: baseline {
    type: string
    description: "The years used to calculate expected_deaths"
    sql: ${TABLE}.baseline ;;
  }
  dimension: country {
    type: string
    description: "The country reported"
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: deaths {
    type: number
    description: "The total number of confirmed deaths recorded from any cause"
    sql: ${TABLE}.deaths ;;
  }
  dimension_group: end {
    type: time
    description: "The last date included in the period"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: excess_deaths {
    type: number
    description: "The number of deaths minus the expected deaths"
    sql: ${TABLE}.excess_deaths ;;
  }
  dimension: expected_deaths {
    type: number
    description: "The baseline number of expected deaths, calculated from a historical average"
    sql: ${TABLE}.expected_deaths ;;
  }
  dimension: frequency {
    type: string
    description: "Weekly or monthly, depending on how the data is recorded"
    sql: ${TABLE}.frequency ;;
  }
  dimension: month {
    type: number
    description: "Numerical month"
    sql: ${TABLE}.month ;;
  }
  dimension: placename {
    type: string
    description: "The place in the country reported"
    sql: ${TABLE}.placename ;;
  }
  dimension_group: start {
    type: time
    description: "The first date included in the period"
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  dimension: week {
    type: number
    description: "Epidemiological week, which is a standardized way of counting weeks to allow for year-over-year comparisons. Most countries start epi weeks on Mondays, but others vary"
    sql: ${TABLE}.week ;;
  }
  dimension: year {
    type: string
    description: "Year reported"
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [placename]
  }
}
