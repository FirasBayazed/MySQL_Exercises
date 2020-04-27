use employees;
-- add columns to book table for ASIN, UPC, EAN.
-- ASIN: Amazon Standard Identification Number - 10 Alphanumeric characters
-- UPC: Universal Product Code - 12 Numeric Digits. 
-- EAN: International/European Article Number - 13 Numeric Digits
-- Hint: use Decimal for columns with numeric digits

alter table book add column asin char(10) after isbn;
alter table book add column upc decimal(12,0) after asin;
alter table book add column ean decimal(13,0) after upc;

alter table book add column upc_barcode char(12) as (lpad(upc, 12,'0'));
alter table book add column ean_barcode char(13) as (lpad(ean, 13,'0'));

alter table book drop column ean_barcode ;

select (lpad(12345678, 12, '0'));