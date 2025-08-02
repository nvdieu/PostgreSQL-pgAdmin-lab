# PostgreSQL-pgAdmin-lab
<h3 align="center">Cách tạo và chạy stack PostgreSQL + pgAdmin4 bằng Docker</h3>


### b0: 
#### Cài đặt Docker Desktop
 Tải Docker Desktop tại đây: [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)


#### Cài đặt Git 

[https://git-scm.com/](https://git-scm.com/)

### b1: Khởi động Docker Desktop

   Khởi động Docker trước khi tiếp tục.

### b2:
#### Clone the Git repository:

git clone [https://github.com/nvdieu/PostgreSQL-pgAdmin-lab.git](https://github.com/nvdieu/PostgreSQL-pgAdmin-lab.git)

### Hoặc có thể download file .ZIP từ link trên và giải nén.

### b3:

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

## b4: Dừng phiên làm việc

Khi không dùng nữa, bạn có thể dừng các container:

    docker compose down

## b5: Vào lại phiên làm việc mới
  
   Mở Docker: Start lại Container PostgreSQL-pgAdmin-lab
  
   Vào lại localhost:5050

## b6: Lưu ý các file Script sql khi thực hành được lưu ở thư mục 
  
   ../PostgreSQL-pgAdmin-lab/pgadmin-data/storage/admin_binhbat.ai

  
