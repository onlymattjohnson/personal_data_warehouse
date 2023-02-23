CREATE PROCEDURE log_unsubscribe(
    i_email_name varchar(100),
    i_email_from varchar(100)
)
language plpgsql
as $$

begin
    -- Insert the new row
    insert into metrics.unsubscribes (name, email_from)  
    VALUES (i_email_name, i_email_from);

    commit;
end;$$;
