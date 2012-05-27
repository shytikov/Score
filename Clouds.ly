\version "2.14.2"

\header {
  title = "Облака"
  composer = "В. Шаинский"
}

melody = \relative c'' {
  \clef treble
  \key aes \major
  \time 4/4
  \tempo 4 = 120

  r2. c,8\mf f8

  \repeat volta 2 {
    as4 g8 f8 e8 f8 g8 e8 |
    f2. c8 des8 |
    es4 es8 es8 f8 es8 des8 es8 |
    des8 ( c8) c2 des8 c8 |
    bes4 des8 f8 bes8 aes8 g8 f8 |
    aes2. g8 f8 |
    c4 f8 g8 aes8 g8 bes8 aes8 |
    g8 ( f8) f8 r8 c8 ( f8) aes8 c8 ~ |
    c1 ~ |
    c8 des4 c8 des8 c8 bes8 as8 |  
    c8 ( g4 ) g8 ( g2 ) ~ | 
    g4. r8 c,8 ( e8 ) g8 bes8 ~ |
    bes1 ~ |
    bes8 c4 bes8 c8 bes8 aes8 bes8 |
    des8 ( c4 ) c8 ( c2 ) |
    r4 des8 c8 des8 c8 bes8 a8 |
    c8 ( bes8 ) f8 des8 (des2) ~ |
    des2 c'4 g4 | 
    bes4(\( as2. ~ |
    as8 )\) bes4 as8 bes8 as8 g8 f8 |
    c'8 (as8) f8 c8 (c2) ~ |
    c2 as'4 e4 |
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
    f1:m |
    f1:m |
    f1:m |
    c1:7 |
    c1:7 |
    c1:9 |
    c1:9 |
    f1:m |
    f1:7 |
    bes1:m |
    es1:7 |
    aes1:7 |
    des2 g2:m |
    f1:m|
    c2 c2:7 |
    f1:m
}

song = \lyrics {
    Ми- мо бе- ло- го яб- ло- ка лу- ны,
    Ми- мо крас- но- го яб- ло- ка за- ка- та 
    Об- ла- ка из не- ве- до- мой- стра- ны
    К_нам спе- шат и о- пять бе- гут ку- да- то.

    Об- ла- ка_- бе- ло- гри- вы- е ло- шад- ки,
    Об- ла- ка, что вы мчи- тесь без о- гляд- ки?
    Не смо- три- те вы, по- жа- луй- ста, свы- со- ка,
    А по не- бу про- ка- ти- те нас, об- ла- ка.
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Гитара"   
    \transpose aes g { \accompaniment }
    \transpose aes g { \melody }
    \addlyrics { \song }
    \new TabStaff = "guitar" \transpose aes g { \melody } \set TabStaff.stringTunings = #guitar-tuning
  >>

  \header { }
  \layout { }
  \midi { }
}
