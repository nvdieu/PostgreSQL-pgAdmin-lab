# PostgreSQL-pgAdmin-lab
<h3 align="center">Cách tạo và chạy stack PostgreSQL + pgAdmin4 bằng Docker</h3>


### b0: 
#### Cài đặt Docker Desktop
 Tải Docker Desktop tại đây: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)


#### Cài đặt Github CLI

[https://cli.github.com/](https://cli.github.com/)

#### Hoặc cài Github Desktop
[https://desktop.github.com/download/](https://desktop.github.com/download/)

### b1: Khởi động Docker Desktop
Khởi động Docker trước khi tiếp tục.

### b2: Mở terminal (hoặc PowerShell trên Windows)
git clone [https://github.com/nvdieu/PostgreSQL-pgAdmin-lab.git](https://github.com/nvdieu/PostgreSQL-pgAdmin-lab.git)

### Hoặc có thể download file .ZIP tù link trên và giải nén.

    cd PostgreSQL-pgAdmin-lab

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
