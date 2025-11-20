<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – sync_batch_items

Individual entries inside sync batches.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| batch_id | BIGINT | NO | — | Parent batch (FK sync_batches.id). |  |
| event_key | CHAR(36) | NO | — | Event identifier transported in the batch. |  |
| status | TEXT | NO | 'pending' | Item status. | enum: pending, sent, applied, failed, skipped |
| error | TEXT | YES | — | Failure reason, if applicable. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |