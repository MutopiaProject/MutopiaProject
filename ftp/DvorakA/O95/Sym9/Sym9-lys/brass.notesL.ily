\version "2.14.0"
% The fermatas seven measures after mark 5
% This goes in parallel << >> with the music starting at mark 5
fermataSection = {
  s2. s4\fermata | s2 s4\fermata s4 | s2. s4\fermata |
}

hornImL = \relative c'' {
  \transposition e
  \removeWithTag #'score \inE
  \partcombineApart
  g2\ppp fs | g a |
  a\< a | a1\f\>~ | a8\! \partcombineAutomatic r r4 r2
  R1*15
  \barNumberCheck#OnemL
  << \tag#'part {
    \transposedCueDuring "flute1mL" #DOWN gs {
      s2 s2^\markup\tiny"flute 8va"
    }
    \transposedCueDuring "flute1mL" #UP gs s1
  } R1*2 >>
  \partcombineApart r2 cs2\p\< | d\fz\< b | e->\ff e~ |
  e\>~ e8\pp \partcombineUnisono r r4 | \partcombineAutomatic
  R1*7 R2
  R1*6 |
  \trCueWhile "violin1mL" "violins" #UP gs' R1
  \tag#'part s1*0^\markup\italic"con sordini"
  cs8.(\p\< e16 e4) cs8( b a4)\!|
  cs8.( e16 e4) cs8( b a4)|
  cs8.( e16 e4)\> cs8.( e16 e4)\! | cs8.( e16) e2.\pp ~
  \barNumberCheck#TwomL
  e8 r r4 r2|
  R1*17 R1*26
  \barNumberCheck#FourmL
  R1*5
  \cueWhile "trumpet1mL" "trumpet" #UP R1
  s1*0^\markup\italic"senza sordini"
  f2.\ff f8. f16 |d c8. f2.\ff |
  R1*3
  \barNumberCheck#FivemL
  R1*6
  << \fermataSection
  R1*5 >>
  << \tag#'part {
    \trCueWhile "violin1mL" "violin" #UP gs' { s2*3 }
    \trCueWhile "oboe1mL" "oboe" #UP gs' { s2 }
    \trCueWhile "clarinet1mL" "clarinet" #UP gs' { s2 }
  } {
    R1*2
    r2
  } >>
  a2\p | r a\pp\>~ | a1~ | a8\! r r4 r2 |
  R1*2 R1*6 R1*2 \partPageBreak
}

hornIImL = \relative c' {
  \transposition e
  \removeWithTag #'score \inE
  e2\ppp fs | e r r1
  a,1\f\>~ | a8\! r r4 r2
  R1*15
  \barNumberCheck#OnemL
  R1*2
  << \tag#'part {
    \cueWhile "horn1mL" "horn I" #UP {s1 s1 s2}
  } {
    R1*2 r2
  } >> cs'\ff~ |cs\>~ cs8\pp r r4 |
  R1*7 R2
  R1*6
  \trCueWhile "violin1mL" "violin" #UP gs' R1
  s1*0^\markup\italic"con sordini"
  a8.(\p\< cs16 cs4) a8( e cs4)\!|
  a'8.( cs16 cs4) a8( e cs4)|
  a'8.( cs16 cs4)\> a8.( cs16 cs4)\! |
  \tag#'score \once\override NoteColumn #'ignore-collision = ##t
  a4 \partcombineApartOnce r4 r2
  \barNumberCheck#TwomL
  R1*18 R1*26
  \barNumberCheck#FourmL
  R1*5
  \cueWhile "trumpet1mL" "trumpet" #UP R1
  s1*0^\markup\italic"senza sordini"
  f'2.\ff f8. f16 |d c8. f2.\ff | \partcombineSoloI
  R1*3 %\stopStaff
  R1*19 R1*6 R1*2 \partPageBreak
}

