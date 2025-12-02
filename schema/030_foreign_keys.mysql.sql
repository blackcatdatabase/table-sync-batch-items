-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  sync_batch_items

ALTER TABLE sync_batch_items ADD CONSTRAINT fk_sbi_batch FOREIGN KEY (batch_id) REFERENCES sync_batches(id) ON DELETE CASCADE;
