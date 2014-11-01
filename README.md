# mruby-pp

`pp` for mruby. It is imported from CRuby.

## Usage

    object = {
      "key1" => ["value1", "value2"],
      "key2" => ["value3", "value4"],
      "key3" => ["value5", "value6"],
    }
    pp object
    # => {"key1"=>["value1", "value2"],
    #     "key2"=>["value3", "value4"],
    #     "key3"=>["value5", "value6"]}

## License

MIT License

## Authors

  * Kouhei Sutou
  * Tanaka Akira (the pp author in CRuby)
