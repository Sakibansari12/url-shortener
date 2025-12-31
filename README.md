# URL Shortener Service (Laravel 10)

This project is a **company-based URL Shortener service** developed using **Laravel 10**.  
It implements **role-based authentication and authorization**, where different roles have different permissions to manage users and short URLs.

This project is created as part of an assignment and strictly follows all the given requirements.

---

## 🚀 Tech Stack

- **Framework:** Laravel 10
- **Authentication:** Laravel Sanctum
- **Database:** MySQL
- **Frontend:** Blade Templates (Simple HTML, no CSS)

---

## 🏢 System Overview

- The system supports **multiple companies**
- Each company can have **multiple users**
- Each user belongs to **only one company**
- Short URLs are **not publicly accessible**

---

## 👤 Roles & Permissions

The following roles are implemented in the system:

| Role        | Description |
|-------------|-------------|
| SuperAdmin  | Manages companies and users |
| Admin       | Manages users of own company and views URLs |
| Member      | Can only view short URLs |
| Sales       | Can create and manage short URLs |
| Manager     | Can create and manage short URLs |

---

## 🔐 Authentication

- Users can **log in and log out**
- Authentication is handled using **Laravel Sanctum**
- A **SuperAdmin account** is created using a **Database Seeder with raw SQL**

---

## 📩 Invitation Rules

User creation (invitation) follows strict rules:

- **SuperAdmin**
  - Can create users for existing companies
  - ❌ Cannot invite an Admin in a new company

- **Admin**
  - Can invite only **Sales** and **Manager**
  - ❌ Cannot invite another Admin or Member

- **Member / Sales / Manager**
  - ❌ Cannot invite any users

---

## 🔗 URL Shortener Rules

### URL Creation Permissions

| Role        | Can Create Short URL |
|-------------|----------------------|
| SuperAdmin  | ❌ No |
| Admin       | ❌ No |
| Member      | ❌ No |
| Sales       | ✅ Yes |
| Manager     | ✅ Yes |

---

### URL Visibility Rules

| Role        | Visible URLs |
|-------------|-------------|
| SuperAdmin  | ❌ Cannot view any URLs |
| Admin       | URLs **not created in their own company** |
| Member      | URLs **not created by themselves** |
| Sales       | URLs of **their own company** |
| Manager     | URLs of **their own company** |

---

### URL Resolution (Security)

- Short URLs are **NOT publicly resolvable**
- URLs can only be resolved via an **authenticated route**


---

## 🧪 Tests

The following scenarios are covered using Laravel Feature Tests:

- Admin and Member **cannot create short URLs**
- SuperAdmin **cannot create short URLs**
- Admin can only view URLs **not created in their own company**
- Member can only view URLs **not created by themselves**
- Short URLs are **not publicly accessible**

---

## ⚙️ Project Setup (Local)

### 1️⃣ Clone the repository
```bash
git clone <your-github-repository-url>
cd url-shortener

composer install
Environment setup
.env
DB_DATABASE=your_database_name
DB_USERNAME=root
DB_PASSWORD=



php artisan migrate --seed

php artisan serve

http://127.0.0.1:8000/pms/login

Email: sakib@gmail.com
Password: 123456
