CREATE FUNCTION set_update_time() RETURNS OPAQUE AS '
  begin
    new.update_ymd := ''now'';
    return new;
  end;
' language 'plpgsql';