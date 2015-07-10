require 'json'
require 'date'
use Rack::ContentLength

app = Proc.new do |env|
  [
    200,
    { 'Content-Type' => 'application/json' },
    [
      {
        :name        => "Language Comparison",
        :pi          => Math::PI,
        :best_number => 27,
        :right_now   => DateTime.now.new_offset(0).xmlschema
      }.to_json
    ]
  ]
end

run app
