# Installation

Install the package via composer:

```shell
composer require abndevs/laravel-subscriptions
```

Publish the configuration:

```shell
php artisan vendor:publish --tag=laravel-permissions.config
```

Publish migrations:

```shell
php artisan vendor:publish --tag=laravel-permissions.migrations
```

Migrate:

```shell
php artisan migrate
```


# Attach Subscriptions to model

**Laravel Subscriptions** has been specially made for Eloquent. To add Subscription functionality to your User model just use
the `\AbnDevs\Subscriptions\Traits\HasSubscriptions` trait like this:

```php
namespace App\Models;

use AbnDevs\Subscriptions\Traits\HasSubscriptions;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasSubscriptions;
}
```

That's it, we only have to use that trait in our User model or any other model! Now your users may subscribe to plans.
Then you can import package's models wherever you need them or extend them in your own models.
