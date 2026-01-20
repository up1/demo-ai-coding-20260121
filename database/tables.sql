create table customers (
  id bigint primary key generated always as identity,
  unique_id text unique not null
);

create table orders (
  id bigint primary key generated always as identity,
  customer_id bigint not null references customers (id),
  order_date timestamptz not null,
  shipping_street text not null,
  shipping_city text not null,
  shipping_state text not null,
  shipping_zip_code text not null,
  billing_street text not null,
  billing_city text not null,
  billing_state text not null,
  billing_zip_code text not null,
  status text not null
);

create table products (
  id bigint primary key generated always as identity,
  unique_id text unique not null
);

create table order_line_items (
  id bigint primary key generated always as identity,
  order_id bigint not null references orders (id),
  product_id bigint not null references products (id),
  quantity int not null,
  unit_price numeric(10, 2) not null
);