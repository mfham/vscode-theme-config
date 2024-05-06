require 'json'

module Hello
  class Bar
    include Enumerable

    attr_accessor :v

    CONST_HASH = {
      key1: 1,
      key2: 'a',
      key3: true
    }.freeze.transform_values(&:freeze)

    def initialize(v)
      @v = v
      @@vv = 77
      $vvv = 777
    end

    def method_1(value)
      begin
        if value > 10
          'aaa'
        elsif value > 5
          'bbb'
        else
          'ccc'
        end
      rescue StandardError => e
        777
      end
    end

    def method_2(value)
      str = <<-STR
        This is string sample.
        Hello!!
      STR

      "#{str}: ok"
    end

    def method_3
      [
        [
          {k: 1, v: 'v1'},
          {k: 2, v: 'v2'},
          {k: 3, v: 'v3'},
        ],
        [
          {k: 4, v: 'v4'},
          {k: 5, v: 'v5'},
          {k: 6, v: 'v6'},
        ],
      ]
    end

    def method_4
      %w[1, 2, 3, 4, 5].each do |n|
        next if n.to_i > 5
        break if n.to_i > 3
      end
      %w[1 2 3].map(&:to_i)
    end

    def method_5
      {
        k1: nil,
        :k2 => 1,
        'k3' => true,
        k4: 'aaa',
        k5: "bbb",
        k6: :bbb
      }
    end

    def method_6
      puts __FILE__
      pp 'use pp'
    end

    def method_7(str)
      str.match('aaa|bbb')
    end

    def method_8
      v = 1 + 1 > 1 ? 'a' : 'b'

      ENV[v];
    end

    def method_9
      'https://example.com'
    end
  end
end

class Foo < Hello::Bar
  def initialize(v)
    super(v)
  end
end

# RubyのDSL（Domain Specific Language）で定義された構文
RSpec.describe Foo do
  describe '#method_7' do
    subject { Foo.new(1).method_7(str) }

    context 'when it match' do
      let(:str) { 'aaa' }

      it 'it returns true' do
        expect(subject).to eq(true)
      end
    end
  end
end
