System requirements:
```
rspec
gem install rspec
```

A brief example of how to use this library:
```
require 'path/to/file/playing_cards.rb'

deck = PlayingCards::Deck.new
hand = PlayingCards::Hand.new({ deck: deck, draw_count: 2})

deck.shuffle
hand.draw
hand.fold
```

Run all unit tests through the below command:
```
rspec
```
