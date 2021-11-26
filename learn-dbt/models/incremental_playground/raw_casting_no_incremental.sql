
select *, current_timestamp() as transformed_at
from {{ source('raw', 'raw_table') }}