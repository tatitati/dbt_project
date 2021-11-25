
select *, current_timestamp() as transformed_at
from {{ source('debronze_raw', 'raw_table') }}