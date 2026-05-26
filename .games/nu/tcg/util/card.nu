export module card {
  # The make card func
  @example "How to make a card" {card-make 'Hu Tao' 10 10 0 false} --result { name: 'Hu Tao', energy: 10, hp: 10, mp: 0, isEnemy: false }
  export def card-make [
    name: string,  # The name of the card
    energy: int,   # The Starting energy
    hp?: int,      # The Starting health
    mp?: int,      # The Starting mana
    isEnemy?: bool,# Is the card of enemies only?
  ] {
    {
      name: $name,
      energy: $energy,
      hp: ( $hp | default 10 ),
      mp: ( $mp | default 20 ),
      isEnemy : ($isEnemy | default false)
    }
  }
}
