![Cryptocurrency Exchange Platform - Barong](https://github.com/openware/meta/raw/main/images/github_barong.png)

<h3 align="center">
<a href="https://www.openware.com/sdk">Guide</a> <span>&vert;</span>
<a href="https://www.openware.com/sdk/api/barong/barong-user-api-v2.html">API Docs</a> <span>&vert;</span>
<a href="https://www.openware.com/">Consulting</a> <span>&vert;</span>
<a href="https://t.me/peatio">Community</a>
</h3>
<h6 align="center">Component part of <a href="https://github.com/openware/opendax">OpenDAX Trading Platform</a></h6>

# Barong
[![Build Status](https://ci.openware.work/api/badges/openware/barong/status.svg)](https://ci.openware.work/openware/barong)

Barong is an authentication service for microservice architectures using JWT standard.

It's focused on security and rich KyC features, in a matter of fact it's used in Openware [Crypto exchange software](https://www.openware.com) stack.


# Overview

It includes the following features:

- Registration of users
- Role based access control (RBAC)
- Embedded KyC process
- Integrated [KycAID](https://www.openware.com/sdk/docs/barong/kycaid.html) plugin
- Mailing system: event based, support multi-language, secured by cryptographic signatures
- [Service accounts](https://www.openware.com/sdk/docs/barong/service-accounts.html)
- Focused on user privacy: sensitive informations are encrypted in database using vault, masks are applied on fields in user API endpoints


# Development

Prerequisites:
- Ruby version: `2.6.6`
- Bundler preinstalled
- MySQL preinstalled

1. Install RubyGems dependencies
```
bundle install
```

2. Copy initialisation files
```
bin/init_config
```

3. Create database and run migrations
```
bundle exec rake db:create db:migrate
```

4. Start local server
```
bundle exec rails server
```

# Barong Levels

In the process of verification Barong assign different levels to accounts

- Level 0 is default account level
- Level 1 will apply after email verification
- Level 2 will apply after phone verification
- Level 3 will apply after identity & document verification

# Useful links to documentation
[Barong configuration](https://www.openware.com/sdk/docs/barong/configuration.html)

[Troubleshooting](https://www.openware.com/sdk/docs/barong/troubleshooting.html)

[REST Admin API documentation](https://www.openware.com/sdk/docs/barong/api/barong-admin-api-v2.html)

[REST Management API documentation](https://www.openware.com/sdk/docs/barong/api/barong-management-api-v2.html)

[REST User API documentation](https://www.openware.com/sdk/docs/barong/api/barong-user-api-v2.html)

[API Keys creation and usage](https://www.openware.com/sdk/docs/barong/general/api-keys.html)

[Captcha policy overview and configuration](https://www.openware.com/sdk/docs/barong/general/captcha.html)

[Setting up 2FA](https://www.openware.com/sdk/docs/barong/general/2fa.html)

[Barong password hashing](https://www.openware.com/sdk/docs/barong/general/password-hashing.html)

[Barong data encryption](https://www.openware.com/sdk/docs/barong/general/encryption.html)

[Crypto exchange software](https://www.openware.com)

# License
Barong is released under the terms of the [Apache License 2.0](https://github.com/openware/barong/blob/master/LICENSE.md).
