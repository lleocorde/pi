create table accounts (
  id serial primary key
  ,name varchar
  ,category varchar
  ,subcategory varchar
  ,priority int
  ,"paymentMethodId" int references methods (id) on update cascade
  ,auto boolean default false
  ,frequency freq
  ,"targetDay" int
  ,amount money
  ,notes varchar
  ,tags jsonb default '{}'::jsonb
  ,latest boolean
  ,"createdAt" timestamp with time zone default now()
  ,"updatedAt" timestamp with time zone default NULL
  ,"deletedAt" timestamp with time zone default NULL
);
