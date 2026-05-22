#!/usr/bin/env nu

def main [] {}

def game [] {
  loop {
    let cmptr = match (random int 1..3) {
      1 => "r",
      2 => "p",
      3 => "s"
    };
    print -n "Press [q] to quit.\nChoose one of [R]ock, [P]aper or [S]cissors: ";
    let user_input = input listen --types [key];

    if ($user_input.key_type == char) and ($user_input.code == q) {
      print "\nBye!"
      break
    }
    if ($user_input.key_type == char) and ($user_input.code == r) {
      
    }
    if ($user_input.key_type == char) and ($user_input.code == p) {
    }
    if ($user_input.key_type == char) and ($user_input.code == s) {
    }
  }
}

game
