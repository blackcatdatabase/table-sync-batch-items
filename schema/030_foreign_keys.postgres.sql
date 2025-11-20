-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  sync_batch_items
ALTER TABLE sync_batch_items ADD CONSTRAINT fk_sbi_batch FOREIGN KEY (batch_id) REFERENCES sync_batches(id) ON DELETE CASCADE;