hornIIImL = \relative c'' {
  % Horn IV plays first in C, so let him set transposition on score
  \transposition e
  \removeWithTag#'score \inE
  R1*16
  \trCueWhile "oboe2mL" "English horn" #UP gs' R1*2
  \trCueWhile "clarinet1mL" "clarinet" #UP gs' {
    R1 \tag#'score \inE
    R1
  }
  \barNumberCheck#OnemL
  a1\pp~ |
  a8 r r4 r2 |
  R1*2 \partcombineApart
  a2->\ff cs~ | cs\>~ cs8\pp \partcombineUnisono r r4 | \partcombineAutomatic
  R1*7 -\tag #'part ^\markup\large{\italic"muta in" "C"}
  \tag #'score \set Staff.shortInstrumentName
  = \markup\center-column {"H34" "(C)"}
  \transposition c
  R2
  R1*11
  R1*8 R1*10 R1*14 R1*12
  \barNumberCheck#FourmL
  R1*5
  \cueWhile "trumpet1mL" "trumpet" #UP R1
  \inC e->\ff e->
  \tag #'score \set Staff.shortInstrumentName
  = \markup\center-column {"H34" "(E)"}
  \transposition e
  R1*3 -\tag #'part _\markup\large{\italic"muta in" "E"}
  \barNumberCheck#FivemL
  R1*6
  <<
    \fermataSection
    R1*3
  >>
  R1*8
  \removeWithTag#'score \inE
  \trCueWhile "violin1mL" "violin" #UP gs' R1*2
  e,2\pp bf |
  e fs\< |
  d2. d4 |
  e1->\f\> |s1*0\! R1*2 |
  R1*2 \partPageBreak
}

hornIVmL = \relative c' {
  \tag #'score \set Staff.shortInstrumentName
  = \markup\center-column {"H34" "(C)"}
  \transposition c
  \removeWithTag #'score \inC
  e2\ppp d |
  e gs | a\< a | gs1\f\>~| gs8\! r r4 r2
  \tag #'score \set Staff.shortInstrumentName
  = \markup\center-column {"H34" "(E)"}
  \tag #'score \set Staff.instrumentName="H34"
  \transposition e
  R1*15 -\tag #'part _\markup\large{\italic"muta in" "E"}
  \barNumberCheck#OnemL
  << \tag#'part {
    \transposedCueDuring "flute1mL" #DOWN gs
    { s2 s2^\markup\tiny "flute 8va" }
    \transposedCueDuring "flute1mL" #UP gs s1*3
    \inE
    \cueWhile "horn3mL" "h III" #UP s2
  } { R1*4 r2} >>
  a\ff ~ | a2\>~ a8\pp r r4 |
  \tag #'score \set Staff.shortInstrumentName
  = \markup\center-column {"H34" "(C)"}
  \transposition c
  R1*7 -\tag #'part ^\markup\large{\italic"muta in" "C"}
  R2
  R1*11 R1*8 R1*10 R1*14 R1*12
  \barNumberCheck#FourmL
  R1*5
  \cueWhile "trumpet1mL" "trumpet" #UP R1
  \tag#'part \inC e->\ff e->
  \tag #'score \set Staff.shortInstrumentName
  = \markup\center-column {"H34" "(E)"}
  \transposition e
  R1*3 -\tag #'part _\markup\large{\italic"muta in" "E"}
  \barNumberCheck#FivemL
  R1*6
  <<
    \fermataSection
    R1*3
  >>
  R1*8
  \removeWithTag#'score \inE
  \trCueWhile "violin1mL" "violin" #UP gs' R1*2
  \removeWithTag#'part \inE
  e2\pp bf |
  e fs\< |
  d2. d4 |
  e1->\f\> |s1*0\p |
  R1*2 R1*2 \partPageBreak
}

