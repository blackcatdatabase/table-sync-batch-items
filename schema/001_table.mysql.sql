-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  sync_batch_items

CREATE TABLE IF NOT EXISTS sync_batch_items (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  batch_id BIGINT UNSIGNED NOT NULL,
  event_key CHAR(36) NOT NULL,
  status ENUM('pending','sent','applied','failed','skipped') NOT NULL DEFAULT 'pending',
  error TEXT NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  UNIQUE KEY uq_sync_batch_event (batch_id, event_key),
  INDEX idx_sbi_batch  (batch_id),
  INDEX idx_sbi_status (status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
