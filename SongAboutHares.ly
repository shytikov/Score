\version "2.14.2"

\header {
  title = "Песня про зайцев"
  composer = "А. Дербенёв"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4

  r c' e' | 
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4

  r
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \header { }
  \layout { }
  \midi { }
}
