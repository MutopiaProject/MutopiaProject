\version "2.14.0"

% The fermatas seven measures after mark 5
% This goes in parallel << >> with the music starting at mark 5
fermataSection = {
  s1*6
  s2. s4\fermata | s2 s4\fermata s4 | s2. s4\fermata |
}

fluteImL = \relative c' {
  \key df \major
  R1*18
  <<
    \tag#'part \cueWhile "clarinet1mL" "clarinet" #UP s1*5/2
    {
      R1*2
      \barNumberCheck#OnemL
      r2
    }
  >> \times2/3{r8(\pp f af} \times2/3{ df f af) } |
  df2( d)\scoreDynamicsOff df(\< d) df2\fz\< ef | f1->\ff~f4 r r2 R1*7
  R2 R1*7 \partcombineSoloIOnce
  \trCueWhile "hornsmL" "horn 8vb" #UP dff'' R1*3 \partcombineSoloIOnce
  \transposedCueDuring "horn1mL" #UP dff'' R1
  \key cs\minor
  \barNumberCheck#TwomL
  \times2/3{e,8(\pp ds cs} cs4~cs8 e8 ds cs) |
  \times2/3{e8(\< ds cs} cs4~cs8 e8 ds cs) |
  \times2/3{ b8( gs b } cs4\f a16 cs b a b4)\> |
  gs \times2/3{ b8( gs b } cs2)\p |
  \times2/3{e8(\p\< ds cs} cs4~cs8 e8 ds cs) |
  \times2/3{e8( ds cs} cs4~cs8 e8 ds cs) |
  cs16( e) gs-. gs-. gs4. fs8( \times4/5{ e16[ fs a gs fs] } cs'1)-^\f\>
  s1*0\! R1*5
  e,2(\p\< fs4 gs b4. cs16 b) b16(gs8.~gs4) |
  fs4.(\> gs8 a4 e) |
  e2(\pp fs4 e8.\prall cs16 cs1)\>~ |
  \barNumberCheck#ThreemL
  cs8\! r \times2/3{ cs8( ds e } fs2 | gs8) r
  \times2/3{ cs,8(\< ds e } fs2) | gs2( a4)\f gs~ |
  gs8(\> fs ds e~e fs e ds | cs)\! r
  \times2/3{ e(\p\< fs gs } a2 | gs8)\! r
  \times2/3{ e(\< fs gs } \acciaccatura b8 a2)\f |
  \acciaccatura b8 a2\< \acciaccatura e'8 d2
  \acciaccatura a'8 gs2.(\fz\> e8 cs) | bs8\! r r4 r2 R1*5
  R1*12 \partPageBreak
  \barNumberCheck#FourmL
  \cueWhile "oboe1mL" "oboe" #UP R1
  \override Script #'script-priority = #0
  gs8(\p\trill^\markup\tiny\sharp cs16)
  r bs8(\trill cs16) r
  fs\prall(ds cs) r bs8(\trill cs16) r |
  \times4/6{ es16[-. fs-. gs-. es-. ds-. cs]-. }
  \times4/6{ ds16[-. es-. fs-. es-. ds-. cs]-. }
  \times2/3{ ds->[ es fs] } \times2/3{ es-> gs r }
  \times2/3{ fs->[ es ds] } \times2/3{ es-> cs r }
  \once\override Script #'outside-staff-priority = #40
  \once\override TextScript #'outside-staff-priority = #200
  gs'1*7/8\trill^\markup\tiny\sharp\< s8\!
  <<
    { s1\mf\< s1\f\< }
    {
      \repeat unfold 2 \times4/6{ gs16[ gs gs gs gs gs16]~ }
      \repeat unfold 5 \times4/6 gs4.:16~
      \times 4/6 gs:16
    }
  >>
  e2\ff~e8 r r4
  r4 a,16.[\ff cs32] \times2/3{ e16-. e-. e-. } e2 |
  r4 a,16.[ cs32] \times2/3{ e16-.\> e-. e-. } e4
  a,16.[ cs32] \times2/3{ e16-. e-. e-. } |
  e1~e8\! r r4 r2
  \key df\major
  \barNumberCheck#FivemL
  <<
    R1*23
    \fermataSection
  >>
  \cueWhile "violin1mL" "violin" #UP R1
  f1\pp ~ | f4 r r2 R1
}

