# postgreSQL-lab
<h3 align="center">Cách tạo và chạy stack PostgreSQL + pgAdmin4 bằng Docker</h3>
<h3 align="center">Trên cả Mac và Windows:</h3>


### b1: Cài đặt Docker Desktop
Tải Docker Desktop tại đây: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)


Khởi động Docker trước khi tiếp tục.

### b2: Mở terminal (hoặc PowerShell trên Windows)
Chạy lệnh: 

    docker compose up -d

Truy cập pgAdmin
    Trình duyệt → mở địa chỉ: http://localhost:5050

Đăng nhập:

        Email: admin@example.com

        Password: admin123

Thêm kết nối PostgreSQL trong pgAdmin

    Click Add New Server
        Tab General:
            Name: Local PostgreSQL
        Tab Connection:
            Host: postgres
            Port: 5432
            Username: admin
            Password: secret
            Database: mydb

Dừng hệ thống

Khi không dùng nữa, bạn có thể dừng các container:

    docker compose down
