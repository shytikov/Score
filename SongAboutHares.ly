\version "2.14.2"

\header {
  title = "Песня про зайцев"
  composer = "А. Дербенёв"
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 3/4

   r4 r4 \times 2/3 { r8 c8 e8 } | \times 2/3 { <e c>8 g8 f8 }
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 3/4

  r1
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
