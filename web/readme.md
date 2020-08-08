# Start Laravel projectt
- `docker-compose run --rm composer create-project laravel/laravel .`

### Copy this code snippet to webpack.mix.js to enable hot reload

```js
mix.browserSync({
   proxy: "web:80",
   open: false
});
```