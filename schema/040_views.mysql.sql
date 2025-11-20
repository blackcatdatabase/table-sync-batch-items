-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  sync_batch_items
-- Contract view for [sync_batch_items]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_sync_batch_items AS
SELECT
  id,
  batch_id,
  event_key,
  status,
  error,
  created_at
FROM sync_batch_items;