fluteIImL = \relative c' {
  \key df\major
  R1*18
  \cueWhile "clarinet1mL" "clarinet" #UP {
    R1*2
  \barNumberCheck#OnemL
    r2
  } \times2/3{r8(\pp f af} \times2/3{ df f af) } |
  af2( g) af(\< bf) bf2\fz\< bf4-> c-> | df1->\ff~df4 r r2 R1*7
  R2 R1*11
  \key cs\minor
  R1*8
  \cueWhile "clarinet1mL" "clarinet" #UP R1*5
  cs,2(\p\< ds4 e ds2 e)|
  a,4.(\> d8 cs2) |
  cs2.(\pp bs8 gs cs1)\>~ |
  cs8\! r r4 r2 R1*25
  R1*2
  \cueWhile "flute1mL" "flute I" #UP R1*2
  <<
    { s1\mf\< s1\f\< }
    {
      \repeat unfold 2 \times4/6{ gs''16[ gs gs gs gs gs16]~ }
      \repeat unfold 5 \times4/6 gs4.:16~
      \times 4/6 gs:16
    }
  >>
  e2\ff~e8 r r4
  r4 a,16.[\ff cs32] \times2/3{ e16-. e-. e-. } e2 |
  r4 a,16.[ cs32] \times2/3{ e16-.\> e-. e-. } e4
  a,16.[ cs32] \times2/3{ cs16-. cs-. cs-. } |
  cs1~cs8\! r r4 r2
  \key df\major
  \barNumberCheck#FivemL
  <<
    R1*22
    \fermataSection
  >>
  \partcombineSoloIIOnce
  \trCueWhile "cellomL" "cello 8vb" #DOWN c'' R1
  \cueWhile "violin1mL" "violin" #UP R1
  df1\pp~df4 r r2 R1
}

