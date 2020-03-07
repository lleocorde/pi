create or replace function update_modified_column()
returns trigger as $$
begin
	new."updatedAt" = now();
	return new;
end;
$$ language 'plpgsql';
