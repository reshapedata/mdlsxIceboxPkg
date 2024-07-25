#' 嗨购物节按年查询
#'
#' @param token
#' @param year
#'
#' @return
#' @export
#'
#' @examples
#' rushDate_view()
rushDate_view <- function(token,year) {

  sql=paste0("select
Platform_code as 平台代码,
Platform_name as 平台名称,
promotion_type as 大促类型,
Fyear as 年份,
FStartDate as 开始日期,
FEndate as 结束日期,
fpromotionid as 大促代码
from rds_t_rushDate
where Fyear='",year,"'

             ")

  res <- tsda::sql_select2(token = token,sql = sql)
  return(res)

}
