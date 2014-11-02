# mruby-pp

`pp` for mruby. It is imported from CRuby.

## Install

Add the following line to your `build_config.rb`:

    config.gem :github => "kou/mruby-pp"

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

BSD 2-clause "Simplified" License

## Authors

  * Kouhei Sutou
  * Tanaka Akira (the pp author in CRuby)