oboeImL = \relative c'' {
  \tag #'score \set Staff.soloText="Oboe I"
  \key df\major
  R1*21
  \cueWhile "oboe2mL" "oboe II" #DOWN R1*2
  \scoreDynamicsOff bf2\fz bf4->\< c-> df1->\ff~df4 r r2 R1*7 R2 R1*7
  \trCueWhile "hornsmL" "horn" #DOWN dff' R1*3
  \transposedCueDuring "horn1mL" #DOWN dff' R1
  \key cs\minor
  \barNumberCheck#TwomL
  \times2/3{e8(\pp ds cs} cs4~cs8 e8 ds cs) |
  \times2/3{e8(\< ds cs} cs4~cs8 e8 ds cs) |
  \times2/3{ b8( gs b } cs4\f a16 cs b a b4)\> |
  gs \times2/3{ b8( gs b } cs2)\p |
  \times2/3{e8(\p\< ds cs} cs4~cs8 e8 ds cs) |
  \times2/3{e8( ds cs} cs4~cs8 e8 ds cs) |
  cs16( e) gs-. gs-. gs4. fs8( \times4/5{ e16[ fs a gs fs] }
  cs'1*7/8)-^\f\> s8\!
  gs,2(\pp a4 gs)| a1\<~a4\! gs2(~gs8\> a) |
  a4( fs a gs)\pp gs1 |
  e'2(\p\< fs4 gs b4. cs16 b) b16(gs8.~gs4) |
  fs4.(\> gs8 a4 e) |
  e2(\pp fs4 e8.\prall cs16 cs1)\>~ |
  cs8\! r \times2/3{ cs8( ds e } fs2 | gs8) r
  \times2/3{ cs,8(\< ds e } fs2) | gs2( a4)\f gs~ |
  gs8(\> fs ds e~e fs e ds | cs)\! r
  \times2/3{ e(\p\< fs gs } a2 | gs8)\! r
  \times2/3{ e(\< fs gs } \acciaccatura b8 a2)\f |
  \acciaccatura b8 a2\< \acciaccatura e8 d2
  \acciaccatura a'8 gs2.(\fz\> e8 cs) | bs8\! r r4 r2 R1*5
  % tag to avoid warning due to simltaneous grace note in cello
  R1*9 \tag#'part \pageBreak
  \cueWhile "violin1mL" "violin" #DOWN R1*3
  \barNumberCheck#FourmL
  \times4/6{ es16[-. fs-. gs-. es-. ds-. cs]-. }
  \times4/6{ ds16[-. es-. fs-. es-. ds-. cs]-. }
  \times2/3{ ds[ es fs] } \times2/3{ es[ gs] r }
  \times2/3{ fs[ es ds] } \times2/3{ es[ cs] r } |
  gs1\p
  \override Script #'script-priority = #0
  gs8(\p\trill^\markup\tiny\sharp cs16) r bs8(\trill cs16) r
  fs\prall(ds cs) r bs8(\trill cs16) r |
  gs'1*7/8\trill^\markup\tiny\sharp\< s8\!
  <<
    { s1\mf\< s1\f\< }
    {
      \repeat unfold 2 \times4/6{ gs16[ gs gs gs gs gs16]~ }
      \repeat unfold 5 \times4/6 gs4.:16~
      \times 4/6 gs:16
    }
  >>
  a2\ff~a8 r r4
  r4 a,16.[\ff cs32] \times2/3{ e16-. e-. e-. } e2 |
  r4 a,16.[ cs32] \times2/3{ e16-.\> e-. e-. } e4
  a,16.[ cs32] \times2/3{ e16-. e-. e-. } |
  e1~e8\! r r4 r2
  \key df\major
  \barNumberCheck#FivemL
  <<
    R1*9
    \fermataSection
  >>
  \cueWhile "violin1mL" "violin" #DOWN R1*2
  \partcombineSoloI R1
  r2 af,8\(\p df f af bf2 af4.\) r8 R1*8
  \trCueWhile "cellomL" "cello 8vb" #DOWN c'' R1
  \partcombineAutomatic
  f1(\p\> af)\pp~af4 r r2 R1
}

markEH = -\tag#'part ^\markup\whiteout\pad-around#0.3 \large"English Horn"
markOboe = -\tag#'part ^\markup\whiteout\pad-around#0.3 \large"Oboe"

oboeIImL = \relative c'' {
  \transposition f
  \key df\major
  R1*6
  \tag #'score \set Staff.shortInstrumentName="E H"
  \tag #'score \set Staff.soloIIText="English horn"
  s1*0\markEH
  c8.(\p ef16 ef4 c8. bf16 af4)|
  bf8.( c16 ef8. c16 bf2)|
  c8.( ef16 ef4 c8. bf16 af4)|
  bf8( c bf8. af16 af2)|
  f'8.(\p\< af16 af4) g8( ef f4) | f8(\> af g ef f2)\!|
  f8.(\< af16 af4) g8( ef f4) | f8(\> af g ef f2)\!|
  c8.(\pp ef16 ef4 c8 bf af4)|
  bf8.( c16 ef8. c16 bf2)|
  c8.(\< ef16 ef4 af8. bf16 c4)|
  bf8.[(\f\> af16 bf8 f] af2)|s1*0\!
  \tag #'score \set Staff.instrumentName="Ob"
  \tag #'score \set Staff.shortInstrumentName="Ob"
  \tag #'score \set Staff.soloIIText="Oboe II"
  \transposition c'
  R1*2
  \barNumberCheck#OnemL
  \cueWhile "flute1mL" "flute" #UP R1
  s1*0\markOboe
  af,2(\pp g) af(\< bf) gf2\fz\< gf2 | af1->\ff~af4 r r2
  \tag #'score \set Staff.shortInstrumentName="E H"
  \tag #'score \set Staff.soloIIText="English horn"
  \transposition f
  R1*7
  R2 R1
  s1*0\markEH
  c8.(\p ef16 ef4 c8. bf16 af4)|
  bf8.( c16 ef8. c16 bf8 ef4.)|
  c8.(\< ef16 ef4 af8. bf16 c4)\f|
  bf8.[(\> af16 bf8 f] af2)\!|
  \tag #'score \set Staff.shortInstrumentName="Ob"
  \tag #'score \set Staff.soloIIText="Oboe II"
  \transposition c'
  R1*6
  \key cs\minor
  R1*8
  s1*0\markOboe
  e,2(\pp a4 gs)| a1\<~a4\! gs2(~gs8\> a) |
  a4( fs a gs)\pp gs1
  cs2(\p\< ds4 e ds2 e)|
  a,4.(\> d8 cs2) |
  cs2.(\pp bs8 gs cs1)\>~ |
  \barNumberCheck#ThreemL
  cs8\! r r4 r2 R1*25 \partPageBreak
  \cueWhile "oboe1mL" "oboe I" #UP R1
  gs1\p
  \override Script #'script-priority = #0
  gs8(\p\trill^\markup\tiny\sharp cs16) r bs8(\trill cs16) r
  fs\prall(ds cs) r bs8(\trill cs16) r |
  gs'1*7/8\trill^\markup\tiny\sharp\< s8\!
  <<
    { s1\mf\< s1\f\< }
    {
      \repeat unfold 2 \times4/6{ gs16[ gs gs gs gs gs16]~ }
      \repeat unfold 5 \times4/6 gs4.:16~
      \times 4/6 gs:16
    }
  >>
  e2\ff~e8 r r4
  r4 a,16.[\ff cs32] \times2/3{ e16-. e-. e-. } e2 |
  r4 a,16.[ cs32] \times2/3{ e16-.\> e-. e-. } e4
  a,16.[ cs32] \times2/3{ cs16-. cs-. cs-. } |
  cs1~cs8\! r r4 r2
  \tag #'score \set Staff.shortInstrumentName="E H"
  \tag #'score \set Staff.soloIIText="English horn"
  \transposition f
  \key df\major
  \barNumberCheck#FivemL
  s1*0\markEH
  << \fermataSection {
    c8.(\p ef16 ef4 c8. bf16 af4)|
    bf8.( c16 ef8. c16 bf2)|
    c8.( ef16 ef4 c8. bf16 af4)|
    bf8( c bf8. af16 af2)~| af2\pp~af8 r r4
    \tag #'score \set Staff.shortInstrumentName="Ob"
    \tag #'score \set Staff.soloIIText="Oboe II"
    \transposition c'
    R1 R1 R1 R1
  } >> R1*13
  \trCueWhile "cellomL" "cello 8vb" #DOWN c'' R1
  s1*0\markOboe
  df1(\p\> df1)\pp~df4 r r2 R1
}

clarinetImL = \relative c'{
  \key ef\major
  \transposition a
  \removeWithTag#'score \inA
  g2\pp f | g e | e\< e4( fs) gs1->\f\>~gs8\pp r r4 r2 |
  \tag #'score \set Staff.shortInstrumentName
  = \markup\concat{"Cl(B"\flat")"}
  \tag #'score \set Staff.instrumentName="Cl"
  \transposition bf
  R1*5
  \inB af8(\p\< c c4 bf8 g af4) | af8(\> c bf g af2)\!
  af8(\< c c4 bf8 g af4) | af8(\> c bf g af2 | bf8)\! r r4 r2 R1*3
  \scoreDynamicsOff f''8.[(\pp ef16 f8 c] ef2) | f4.( ef8 f4 c)
  \barNumberCheck#OnemL
  ef1 g2(\pp a) g1\< af!\fz\< bf->\ff~bf4 r4 r2 R1*7
  R2
  R1 \cueWhile "oboe2mL" "English Horn" #UP R1*4
  f8.[(\p\> ef16 f8 c] ef2) s1*0\! \partcombineUnisonoOnce
  \tag #'score \set Staff.shortInstrumentName="Cl(A)"
  \transposition a
  R1*5
  \key e\minor
  R1*4
  \cueWhile "flute1mL" "flute" #UP R1*2
  \inA g,1\p\< g1*7/8\f\> s8\!
  e'2(\pp fs4 g) b(\< a2 c4~ c4)\! b~b8 a8(~a g) |
  \tag#'score \once\override PhrasingSlur #'direction = #UP
  g4\(\> fs a g8\prall\pp fs | g16 e8.~ e2.~ e1\)\< a2\fz( d,) |
  f4.(\> d8 g4 b,) c2.(\pp b4) | b1*7/8\> s8\!
  e,16(\pp g b g e g b g c, e a e c e a e)|
  e16( g b g e\< g b g c, e a e c e a e)|
  b16( d fs d b e g e a,\f g' fs\> e d fs b fs)|
  g16( b d b g d' b g e g b g e g b g)|
  e16(\p g b g e g b e g, bf c bf g bf c e)
  e,16(\< g b g e g b e g, bf c bf g bf c e)
  f,16( a c a f a c f) a,( c f c a c f a)|
  b,(\fz g') g(b,) b(g')\> g(b,) b(g') g(b,) b(g') g(b,) |
  b8\! r8 r4 r2 R1*5
  b,2(\pp e) | g4( f2 a4~a) g4(~g8 fs4 e8) |
  e2. ds8(b') b2~b8 r b,(ds) |
  e2(\< fs4 g) | a2(\mf g) f(\> g4 e) |
  \tag#'score \once\override PhrasingSlur #'direction = #UP
  e2.\(\p\> ds4 e8\)\! r r4 r2 R1*2 \partPageBreak
  \cueWhile "oboe1mL" "oboe" #UP R1
  \times4/6{ gs16[( a b gs fs e] }
  \times4/6{ fs16[ gs a gs fs e]) }
  \times2/3{ fs->[( gs a] } \times2/3{ gs-> b) r }
  \times2/3{ a->[( gs fs] } \times2/3{ gs-> e) r }
  b'16-. b-. b-. b-. b4:16-.\< b:16-. b:16-.
  \override Script #'script-priority = #0
  b8(\f\trill^\markup\tiny\sharp e16) r ds8(\trill\< e16) r
  a\prall(fs e) r ds8(\trill e16) r\!|
  <<
    { s1\mf\< s1\f\< }
    {
      \repeat unfold 2 \times4/6{ b16[ b b b b b16]~ }
      \repeat unfold 5 \times4/6 b4.:16~
      \times 4/6 b:16
    }
  >>
  g'2\ff~g8 r r4
  r4 c,16.[\ff e32] \times2/3{ g16 g g } g2 |
  r4 c,16.[ e32] \times2/3{ g16\> g g } g4
  c,16.[ e32] \times2/3{ g16 g g } |
  g1~g8\! r r4 r2
  \tag #'score \set Staff.shortInstrumentName=
  \markup\concat{"Cl(B"\flat")"}
  \transposition bf
  \key ef\major
  \barNumberCheck#FivemL
  R1*12
  \cueWhile "oboe1mL" "oboe" #UP R1
  \inB f8.[(\p ef16 f8 c] ef2) |
  f8.[(\> ef16 f8 c] ef2)\pp~ | ef1~ ef8 r r4 r2 R1*5
  \trCueWhile "cellomL" "cello 8vb" #DOWN d'' R1
  bf1\p\>~bf4\! r r2 R1*2
}

clarinetIImL = \relative c' {
  \key ef\major
  \transposition a
  \removeWithTag#'score \inA
  g2\pp f | g e | e\< e4( fs) gs1->\f\>~gs8\pp r r4 r2 |
  \tag #'score \set Staff.shortInstrumentName=
  \markup\concat{"Cl(B"\flat")"}
  \tag #'score \set Staff.instrumentName="Cl"
  \transposition bf
  R1*5
  \inB af8(\p\< c c4 bf8 g af4) | af8(\> c bf g af2)\!
  af8(\< c c4 bf8 g af4) | af8(\> c bf g af2 | bf8)\! r r4 r2 R1*3
  c'4.(\pp f,8 g2) | c2.( f,4)
  \barNumberCheck#OnemL
  g1 ef'2(\pp e) ef(\< e) ef2(\fz\< f) g1->\ff~g4 r4 r2 R1*7 R2
  R1 \cueWhile "oboe2mL" "English Horn" #UP R1*4
  c,4.(\p\> f,8 g2) s1*0\!
  \tag #'score \set Staff.shortInstrumentName="Cl(A)"
  \transposition a
  R1*5
  \key e\minor
  R1*4
  \cueWhile "flute1mL" "flute" #UP R1*2
  \tag#'part \inA \partcombineApart
  e1\p\< b1*7/8\f\> s8\!
  e'1\pp g4(\< f2 a4~ a4)\! g~g8 fs8(~fs e) |
  \tag#'score \once\override PhrasingSlur #'direction = #DOWN
  e2.\(\> ds4\pp | e16 g,8.~ g2.~ g4\) r r2 | d'2\fz( g,) |
  f'4.(\> d8 g4 b,) c2.(\pp b8 a) | g1*7/8\> s8\!
  \barNumberCheck#ThreemL \partcombineAutomatic
  e16(\pp g b g e g b g c, e a e c e a e)|
  e16( g b g e\< g b g c, e a e c e a e)|
  b16( d fs d b e g e a,\f g' fs\> e d fs b fs)|
  g16( b d b g d' b g e g b g e g b g)|
  e16(\p g b g e g b e g, bf c bf g bf c e)
  e,16(\< g b g e g b e g, bf c bf g bf c e)
  f,16( a c a f a c f) a,( c f c a c f a)|
  b,(\fz g') g(b,) b(g')\> g(b,) b(g') g(b,) b(g') g(b,) |
  b,8\! r8 r4 r2 R1*5 \partPageBreak
  g2(\pp c4 b) | c1 c4(b2) b8(c) |
  c4( a c b) | b2 ~ b8 r \partcombineApart r4 |\partcombineAutomatic
  b2(\< e2) | fs2(\mf d) | c4.(\> d8 e4 b) |
  \tag#'score \once\override PhrasingSlur #'direction = #DOWN
  c2.\(\p\> b4~b8\)\! r r4 r2 R1*2
  \barNumberCheck#FourmL
  \cueWhile "oboe1mL" "oboe" #UP R1
  \times4/6{ gs'16[(\p a b gs fs e] }
  \times4/6{ fs16[ gs a gs fs e]) }
  \times2/3{ fs->[( gs a] } \times2/3{ gs-> b) r }
  \times2/3{ a[( gs fs] } \times2/3{ gs e) r }
  e16-. e-. e-. e-. e4:16-.\< e:16-. e:16-.
  \override Script #'script-priority = #0
  b8(\f\trill^\markup\tiny\sharp e16) r ds8(\trill\< e16) r
  a\prall(fs e) r ds8(\trill e16) r\!|
  <<
    { s1\mf\< s1\f\< }
    {
      \repeat unfold 2 \times4/6{ b'16[ b b b b b16]~ }
      \repeat unfold 5 \times4/6 b4.:16~
      \times 4/6 b:16
    }
  >>
  c2\ff~c8 r r4
  r4 c16.[\ff e32] \times2/3{ g16 g g } g2 |
  r4 c,16.[ e32] \times2/3{ e16\> e e } e4
  \partcombineChordsOnce c16.[ e32] \times2/3{ e16 e e } |
  e1~e8\! r r4 r2
  \tag #'score \set Staff.shortInstrumentName
  = \markup\concat{"Cl(B"\flat")"}
  \transposition bf
  \key ef\major
  \barNumberCheck#FivemL
  R1*12
  \cueWhile "oboe1mL" "oboe" #UP R1
  \tag#'part \inB c4.(\p f,8 g2) |
  c4.(\> f,8 g2)\pp~ | g1~ g8 r r4 r2 R1*5
  \trCueWhile "cellomL" "cello 8vb" #DOWN d'' R1
  g1\p\>~g4\! r r2 R1*2
}

bassoonImL = \relative c {
  \clef bass
  \key df\major
  b2\ppp bf | b af | df\< gf | df1->\f\>~df8\! r r4 r2 R1*9
  \trCueWhile "oboe2mL" "english horn 8va" #UP c R1*2
  f8.(\p\< af16 af4) df8.( ef16 f4) |
  ef8.(\f\> df16 ef8 bf df2*7/8) s16\! | df2(\pp af) | df1
  \barNumberCheck#OnemL
  af1 \scoreDynamicsOff df2(\pp b) | df2(\< bf) | gf'2\fz\< ef2 |
  df1->\ff~df4 r r2 R1*7
  R2 R1
  \trCueWhile "oboe2mL" "english horn 8va" #UP c R1*2
  f,8.(\< af16 af4) df8.( ef16 f4)\f |
  ef8.(\> df16 ef8 bf df2)\! | df2(\p\> af) s1*0\!
  R1*5
  \key cs\minor
  R1*6
  cs4(\p\< b a2) |
  cs,1\f\> s1*0\! R1*36 %
  R1*3
  \trCueWhile "violin1mL" "violin 8va" #UP c R1
  <<
    { s1\mf\< s1\f\< }
    {
      \repeat unfold 2 \times4/6{ gs'16[ gs gs gs gs gs16]~ }
      \repeat unfold 5 \times4/6 gs4.:16~
      \times 4/6 gs:16
    }
  >>
  e1\ff
  r4 a16.[\ff cs32] \times2/3{ e16 e e } e2 |
  r4 a,16.[ cs32] \times2/3{ e16\> e e } e4
  a,16.[ cs32] \times2/3{ e16 e e } |
  e1~e8\! r r4 r2
  \key df\major
  \barNumberCheck#FivemL
  <<
    R1*12
    \fermataSection
  >> %
  \trCueWhile "oboe1mL" "oboe 8va" #UP c R1
  df2(\p af) df2(\> af)\pp | af1~af8 r r4 r2 R1
  << R1 {
    \cueWhile "violin1mL" "" #UP s2
    \cueWhile "violin1mL" "violin" #UP s2
  } >>
  df2\pp b df bf\< | gf ef df1->\f\> df'\p\> ~ df4\! r r2
  R1*2 \partPageBreak
}

bassoonIImL = \relative c {
  \clef bass
  \key df\major
  e,2\ppp d | e df | bff'\< gf | df1->\f\>~df8\! r r4 r2 R1*9
  \cueWhile "oboe2mL" "english horn" #UP R1*2
  \cueWhile "bassoon1mL" "bassoon I" #UP R1*2
  gf'2(\pp df) | gf1
  \barNumberCheck#OnemL
  df1 ~ df4\pp r r2 R1*11
  R2 R1*3
  \cueWhile "bassoon1mL" "bassoon I" #UP R1*2
  gf2(\p\> df) s1*0\!
  R1*5
  \key cs\minor
  R1*6
  cs'4(\p\< b a2) |
  cs,1\f\> s1*0\! R1*36
  R1*3
  \trCueWhile "violin1mL" "violin 8va" #UP c R1
  <<
    { s1\mf\< s1\f\< }
    {
      \repeat unfold 2 \times4/6{ gs16[ gs gs gs gs gs16]~ }
      \repeat unfold 5 \times4/6 gs4.:16~
      \times 4/6 gs:16
    }
  >>
  cs1\ff
  r4 a'16.[\ff cs32] \times2/3{ e16 e e } e2 |
  r4 a,16.[ a32] \times2/3{ cs16\> cs cs } cs4
  \partcombineChordsOnce a16.[ a32] \times2/3{ cs16 cs cs } |
  cs1~cs8\! r r4 r2
  \key df\major
  \barNumberCheck#FivemL
  <<
    R1*12
    \fermataSection
  >> %
  \trCueWhile "oboe1mL" "oboe 8va" #UP c R1
  gf2(\p df) gf2(\> df)\pp | df1~df8 r r4 r2 R1
  \cueWhile "violin1mL" "violin" #UP R1
  df2\pp b df bf\< | gf ef df1->\f\> df'\p\> ~ df4\! r r2
  R1*2 \partPageBreak
}

