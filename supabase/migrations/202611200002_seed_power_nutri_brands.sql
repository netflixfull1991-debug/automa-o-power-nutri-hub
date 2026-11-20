-- POWER NUTRI HUB — initial catalog scope
-- Safe to run after 202611200001_initial_schema.sql.
-- Idempotent seed: creates only the approved brands and the supplier placeholder.
-- Does not import products, prices, stock, credentials, or external images.

insert into public.brands (name)
values
  ('Integralmedica'),
  ('Max Titanium'),
  ('Under Labz'),
  ('Adaptogen'),
  ('Body Action'),
  ('Dr. Peanut'),
  ('DUX'),
  ('Demons Lab'),
  ('Vitafor'),
  ('Herbolab')
on conflict (name) do nothing;

insert into public.suppliers (name, active)
select 'Body Burn Distribuidora', true
where not exists (
  select 1
  from public.suppliers
  where lower(name) = lower('Body Burn Distribuidora')
);
