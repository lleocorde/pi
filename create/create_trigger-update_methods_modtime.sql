create trigger update_methods_modtime
before update on methods
for each row
execute procedure update_modified_column();
