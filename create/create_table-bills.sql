create table bills (
  id serial primary key
  ,"accountId" int not null references accounts (id)
  ,priority int
  ,amount money
  ,due date
  ,scheduled date
  ,paid date
  ,notes varchar
  ,tags jsonb default '{}'::jsonb
  ,latest boolean
  ,"createdAt" timestamp with time zone default now()
  ,"updatedAt" timestamp with time zone default NULL
  ,"deletedAt" timestamp with time zone default NULL
);
