-- Create database Homework_session06_04
create database Homework_session06_04;
-- Create table OrderInfo
create table OrderInfo(
	id serial primary key,
	customer_id int,
	order_date date,
	total numeric(10,2),
	status varchar(20)
);
select * from OrderInfo;
-- Thêm 5 đơn hàng mẫu với tổng tiền khác nhau
insert into OrderInfo (customer_id, order_date, total, status) values
(1, '2023-10-01', 150000.00, 'Completed'),
(2, '2023-10-05', 2500000.00, 'Pending'),
(4, '2023-10-10', 32000000.00, 'Shipping'),
(3, '2023-10-12', 450000.50, 'Cancelled'),
(1, '2023-10-15', 1250000.00, 'Completed');

-- Truy vấn các đơn hàng có tổng tiền lớn hơn 500,000
select * from OrderInfo
where total > 500000;

-- Truy vấn các đơn hàng có ngày đặt trong tháng 10 năm 2024
select * from OrderInfo
where order_date between '2024-10-01' and '2024-10-31';

-- Liệt kê các đơn hàng có trạng thái khác “Completed”
select * from OrderInfo
where status = 'Completed';

-- Lấy 2 đơn hàng mới nhất
select * from OrderInfo
order by order_date desc limit 2 offset 0;