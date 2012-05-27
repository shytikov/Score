\version "2.14.2"

\header {
  title = "Облака"
  composer = "В. Шаинский"
}

upper = \relative c'' {
  \clef treble
  \key aes \major
  \time 4/4

  r2. c,8 f8

  \repeat volta 2 {
    as4 g8 f8 e8 f8 g8 e8 |
    f2. c8 des8 |
    es4 es8 es8 f8 es8 des8 es8 |
    des8 ( c8) c2 des8 c8 |
    bes4 des8 f8 bes8 aes8 g8 f8 |
    aes2. g8 f8 |
    c4 f8 g8 aes8 g8 b8 a8 |
    g8 ( f8) f8 r8 c8 ( f8) aes8 < aes c >8 ~ |
    < aes c >1 ~ |
    < aes c >8 < f des' >4 < aes c >8 < f des' >8 < aes c >8 < g bes>8 < f aes >8 |  
    < e c >8 ( < e g > 4 ) < e g >8 ( < e g > 4 ) | 
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
