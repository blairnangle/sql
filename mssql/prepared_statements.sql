select
    cp.objtype,
    st.text
from sys.dm_exec_cached_plans cp
    cross apply sys.dm_exec_sql_text(cp.plan_handle) st
where cp.objtype = 'prepared';
