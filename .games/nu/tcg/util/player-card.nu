use source.nu card

export module player-cards {
  export def mk-player [] {
    {
      Hu_tao: (card card-make "Hu Tao" 0 10 10 false),
      Xin: (card card-make "Xin" 0 11 9 false),
      Bam: (card card-make "Bam" 2 13 10 true)
    }
  }
}
