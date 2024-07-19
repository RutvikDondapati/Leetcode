# Write your MySQL query statement below
SELECT a.machine_id,round(avg(a2.timestamp-a.timestamp),3) as processing_time
from Activity a JOIN Activity a2
ON  a.machine_id=a2.machine_id and a.process_id = a2.process_id and
a2.activity_type='end' and a.activity_type='start'
GROUP BY a.machine_id
