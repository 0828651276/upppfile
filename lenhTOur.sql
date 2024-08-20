use quanlytourdulich;

insert into city (cityname) values 
('Hà Nội'), 
('TP. Hồ Chí Minh'), 
('Đà Nẵng'), 
('Nha Trang'), 
('Huế');

insert into categorytour (categorycode, categoryname) values 
('LT001', 'Tour Tham Quan'), 
('LT002', 'Tour Nghỉ Dưỡng');

insert into destination (destinationname, `describe`, cost, city_id) values 
('Hạ Long Bay', 'Vịnh biển đẹp nhất Việt Nam', 5000000, 1),
('Sapa', 'Thị trấn vùng cao nổi tiếng', 3000000, 1),
('Bà Nà Hills', 'Khu du lịch nổi tiếng tại Đà Nẵng', 4000000, 3),
('Vinpearl Land Nha Trang', 'Công viên giải trí lớn nhất Nha Trang', 3500000, 4),
('Lăng Cô', 'Bãi biển tuyệt đẹp ở Huế', 2500000, 5);

insert into clients (nameclients, idnumber, datebirth, city_id) values 
('Nguyen Thanh Cong', '123456789', '2003-01-01', 1),
('Tran Hoa Ly', '234567890', '2003-02-02', 1),
('Le Van Chuyen', '345678901', '2000-03-03', 2),
('Pham Van Duy', '456789012', '1999-04-04', 2),
('Đo Van Kien', '567890123', '1998-05-05', 3),
('Hoang Thi No', '678901234', '2010-06-06', 3),
('Ngo Van Toan', '789012345', '2006-07-07', 4),
('Ly Thi Huong', '890123456', '2014-08-08', 4),
('Vu Van Cao', '901234567', '1997-09-09', 5),
('Đang Ha An', '012345678', '1998-10-10', 5);

insert into tour (tourcode, category_id, destination_id, datestart, dateend) values 
('T001', 1, 1, '2024-09-01', '2024-09-05'),
('T002', 1, 2, '2024-09-10', '2024-09-14'),
('T003', 2, 3, '2020-03-15', '2024-09-18'),
('T004', 1, 4, '2024-09-20', '2024-09-25'),
('T005', 2, 5, '2020-09-28', '2024-10-02'),
('T006', 1, 1, '2024-10-03', '2024-10-08'),
('T007', 2, 2, '2020-03-10', '2024-10-15'),
('T008', 1, 3, '2024-10-17', '2024-10-21'),
('T009', 2, 4, '2024-10-23', '2024-10-28'),
('T010', 1, 5, '2020-03-30', '2024-11-03'),
('T011', 2, 1, '2024-11-05', '2024-11-10'),
('T012', 1, 2, '2024-11-12', '2024-11-17'),
('T013', 2, 3, '2020-03-19', '2024-11-23'),
('T014', 1, 4, '2024-11-25', '2024-11-29'),
('T015', 2, 5, '2024-12-01', '2024-12-06');

insert into ordertour (tour_id, clients_id, status) values 
(1, 1, 'Đã đặt'),
(2, 2, 'Đã đặt'),
(3, 3, 'chua đặt'),
(4, 4, 'Đã đặt'),
(5, 5, 'chua đặt'),
(6, 6, 'Đã đặt'),
(7, 7, 'Đã đặt'),
(8, 8, 'chua đặt'),
(9, 9, 'Đã đặt'),
(10, 10, 'Đã đặt');


select 
    c.cityname, 
    count(t.id) as total_tours
from 
    tour t
    join destination d on t.destination_id = d.id
    join city c on d.city_id = c.id
group by 
    c.cityname;


select 
    count(*) as tours_in_march_2020
from 
    tour
where 
    month(datestart) = 3 
    and year(datestart) = 2020;


select 
    count(*) as tours_end_in_april_2020
from 
    tour
where 
    month(dateend) = 4 
    and year(dateend) = 2020;


