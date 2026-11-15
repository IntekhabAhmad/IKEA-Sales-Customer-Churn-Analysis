select top 5 * from Combined_data;
EXEC sp_help 'Combined_Data';
alter table dbo.combined_data drop column new_country;
alter table dbo.combined_data add new_country int;
update dbo.combined_data
set new_cx_id = TRY_CAST(Customer_ID as int);
ALTER TABLE dbo.combined_data
ALTER COLUMN Country VARCHAR(100);
select distinct country from dbo.combined_data;
select COUNT(*) as invalid_quantity from dbo.combined_data where quantity < 1;
select COUNT(*) as total_rows from dbo.Combined_data;
select COUNT(*) as null_Quantity from dbo.Combined_data where Quantity is null;
select COUNT(*) as null_Invoice from dbo.Combined_data where new_invoice is null;
select COUNT(*) as null_invoice_date from dbo.Combined_data where new_invoice_date is null;
select COUNT(*) as null_price from dbo.Combined_data where new_price is null;
select COUNT(*) as null_cx_id from dbo.Combined_data where new_cx_id is null;
select new_invoice, new_stockCode, Quantity, new_invoice_date, new_price, new_cx_id, country,
COUNT(*) as ExactDupeCount from dbo.Combined_data
group by new_invoice, new_stockCode, Quantity, new_invoice_date, new_price, new_cx_id, country
Having count(*) >1;
with Deduped As (select *, ROW_NUMBER() Over(
partition by new_invoice, new_stockCode, Quantity, new_invoice_date, new_price, new_cx_id, country
order by (select null)) as row_num from dbo.Combined_data)
select new_invoice, new_stockCode, Quantity, new_invoice_date, new_price, new_cx_id, country into
dbo.Cleaned_data from Deduped where row_num = 1;