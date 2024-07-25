#' 六月特征值按年月查询
#'
#' @param token
#' @param year
#' @param month
#'
#' @return
#' @export
#'
#' @examples
#' eigenvalues_view()
eigenvalues_view <- function(token,year,month) {

  sql=paste0("select
PRODUCT_CODE as 产品代码,
SLS_CAT_LRG as 大类,
SLS_CAT_MID as 中类,
SLS_CAT_SML as 小类,
store_id as 店铺ID,
store_platform as 平台代码,
price_segment as 价格段,
discount_rate as 折扣率,
sales_year as 销售年份,
sales_month as 销售月份
from rds_t_salesOrder_eigenvalues
where sales_year='",year,"' and sales_month ='",month,"'

             ")

  res <- tsda::sql_select2(token = token,sql = sql)
  return(res)

}
