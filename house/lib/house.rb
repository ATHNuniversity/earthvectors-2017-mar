class House
  attr_reader :data, :prefix

  def initialize(orderer: DefaultOrder.new, prefixer: DefaultPrefix.new, data: HouseData.new.data)
    @data = orderer.order(data)
    @prefix = prefixer.prefix
  end

  def recite
    1.upto(12).collect {|i| line(i)}.join("\n")
  end

  def line(num)
    "#{prefix} #{phrase(num)}.\n"
  end

  def phrase(num)
    data.last(num).join(' ')
  end
end

class DefaultOrder
  def order(data)
    data
  end
end

class RandomOrder
  def order(data)
    data.shuffle
  end
end

class RandomButLastOrder
  def order(data)
    last_line = data[-1]
    data[0..-2].shuffle.push(last_line)
  end
end

class DefaultPrefix
  def prefix
    "This is"
  end
end

class PiratePrefix
  def prefix
    "Thar be"
  end
end

class HouseData
  def data
    [
      'the horse and the hound and the horn that belonged to',
      'the farmer sowing his corn that kept',
      'the rooster that crowed in the morn that woke',
      'the priest all shaven and shorn that married',
      'the man all tattered and torn that kissed',
      'the maiden all forlorn that milked',
      'the cow with the crumpled horn that tossed',
      'the dog that worried',
      'the cat that killed',
      'the rat that ate',
      'the malt that lay in',
      'the house that Jack built']
  end
end

class RandomActorsAndActions
  def data
    [
      ['the horse and the hound and the horn', 'that belonged to', ],
      ['the farmer sowing his corn',           'that kept',        ],
      ['the rooster that crowed in the morn',  'that woke',        ],
      ['the priest all shaven and shorn',      'that married',     ],
      ['the man all tattered and torn',        'that kissed',      ],
      ['the maiden all forlorn',               'that milked',      ],
      ['the cow with the crumpled horn',       'that tossed',      ],
      ['the dog',                              'that worried',     ],
      ['the cat',                              'that killed',      ],
      ['the rat',                              'that ate',         ],
      ['the malt',                             'that lay in',      ],
      ['the house',                            'that Jack built']
    ]
  end
end


#puts House.new(orderer: RandomOrder.new).line(12)
#puts House.new(prefixer: PiratePrefix.new).line(12)
puts House.new(orderer: RandomButLastOrder.new).line(12)
puts House.new(orderer: RandomButLastOrder.new).line(12)
