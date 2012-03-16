Zebra ZPL [![build status][status-image]][ci]
=============================================

Writing Zebra ZPL files shouldn't vomit raw ASCII in your code.

The goal is to provide a DSL for creating these files without mucking about with control codes.

Example of the desired usage:

```ruby
label = ZebraZpl::Label.build do

  orientation   :n
  home          [20, 0]
  default_width 0, 0
  print_rate    :a
  quantity      4

  field [5, 20] do
    font  :d, height: 60
    width 1175
    lines 5
    data  'Test'
  end

end

label.to_s # => ^XA^FWN^LH20,0^BY0,0^PRA^PQ4^FO5,20^ADN,60^FB1175,5,,^FDTest^FS^XZ
```

<!-- links -->
[ci]: http://travis-ci.org/BM5k/zebra_zpl "build status"

<!-- images -->
[status-image]: https://secure.travis-ci.org/BM5k/zebra_zpl.png?branch=master
