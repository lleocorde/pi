create table assets (
  id serial primary key
  ,name varchar
  ,type varchar
  ,amount money
  ,notes varchar
  ,tags jsonb default '{}'::jsonb
  ,latest boolean
  ,"createdAt" timestamp with time zone default now()
  ,"updatedAt" timestamp with time zone default NULL
  ,"deletedAt" timestamp with time zone default NULL
);
