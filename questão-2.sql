set @ano = 2017;

select week(d.add_date,0) as 'Semana'
    , s.stage_name as 'Etapa'
    , count(d.deal_id) as 'Quantidade'
from deals d
inner join stages s on d.stage_id = s.stage_id
where d.deleted=0
and YEAR(add_date) = @ano
group by week(d.add_date,0), s.stage_name
order by 1 asc;