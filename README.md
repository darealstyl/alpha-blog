# Alpha Blog

Alpha Blog is a Ruby on Rails blogging platform with role-based access (regular users + admins). Users can create and manage text-based posts and assign them to one or more categories. The app is styled with Bootstrap and deployed on Render with a Neon Postgres database.

## Live Demo
- App: [<ALPHA_BLOG>](https://alpha-blog-yeqz.onrender.com)
- Repo: https://github.com/darealstyl/alpha-blog

## Screenshots

- Home: `docs/home.png`
- Post editor: `docs/editor.png`
- Admin dashboard: `docs/admin.png`

## Features
- User authentication (signup, login, logout)
- Role-based authorization
  - **Users:** create/edit their own posts
  - **Admins:** elevated permissions for site management
- Blog posts (text posts)
- Categories
  - Assign a post to **one or more** categories
  - Browse posts by category
- Pagination on users, articles, categories
- Responsive UI with Bootstrap

## Tech Stack
- **Ruby on Rails**
- **Bootstrap**
- **PostgreSQL (Neon in production)**
- **Render** (deployment)

## Getting Started (Local Setup)

### Prerequisites
- Ruby + Bundler
- PostgreSQL
- Node.js (only if your Rails setup uses JS bundling)

### 1) Clone + install dependencies
```bash
git clone https://github.com/darealstyl/alpha-blog.git
cd alpha-blog
bundle install
```

### 2) Environment variables
Create a .env (or use your preferred env manager) and set:
- DATABASE_URL=postgresql://USER:PASSWORD@HOST:PORT/DB_NAME
- RAILS_MASTER_KEY=your_master_key_if_used

### 3) Database setup

```bash
rails db:create
rails db:migrate
rails db:prepare
# optional, if you have seeds:
rails db:seed
```

### 4) Run the server

```bash
rails server
# or
# rails s
```

### Creating an Admin user

You can promote a user to admin status in the Rails console 

```bash
rails console
```
```ruby
user = User.find_by(email: "you@example.com")
user.update!(admin: true)
```

### Running tests

```bash
rails test
```

