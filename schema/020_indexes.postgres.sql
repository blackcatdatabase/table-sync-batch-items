-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  sync_batch_items
CREATE INDEX IF NOT EXISTS idx_sbi_batch ON sync_batch_items (batch_id);

CREATE INDEX IF NOT EXISTS idx_sbi_status ON sync_batch_items (status);
