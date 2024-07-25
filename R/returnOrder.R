#' 退货单按年月查询
#'
#' @param token
#' @param year
#' @param month
#'
#' @return
#' @export
#'
#' @examples
#' returnOrder_view()
returnOrder_view <- function(token,year,month) {

  sql=paste0("select store_id as 店铺ID,
store_platform as 平台代码,
ORDER_ROWID as 订单行号,
return_date as 返回日期,
PRODUCT_CODE as 产品代码,
SLS_CAT_LRG as 大类,
SLS_CAT_MID as 中类,
SLS_CAT_SML as 小类,
qty as 数量,
amount_segment as 金额 from rds_t_returnOrder
where year(return_date)='",year,"' and month(return_date) ='",month,"'

             ")

  res <- tsda::sql_select2(token = token,sql = sql)
  return(res)

}
