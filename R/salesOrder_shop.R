#' 销售订单匹配数据按年月查询
#'
#' @param token
#' @param year
#' @param month
#'
#' @return
#' @export
#'
#' @examples
#' salesOrder_shop_view()
salesOrder_shop_view <- function(token,year,month) {

  sql=paste0("select
store_id as 店铺ID,
store_platform as 平台代码,
order_rowid as 订单行号,
pay_date as 支付日期,
PRODUCT_CODE as 产品代码,
SLS_CAT_LRG as 大类,
SLS_CAT_MID as 中类,
SLS_CAT_SML as 小类,
qty as 数量,
price_segment as 价格段,
price_mean as 均价,
discount_rate as 折扣率,
saleYear as 销售年份,
saleMonth as 销售月份,
orderType as 订单类型,
fpromotionid as 大促代码,
fhighid as 嗨购代码,
online_retail_sales as 在线零售,
commercial_housing_sales_area as 商品房销售面积,
pmi as 采购经理指数
from rds_t_salesOrder_shop
where saleYear='",year,"' and saleMonth ='",month,"'

             ")

  res <- tsda::sql_select2(token = token,sql = sql)
  return(res)

}
