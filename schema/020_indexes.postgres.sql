-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  sync_batch_items

CREATE INDEX IF NOT EXISTS idx_sbi_batch ON sync_batch_items (batch_id);

CREATE INDEX IF NOT EXISTS idx_sbi_status ON sync_batch_items (status);
