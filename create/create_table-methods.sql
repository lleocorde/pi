create table methods (
  id serial primary key
  ,name varchar
  ,notes varchar
  ,tags jsonb default '{}'::jsonb
  ,latest boolean
  ,"createdAt" timestamp with time zone default now()
  ,"updatedAt" timestamp with time zone default NULL
  ,"deletedAt" timestamp with time zone default NULL
);
