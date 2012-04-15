\version "2.14.2"

\header {
  title = "Песня про зайцев"
  composer = "А. Зацепин"
  opus = "Op. 9"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4

  a4 b c d
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4

  a2 c
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
