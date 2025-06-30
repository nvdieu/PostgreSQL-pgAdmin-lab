# postgreSQL-lab
<h3 align="center">Cách tạo và chạy stack PostgreSQL + pgAdmin4 bằng Docker</h3>
<h3 align="center">Trên cả Mac và Windows:</h3>


### b0: Cài đặt Docker Desktop
Tải Docker Desktop tại đây: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)

### b1: Cài đặt Docker Desktop
Khởi động Docker trước khi tiếp tục.

### b2: Mở terminal (hoặc PowerShell trên Windows)
Clone : https://github.com/nvdieu/postgreSQL-lab.git

    cd postgreSQL-lab

    docker compose up -d

Truy cập pgAdmin
    Trình duyệt → mở địa chỉ: http://localhost:5050

Đăng nhập:

        Email: admin@binhbat.ai

        Password: 1234

Thêm kết nối PostgreSQL trong pgAdmin

    Click Add New Server
        Tab General:
            Name: Local PostgreSQL
        Tab Connection:
            Host: postgres
            Port: 5432
            Username: admin
            Password: 1234

Dừng hệ thống

Khi không dùng nữa, bạn có thể dừng các container:

    docker compose down
