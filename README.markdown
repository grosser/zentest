This is ZenTest without [AutoTest and UnitDiff](http://github.com/grosser/autotest)

ZenTest provides 2 different tools: zentest and multiruby.

ZenTest scans your target and unit-test code and writes your missing
code based on simple naming rules, enabling XP at a much quicker
pace. ZenTest only works with Ruby and Test::Unit. Nobody uses this
tool anymore but it is the package namesake, so it stays.

multiruby runs anything you want on multiple versions of ruby. Great
for compatibility checking! Use multiruby_setup to manage your
installed versions.

Install
=======
### Requirements
 * Ruby 1.6+, JRuby 1.1.2+, or rubinius
 * rubygems

###Setup
    sudo gem install zentest-without-autotest

From Source:
    git co git://github.com/grosser/zentest.git && cd zentest
    rake install

Strategy
========
There are two strategies intended for ZenTest: test conformance
auditing and rapid XP.

For auditing, ZenTest provides an excellent means of finding methods
that have slipped through the testing process. I've run it against my
own software and found I missed a lot in a well tested
package. Writing those tests found 4 bugs I had no idea existed.

ZenTest can also be used to evaluate generated code and execute your
tests, allowing for very rapid development of both tests and
implementation.

Features
========

* Scans your ruby code and tests and generates missing methods for you.
* Test against multiple versions with multiruby.
* Enhance and automatically audit your rails tests using Test::Rails.
* Includes a LinuxJournal article on testing with ZenTest written by Pat Eyler.
* See also: http://blog.zenspider.com/archives/zentest/
* See also: http://blog.segment7.net/articles/category/zentest

Synopsis
========
    ZenTest MyProject.rb TestMyProject.rb > missing.rb

    multiruby_setup mri:svn:current
    multiruby ./TestMyProject.rb

    (and other stuff for Test::Rails)

TODO
====
 - cleanup the readme: and insert useful examples + compact instructions + remove blabla

License
=======
###This is only ripped from ZenTest
Ripper: [Michael Grosser](http://pragmatig.wordpress.com)

### ZenTest Authors
 - http://www.zenspider.com/ZSS/Products/ZenTest/
 - http://rubyforge.org/projects/zentest/
 - ryand-ruby@zenspider.com

(The MIT License)

Copyright (c) 2001-2006 Ryan Davis, Eric Hodel, Zen Spider Software

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

