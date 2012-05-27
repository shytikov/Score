\version "2.14.2"

\header {
  title = "Облака"
  composer = "В. Шаинский"
}

upper = \relative c'' {
  \clef treble
  \key aes \major
  \time 4/4
  \tempo 4 = 120

  r2. c,8 f8

  \repeat volta 2 {
    as4 g8 f8 e8 f8 g8 e8 |
    f2. c8 des8 |
    es4 es8 es8 f8 es8 des8 es8 |
    des8 ( c8) c2 des8 c8 |
    bes4 des8 f8 bes8 aes8 g8 f8 |
    aes2. g8 f8 |
    c4 f8 g8 aes8 g8 b8 a8 |
    g8 ( f8) f8 r8 c8 ( f8) aes8 c8 ~ |
    c1 ~ |
    c8 des'4 c8 des'8 c8 g8 f8 |  
    c8 ( g 4 ) g8 ( g4 ) ~ | 
    g4. r8 c8 e8 g8 bes'8 ~ |
    bes1 |
    bes8 c'4 bes8 c'8 bes8 aes8 bes8 |
    des'8 ( c4 ) c8 ( c2 ) |
    r8 des'8 c8 des8 c8 bes8 a8 |
    c8 ( bes8 ) f8 des8 (des2) ~ |
    des2 c'4 g4 | 
    bes4 as2. |
    as8 bes4 as8 bes8 as8 g8 f8 |
    c'8 as8 f8 c8 (c2) ~ |
    c2 as4 e4 |
    f1 
  }
}

accompaniment = \chords {
    r1 |
    f2:m c2:7 |
    f1:m |
    es1 |
    aes2 a2: dim |
    bes1:m |
    b1:dim |
    f2:m c2:7 |
    f1:m
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Гитара"
    \accompaniment
    \new Staff = "upper" \upper
    \new TabStaff = "guitar" \upper \set TabStaff.stringTunings = #guitar-tuning
  >>

  \header { }
  \layout { }
  \midi { }
}
