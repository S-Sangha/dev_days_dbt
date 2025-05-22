-- Test that verifies model_a and model_b have matching IDs
select
    a.id as model_a_id,
    b.id as model_b_id
from {{ ref('model_a') }} a
left join {{ ref('model_b') }} b
    on a.id = b.id
where b.id is null 