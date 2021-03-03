# Modules

Compatibility:
Dart Sass
    since 1.23.0

LibSass
    ✗

Ruby Sass
    ✗

    Only Dart Sass currently supports @use. Users of other implementations must use the @import rule instead.

You don't have to write all your Sass in a single file. You can split it up however you want with the `@use` rule. This rule loads another Sass file as a module, which means you can refer to its variables, mixins, and functions in your Sass file with a namespace based on the filename. Using a file will also include the CSS it generates in your compiled output!

```scss
// _base.scss
$font-stack:    Helvetica, sans-serif;
$primary-color: #333;

body {
  font: 100% $font-stack;
  color: $primary-color;
}

// styles.scss
@use 'base';

.inverse {
  background-color: base.$primary-color;
  color: white;
}
```

```css
body {
  font: 100% Helvetica, sans-serif;
  color: #333;
}

.inverse {
  background-color: #333;
  color: white;
}
```

Notice we're using `@use` 'base'; in the `styles.scss` file. When you use a file you don't need to include the file extension. Sass is smart and will figure it out for you.