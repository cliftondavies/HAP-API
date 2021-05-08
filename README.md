[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://lbesson.mit-license.org/)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![Open Source Love png1](https://badges.frapsoft.com/os/v1/open-source.png?v=103)](https://github.com/ellerbrock/open-source-badges/)
![Tweeting](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)

# HAP API

> An API-only app consumed by the [HAP](https://github.com/cliftondavies/Hikes-Against-Poverty) frontend via token-based authentication with [devise-token-auth](https://devise-token-auth.gitbook.io/devise-token-auth/).

## MVP Features

The MVP endpoints include:

- GET /hikes
- GET /bookings
- POST /auth
- POST /auth/sign_in
- DELETE /auth/sign_out
- POST /hikes/{id}/appointments

## :toolbox: Tools & Technologies Used

### Built with

- Ruby v2.6.5
- Ruby on Rails v5.2.4
- PostgreSQL >=9.5

## :rocket: Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

[Ruby](https://www.ruby-lang.org/en/documentation/installation/): 2.6.5

Rails: 5.2.3

```ruby
gem install rails -v 5.2.3
```

[PostgreSQL](https://www.postgresql.org/download/): >=9.5

### Setup

Clone repo into your local environment:

Clone with SSH

```git
git clone git@github.com:cliftondavies/HAP-API.git
```

Clone with HTTPS

```git
git clone https://github.com/cliftondavies/HAP-API.git
```

Open project directory

```bash
cd [your-directory-name]
```

Install gems:

```ruby
bundle install
```

Set up database:

```ruby
rails db:create
rails db:migrate
```

### Local Usage

#### In console

Start console:

```ruby
rails console
```

#### In Browser

Start server:

```ruby
rails server
```

Open `http://localhost:3000/` in your browser.

### Deploy

```bash
heroku create
```
```bash
git push heroku master
```
```bash
heroku run rails db:migrate
```
```bash
heroku run rails db:seed
```
```bash
heroku open
```

## Author

👤 **Clifton Davies**

- Github: [@githubhandle](https://github.com/cliftondavies)
- Twitter: [@twitterhandle](https://twitter.com/cliftonaedavies)
- Linkedin: [linkedin](https://www.linkedin.com/in/clifton-davies-mbcs/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Postman](https://www.postman.com/)
- [HTTPie](https://httpie.io/)

## 📝 Copyright & License

Copyright (c) 2020 Clifton Davies.
This project is licensed under [MIT](https://opensource.org/licenses/MIT). See LICENSE file for details.
