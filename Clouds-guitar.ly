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

  % bar #1
  r2. c,8\mf f8\2

  \repeat volta 2 {
    as4\2 g8\2 f8\2 e8\2 f8\2 g8\2 e8\2 |
    f2.\2 c8\3 des8\3 |
    es4\3 es8\3 es8\3 f8\3 es8\3 des8\3 es8\3 |
    
    % bar #5
    des8\3 (c8\3) c2\3 des8\3 c8\3 |
    bes4\4 des8\3 f8\3 bes8\1 aes8\2 g8\2 f8\2 |
    aes2.\2 g8\2 f8\2 |
    c4\2 f8\2 g8\2 aes8\2 g8\2 bes8\1 aes8\2 |
    
    % bar #9
    g8\2 (f8\2) f8\2 r8 c8\2 (f8\2) aes8\2 c8\1 ~ |
    c1\1 ~ |
    c8\1 des4\1 c8\1 des8\1 c8\1 bes8\1 as8\2 |  
    c8\1 (g4\2) g8\2 (g2\2) ~ | 
    g4.\2 r8 c,8\2 (e8\2) g8\2 bes8\1 ~ |
    
    % bar #14
    bes1\1 ~ |
    bes8\1 c4\1 bes8\1 c8\1 bes8\1 aes8\2 bes8\1 |
    des8\1 (c4\1) c8\1 (c2\1) |
    r4 des8\1 c8\1 des8\1 c8\1 bes8\1 a8\1 |
    c8\1 (bes8\1) f8\2 des8\3 (des2\3) ~ |
    
    % bar #19
    des2\2 c'4\1 g4\2 | 
    bes4\1(\(as2.\2 ~ |
    as8\1 )\) bes4\1 as8\2 bes8\1 as8\2 g8\2 f8\2 |
    c'8\1 (as8\2) f8\2 c8\3 (c2\3) ~ |
    c2\2 as'4\2 e4\2 |
    f1\2
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
