# Brackets Tomorrow Theme
This is the [Tomorrow Theme](https://github.com/ChrisKempson/Tomorrow-Theme/) for [Brackets](http://brackets.io) by [Ryan Stewart](http://blog.digitalbackcountry.com).

_**These will not work on versions of Brackets prior to sprint 20**_

# Usage
Take these files and drop them into your `styles` directory in the Brackets source code. Then change line 56 of `styles/brackets_shared.less` and replace `brackets_theme_default.less` to whichever version of the Tomorrow theme you want to use.

_**In Brackets sprint 22 you need to change the file `styles/brackets_shared.less`**_

from

```
// Themes can rely on variables defined above
@import url(brackets_theme_default.less);
```

to

```
// Themes can rely on variables defined above
@import url(brackets_theme_default.less);
@import url(brackets_theme_tomorrow_night_bright.less);
```


# By


# Examples
## Tomorrow Night
![Brackets Tomorrow Night](https://raw.github.com/ryanstewart/tomorrow-theme/Brackets/Brackets/examples/brackets-tomorrow-night.png)

## Tomorrow
![Brackets Tomorrow](https://raw.github.com/ryanstewart/tomorrow-theme/Brackets/Brackets/examples/brackets-tomorrow.png)

## Tomorrow Night Eighties
![Brackets Tomorrow Night Eighties](https://raw.github.com/ryanstewart/tomorrow-theme/Brackets/Brackets/examples/brackets-tomorrow-night-eighties.png)

## Tomorrow Night Blue
![Brackets Tomorrow Night Blue](https://raw.github.com/ryanstewart/tomorrow-theme/Brackets/Brackets/examples/brackets-tomorrow-night-blue.png)

## Tomorrow Night Bright
![Brackets Tomorrow Night Bright](https://raw.github.com/ryanstewart/tomorrow-theme/Brackets/Brackets/examples/brackets-tomorrow-night-bright.png)
