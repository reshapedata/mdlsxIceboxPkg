#' 国家宏观数据按年月查询
#'
#' @param token
#' @param year
#' @param month
#'
#' @return
#' @export
#'
#' @examples
#' NationalMacroData_view()
NationalMacroData_view <- function(token,year,month) {

  sql=paste0("select
sale_year as 销售年份,
sale_month as 销售月份,
online_retail_sales as 在线零售,
commercial_housing_sales_area as 商品房销售面积,
commercial_housing_sales_area_p as 商品房销售面积P,
pmi as 采购经理指数
from rds_t_NationalMacroData
where sale_year='",year,"' and sale_month ='",month,"'

             ")

  res <- tsda::sql_select2(token = token,sql = sql)
  return(res)

}
