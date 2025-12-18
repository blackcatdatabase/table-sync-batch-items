-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  sync_batch_items

CREATE INDEX IF NOT EXISTS idx_sbi_batch ON sync_batch_items (batch_id);

CREATE INDEX IF NOT EXISTS idx_sbi_status ON sync_batch_items (status);
