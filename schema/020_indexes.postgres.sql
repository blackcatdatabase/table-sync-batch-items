-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  sync_batch_items

CREATE INDEX IF NOT EXISTS idx_sbi_batch ON sync_batch_items (batch_id);

CREATE INDEX IF NOT EXISTS idx_sbi_status ON sync_batch_items (status);
