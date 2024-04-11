# Rails Blog Template

- Version: 1.0.0
- Developer: [Sebastien Bourda](https://github.com/sebastienbourda)
- Created: 04-10-2024
- Last updated: 04-10-2024
- License: [MIT](licence.md)

## Tech
- Language: Ruby on Rails 7.1.3
- Database: PostgreSQL
- Frontend: TailwindCSS
- Authentication: From scratch [(based on Avi Flombaum's tutorial)](https://code.avi.nyc/)


## Features
- User authentication for users (sign up, sign in, sign out). Signup enable/disable by ENV variable.
- Create, edit, delete, and view posts.
- Trix editor for rich text editing in posts.


## Setup
- Clone the repository

```bash
git clone git@github.com:sebastienbourda/rails-blog-template.git
```

- Run to install dependencies

```bash
bundle install
```

- Run to create best_blog database and run migrations

```bash
rails db:create db:migrate
```

- Run to build the frontend and start the server

```bash
bin/dev
```

- Visit `http://localhost:3000` in your browser

- Create .env file and add the following variable

- ```SIGNUP_ENABLED="true"``` to enable sign up

  > !!! WARNING: Enable sign up in production only to create the first user (you), then disable it. !!!

  > You can let the sign up enabled but add role to user. And set the role to 'admin' for you.

  > You can also create the first user in the rails console.

- Remove banner rendering in `app/views/layouts/application.html.erb` and `app/views/shared/_banner.html.erb`


## License

This project is open source and available under the [MIT License](licence.md).
