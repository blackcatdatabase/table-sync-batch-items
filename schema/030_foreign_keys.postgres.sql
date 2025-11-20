-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  sync_batch_items
ALTER TABLE sync_batch_items ADD CONSTRAINT fk_sbi_batch FOREIGN KEY (batch_id) REFERENCES sync_batches(id) ON DELETE CASCADE;
