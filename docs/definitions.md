# sync_batch_items

Individual entries inside sync batches.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| batch_id | BIGINT | NO |  | Parent batch (FK sync_batches.id). |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| error | TEXT | YES |  | Failure reason, if applicable. |
| event_key | CHAR(36) | NO |  | Event identifier transported in the batch. |
| id | BIGINT | NO |  | Surrogate primary key. |
| status | ENUM('pending','sent','applied','failed','skipped') | NO | pending | Item status. (enum: pending, sent, applied, failed, skipped) |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_sync_batch_event | batch_id, event_key |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_sbi_batch | batch_id | INDEX idx_sbi_batch  (batch_id) |
| idx_sbi_status | status | INDEX idx_sbi_status (status) |
| uq_sync_batch_event | batch_id,event_key | UNIQUE KEY uq_sync_batch_event (batch_id, event_key) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_sbi_batch | batch_id | sync_batches(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_sync_batch_event | batch_id, event_key |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_sbi_batch | batch_id | CREATE INDEX IF NOT EXISTS idx_sbi_batch ON sync_batch_items (batch_id) |
| idx_sbi_status | status | CREATE INDEX IF NOT EXISTS idx_sbi_status ON sync_batch_items (status) |
| uq_sync_batch_event | batch_id,event_key | CONSTRAINT uq_sync_batch_event UNIQUE (batch_id, event_key) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_sbi_batch | batch_id | sync_batches(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_sync_batch_items | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_sync_batch_items | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
