#' 嗨购物节按年查询
#'
#' @param token
#' @param year
#'
#' @return
#' @export
#'
#' @examples
#' FestivalShop_view()
FestivalShop_view <- function(token,year) {

  sql=paste0("select
shop as 店铺,
Fplatform as 平台,
Small_procedures as 小程序,
shopFestival_name as 购物节名称,
Fyear as 年份,
FStartDate as 开始日期,
FEndate as 结束日期,
fhighid as 嗨代码
from rds_t_FestivalShop
where Fyear='",year,"'

             ")

  res <- tsda::sql_select2(token = token,sql = sql)
  return(res)

}
