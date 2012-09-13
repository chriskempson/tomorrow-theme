# Jetbrains - Tomorrow Themes #

Color schemes for the IntelliJ, PyCharm, PhpStorm, WebStorm and RubyMine IDEs. Has color scheme support for the following languages: C/C++, Java, PHP, Ruby, Python, Scala, Javascript, Coffeescript, Freemarker, Velocity, Smarty, Twig, HAML, YAML, CSS, LESS, SASS, XML, HTML, Apache, XPath, Django, Regex, SQL, GQL and many more.

To install the theme, import the settings.jar within IntelliJ, or PHPStorm, etc. (with File|Import Settings...)

* Author: Miles Johnson
* Master: https://github.com/ChrisKempson/Tomorrow-Theme
* Fork: https://github.com/milesj/Tomorrow-Theme
* Fork: https://github.com/vbossica/Tomorrow-Theme (automatic generation)

Please report any issues or suggestions to the fork listed above. Thanks!

## Development How-To ##

You first need to install gradle (www.gradle.org) to automatically generate the IntelliJ color files and build the jar archive.

* modify the file `src/main/resources/Tomorrow.xml.ftl` accordingly
* execute `gradle generate` to generate the `Tomorrow*.xml` files
* execute `gradle jar` to build the `settings.jar` file (under `build/libs`)
* execute `gradle install` to copy the archive to the root of the project