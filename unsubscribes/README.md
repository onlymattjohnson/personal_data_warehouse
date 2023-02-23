# 📩 Unsubscribes

> A table to track information on unsubscribes.

## Required

Before creating this table, you will need to create the `metrics` schema.

## Structure

The table is created by running [unsubscribes_create.sql](unsubscribes_create.sql).

| Field | Type | Description |
| ----- | ---- | ----------- |
| id    | serial | The primary key and unique identifier for each row |
| unsubscribe_date | timestamp | A timestamp of when I unsubscribed |
| name | varchar | The name of the e-mail sender |
| email_from | varchar | The e-mail address of the sender |

## Usage

To add a new row, use SQL insert statements or create the [unsubscribes insert stored procedure](unsubscribes_insert_sp.sql) and call it.

### Example using SQL insert

```sql
insert into metrics.unsubscribes (name, email_from)  
VALUES ('Call of Duty', 'callofduty@comms.activision.com');
```

### Exampel using stored procedure

```sql
call metrics.log_unsubscribe('Call of Duty', 'callofduty@comms.activision.com');
```