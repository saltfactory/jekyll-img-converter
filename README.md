jekyll-img-converter
====================

[Jekyll](http://jekyllrb.com) custom **IMG** tag converter in markdown using with Redcarpet. This [Jekyll plugins#conveters](http://jekyllrb.com/docs/plugins/#converters) that is markdown conveter.


Usage
======

***jekyll-img-converter*** support to convert HTML **IMG** tag with inline style from markdown documents.

If you resize img in markdown document, you can define style into alt property of markdown.

e.g.

```markdown
![alt {max-width:320px;}]('./images/test.png' title)
```

This is converted the next

```html
<img src="./images/test.png" alt="alt" title="title" style="{max-width:320px;}"/>
```


## install (gem)

Open `Gemfile` in Jekyll project and insert the next.

```
gem 'jekyll-img-conveter'
```

and Open `_config.xml` in Jekyll project and insert the next below `gems:`.

```
gems:
	- jekyll-img-conveter
```

and bundle install

```
bundle install
```



## Manually install (git)

Clone sources from https://github.com/saltfactory/jekyll-img-conveter.

```
git clone https://github.com/saltfactory/jekyll-img-converter.git
```

and copy `jekyll-img-converter.rb` file to `_plugins` in Jekyll project.


License
========

The MIT License (MIT)

Copyright (c) 2014 SungKwang Song

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.



