#!/usr/bin/env nu

def calculator [] {
  $env.EXP = ""
  loop {
    clear;
    print --no-newline "Please enter the exp to be evaluated: ";
    let user_input: record = input listen --types [key];
    print "";

    let code: string = $user_input.code;
    let key_type: string = $user_input.key_type;
    let modifier: list = $user_input.modifiers;

    if $code == q and $key_type == char {
      break;
    }
  }
}

calculator
