#!/usr/bin/env nu

def main [] {}

def game [] {
  print -n "Choose one of [R]ock, [P]aper or [S]cissors: ";
  let user_input = input listen --types [key];
}
