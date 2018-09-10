set @ano = 2017;

select WEEK(du.update_date,0) as Semana
    , du.stage_to as 'Etapa'
    , count(du.deal_id) as 'Quantidade'
from deals d 
inner join deals_updates du on du.deal_id = d.deal_id
where d.deleted = 0
and YEAR(du.update_date) = @ano
group by week(du.update_date,0), du.stage_to
order by 1 asc;