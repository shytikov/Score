\version "2.14.2"

\header {
  title = "Песня про зайцев"
  composer = "А. Дербенёв"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4

   r4 r4 \times 2/3 { r8 c8 e8 } | 
   \times 2/3 { < e c >8 g8 fis8 } < f a, >4 ~ \times 2/3 { f8 e8 c8 } |
   \times 2/3 { < d des, fes>8 c8 a8 } <g d f>4 \times 2/3 { r8 c,8 d,8 } |
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4

  r4 r4 r4 |
  <e a >4 < d c' >2
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Укулеле"
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
    \new TabStaff = "ukulele" \upper \set TabStaff.stringTunings = #ukulele-tuning
  >>

  \header { }
  \layout { }
  \midi { }
}
