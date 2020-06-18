view: customer_transactions_test {
  sql_table_name: `gcp_playbook_reporting.customer_transactions_test`
    ;;

  dimension: customername {
    type: string
    sql: ${TABLE}.CUSTOMERNAME ;;
  }

  dimension: flag {
    type: string
    sql: ${TABLE}.FLAG ;;
  }

  dimension: insertedby {
    type: string
    sql: ${TABLE}.INSERTEDBY ;;
  }

  dimension: insertedon {
    type: string
    sql: ${TABLE}.INSERTEDON ;;
  }

  dimension: productname {
    type: string
    sql: ${TABLE}.PRODUCTNAME ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.SEGMENT ;;
  }

  dimension: updatedby {
    type: string
    sql: ${TABLE}.UPDATEDBY ;;
  }

  dimension: updatedon {
    type: string
    sql: ${TABLE}.UPDATEDON ;;
  }

  measure: count {
    type: count
    drill_fields: [productname, customername]
  }
}
