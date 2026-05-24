#!/usr/bin/env nu

def main [] {}

def game [] {
  clear
  loop {
    let cmptr = match (random int 1..3) {
      1 => "r",
      2 => "p",
      3 => "s"
    };
    print -n "Press [q] to quit.\nChoose one of [R]ock, [P]aper or [S]cissors: ";

    let user_input = input listen --types [key];
    let key_type = $user_input.key_type;
    let code = $user_input.code;

    print "";

    if ($key_type == char) and ($code == q) {
      print "Bye!"
      break
    } else if ($key_type == char) {
      if $code == $cmptr {
        print "Draw!"
      }
      if $code == r {
        if $cmptr == s {
          print 'Win'
        }
        if $cmptr == p {
          print 'Lose'
        }
      }
      if $code == s {
        if $cmptr == r {
          print 'Lose'
        }
        if $cmptr == p {
          print 'Win'
        }
      }
      if $code == p {
        if $cmptr == r {
          print 'Win'
        }
        if $cmptr == s {
          print 'Lose'
        }
      }
    }
  }
}

game
