# The RPS game
def game [] {
  $env.WIN = 0;
  $env.LOSE = 0;
  $env.DRAW = 0;
  loop {
    sleep 1ms
    clear
    let cmptr = match (random int 1..3) {
      1 => "r",
      2 => "p",
      3 => "s"
    };
    print -n $"Press [q] to quit.\nWin: ($env.WIN),Lose: ($env.LOSE),Draw: ($env.DRAW)\nChoose one of [R]ock, [P]aper or [S]cissors: ";

    # let user_input = match (random int 1..3) {
    #   1 => "r",
    #   2 => "p",
    #   3 => "s"
    # };

    let user_input = input listen -t [key];
    let key_type = $user_input.key_type;
    let code = $user_input.code;

    print "";

    if ($key_type == char) and ($code == q) {
      print "Bye!"
      break
    } else if ($key_type == char) {
      if $code == $cmptr {
        print "Draw!"
        $env.DRAW += 1
      }
      if $code == r {
        if $cmptr == s {
          print 'Win'
          $env.WIN += 1
        }
        if $cmptr == p {
          print 'Lose'
          $env.LOSE += 1
        }
      }
      if $code == s {
        if $cmptr == r {
          print 'Lose'
          $env.LOSE += 1
        }
        if $cmptr == p {
          print 'Win'
          $env.WIN += 1
        }
      }
      if $code == p {
        if $cmptr == r {
          print 'Win'
          $env.WIN += 1
        }
        if $cmptr == s {
          print 'Lose'
          $env.LOSE += 1
        }
      } 
    }
  }
}
