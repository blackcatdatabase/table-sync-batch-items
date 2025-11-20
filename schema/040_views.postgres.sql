-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  sync_batch_items
-- Contract view for [sync_batch_items]
CREATE OR REPLACE VIEW vw_sync_batch_items AS
SELECT
  id,
  batch_id,
  event_key,
  status,
  error,
  created_at
FROM sync_batch_items;