trumpetImL = \relative c' {
  \tag #'score \set Staff.shortInstrumentName="T(E)"
  \transposition e
  \removeWithTag#'score \inE
  c2\ppp df | c df | c\< d | e1->\f\>~ | e8\! r r4 r2 |
  R1*15
  \barNumberCheck#OnemL
  << \tag#'part {
    \transposedCueDuring "flute1mL" #DOWN gs
    { s2 s2^\markup\tiny"flute 8va" }
    \transposedCueDuring "flute1mL" #UP gs s2*7
  } {
    R1*4 r2
  } >> cs'\ff ~ | cs\>~ cs8\p r r4 |
  \tag #'score \set Staff.shortInstrumentName="T(C)"
  \transposition c
  R1*7 -\tag #'part ^\markup\large{\italic"muta in" "C"}
  R2
  R1*11 R1*8 R1*10 R1*14 R1*12
  \barNumberCheck#FourmL
  R1*3
  \trCueWhile "violin1mL" "violin 8va" #UP dff R1*2
  \inC \scoreDynamicsOff
  bf16.[\f c32 af8] bf16.[ c32 af8]
  bf16.\< c32 bf16. c32 bf16. c32 bf16. c32 |
  cs2 cs8.->\ff e16 e4 | cs8. b16 a4 r2 |
  cs8. e16 e4\> cs8. b16 a4 |
  cs8.\mf b16 a4\> cs8. b16 a4 |
  cs4(\pp b a b) |
  \barNumberCheck#FivemL cs2\pp~cs8 r r4 |
  R1*18 R1*6 R1*2
}

trumpetIImL = \relative c' {
  \transposition e
  \removeWithTag#'score \inE
  c2\ppp df | c df | c\< d | e1->\f\>~ | e8\! r r4 r2 |
  R1*15
  << \tag#'part {
    \transposedCueDuring "flute1mL" #DOWN gs
    { s2 s2^\markup\tiny"flute 8va" }
    \transposedCueDuring "flute1mL" #UP gs s2*7
  } {
    R1*4 r2
  } >> a\ff ~ | a\>~ a8\p r r4 |
  \transposition c
  R1*7 -\tag #'part ^\markup\large{\italic"muta in" "C"}
  R2
  R1*11 R1*8 R1*10 R1*14 R1*12
  \barNumberCheck#FourmL
  R1*3
  \trCueWhile "violin1mL" "violin 8va" #UP dff R1*2
  \tag#'part \inC
  gf8[\f f] gf[ f] gf[\< gf] gf[ gf] |
  a!2 a8.->\ff cs16 cs4 | a8. e16 cs4 r2 |
  a'8. cs16 cs4\> a8. e16 cs4 |
  a'8.\mf e16 cs4\> a'8. e16 cs4 |
  a'4(\pp e cs e) |
  \barNumberCheck#FivemL es2\pp~es8 r r4 |
  R1*18 R1*6 R1*2 \partPageBreak
}

tromboneImL = \relative c' {
  \key df\major
  \clef alto
  gs2\ppp f | gs f | \scoreDynamicsOff
  ff\< bff | af1->\f\>~af8\! r r4 r2 R1*15
  << \tag#'part {
    \transposedCueDuring "flute1mL" #DOWN c
    { s2 s2^\markup\tiny"flute 8va" }
    \transposedCueDuring "flute1mL" #UP c
    {s1*3 s2}
  } {R1*4 r2} >>
  df\ff~ |df\>~ df8\p r r4 |
  R1*7
  R2
  R1*11
  \key cs\minor
  R1*8 R1*10 R1*14 R1*12
  \barNumberCheck#FourmL
  R1*5
  \cueWhile "trumpet1mL" "trumpet" #UP R1
  cs,8.->\ff~ e16-. a-. cs8.-> e4.-> r8 |
  r2 cs,8.->\f~ e16-. a-. cs8.-> | e4.-> r8 r2 |
  R1*2
  \key df\major
  \barNumberCheck#FivemL
  R1*6
  <<
    \fermataSection
    R1*3
  >>
  R1*8
  \cueWhile "violin1mL" "violin" #UP R1*2
  \partcombineChords df2\pp d | df d\< | \partcombineApart df ef |
  \partcombineChords f1->\f\> s1*0\p
  R1*2 |
  R1*2
}

