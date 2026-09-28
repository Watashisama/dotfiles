# The RPS game
def --env game [] {
  $env.WIN = 0;
  $env.LOSE = 0;
  $env.DRAW = 0;
  print -n $"Press [q] to quit.\nWin: ($env.WIN),Lose: ($env.LOSE),Draw: ($env.DRAW)\nChoose one of [R]ock, [P]aper or [S]cissors: ";

  loop {
    sleep 1ms
    let cmptr = match (random int 1..3) {
      1 => "r",
      2 => "p",
      3 => "s"
    };

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
        clear
        $env.DRAW += 1
        print -n $"Press [q] to quit.\nWin: ($env.WIN),Lose: ($env.LOSE),Draw: (ansi green_bold)($env.DRAW)(ansi reset)\nChoose one of [R]ock, [P]aper or [S]cissors: ";
      }
      if $code == r {
        if $cmptr == s {
          clear
          $env.WIN += 1
          print -n $"Press [q] to quit.\nWin: (ansi green_bold)($env.WIN)(ansi reset),Lose: ($env.LOSE),Draw: ($env.DRAW)\nChoose one of [R]ock, [P]aper or [S]cissors: ";
        }
        if $cmptr == p {
          clear
          print 'Lose'
          $env.LOSE += 1
          print -n $"Press [q] to quit.\nWin: ($env.WIN),Lose: (ansi green_bold)($env.LOSE)(ansi reset),Draw: ($env.DRAW)\nChoose one of [R]ock, [P]aper or [S]cissors: ";
        }
      }
      if $code == s {
        if $cmptr == r {
          clear
          $env.LOSE += 1
          print -n $"Press [q] to quit.\nWin: ($env.WIN),Lose: (ansi green_bold)($env.LOSE)(ansi reset),Draw: ($env.DRAW)\nChoose one of [R]ock, [P]aper or [S]cissors: ";
        }
        if $cmptr == p {
          clear
          $env.WIN += 1
          print -n $"Press [q] to quit.\nWin: (ansi green_bold)($env.WIN)(ansi reset),Lose: ($env.LOSE),Draw: ($env.DRAW)\nChoose one of [R]ock, [P]aper or [S]cissors: ";
        }
      }
      if $code == p {
        if $cmptr == r {
          clear
          $env.WIN += 1
          print -n $"Press [q] to quit.\nWin: (ansi green_bold)($env.WIN)(ansi reset),Lose: ($env.LOSE),Draw: ($env.DRAW)\nChoose one of [R]ock, [P]aper or [S]cissors: ";
        }
        if $cmptr == s {
          clear
          $env.LOSE += 1
          print -n $"Press [q] to quit.\nWin: ($env.WIN),Lose: (ansi green_bold)($env.LOSE)(ansi reset),Draw: ($env.DRAW)\nChoose one of [R]ock, [P]aper or [S]cissors: ";
        }
      } 
    }
  }
}