tromboneIImL = \relative c {
  \key df\major
  \tag#'part \clef tenor
  b2\ppp bf | b df | df\< df4 ef | f1->\f\>~f8\! r r4 r2 R1*15
  << \tag#'part {
    \transposedCueDuring "flute1mL" #DOWN c,
    { s2 s2^\markup\tiny"flute 15ma" }
    \transposedCueDuring "flute1mL" #UP c,
    {s1*3 s2}
  } {R1*4 r2} >>
  af\ff~ |af\>~ af8\p r r4 |
  R1*7
  R2
  R1*11
  \barNumberCheck#TwomL
  \key cs\minor
  R1*8
  R1*10
  R1*14 \partPageBreak
  R1*12
  \barNumberCheck#FourmL
  R1*5
  \cueWhile "trumpet1mL" "trumpet" #UP R1
  cs,8.->\ff~ e16-. a-. cs8.-> e4.-> r8 |
  r2 cs,8.->\f~ e16-. a-. cs8.-> | e4.-> r8 r2 |
  R1*2
  \key df\major
  \barNumberCheck#FivemL
  R1*6
  <<
    \fermataSection
    R1*3
  >>
  R1*8
  \cueWhile "violin1mL" "violin" #UP R1*2
  f,2\pp g | f f\< | bf2. c4 | df1->\f\> s1*0\p
  R1*2 |
  R1*2
}

bassTrombonemL = \relative c {
  \key df \major
  \clef bass
  \tag#'part \mark "Trombone & Tuba"
  e,2\ppp d | e df | a'\< gf | df1->\f\>~ | df8\! r r4 r2 |
  R1*15
  << \tag#'part {
    \transposedCueDuring "flute1mL" #DOWN c,
    { s2 s2^\markup\tiny"flute 15ma" }
    \transposedCueDuring "flute1mL" #UP c,
    {s1*3 s2}
  } {R1*4 \partcombineSoloIOnce r2} >>
  \tag#'part s1*0^\markup\huge"Bass Trombone"
  df'2\ff~ | df\>~ df8\p r r4 |
  R1*7
  R2 R1*11
  \barNumberCheck#TwomL
  \key cs\minor
  R1*7 R1
  R1*10 R1*14
  R1*12
  \barNumberCheck#FourmL
  R1*5
  \cueWhile "trumpet1mL" "trumpet" #UP R1
  \tag#'part s1*0^\markup\huge"Bass Trombone"
  cs8.->\f~ e16-. a-. cs8.-> r2|
  r2 cs,8.->~ e16-. a-. cs8.-> |
  R1*3
  \barNumberCheck#FivemL
  \key df\major
  R1*6
  <<
    \fermataSection
    R1*3
  >>
  R1*8
  \trCueWhile "violin1mL" "violin 8va" #UP c R1*2
  \tag#'part s1*0^\markup\huge"Trombone & Tuba"
  df,2\pp b | df bf\< | gf ef | df1->\f\> s1*0\p
  R1*2 |
  R1*2
}

tubamL = \relative c {
  % no separate printed part for tuba
  \clef bass
  e,2\ppp d | e df | a'\< gf | df1->\f\>~ | df8\! r r4 r2 |
  R1*15
  R1*13
  R2 R1*11
  \barNumberCheck#TwomL
  R1*8 R1*10 R1*14 R1*12
  \barNumberCheck#FourmL
  R1*11
  \barNumberCheck#FivemL
  R1*6
  <<
    \fermataSection
    R1*3
  >>
  R1*8
  R1*2
  df'2\pp b | df bf\< | gf ef | df1->\f\> s1*0\p |
  R1*4
}
