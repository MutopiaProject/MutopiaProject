\version "2.14.0"

violinImL = \relative c' {
  % Give 32nd notes a sudivided quarter-note-long beam
  \set Staff.subdivideBeams = ##t
  \set Staff.baseMoment = #(ly:make-moment 1 8)
  \set Staff.beatStructure = #'(2 2 2 2)
  \key df \major
  \trCueWhile "brassmL" "brass 8vb" #DOWN c'' R1 *4 |
  s1*0^\markup\italic"con sordino"
  f4.\ppp f8 f2\(~ |
  f8(-- ef)--\) f2. |
  f2( df) |
  c1 |
  df |
  df4(\db af4~ af2) |
  df1\pp\ub~ |
  df\db |
  df\ub\<~ |
  df\db\> |
  df2\ppp~ df8( af\db f' df) |
  c1 |
  f4(\< ef) df( af') |
  <<
    {s2\f\> s4. s8\p }
    { <gf bf>4.( gf8 f2) }
  >>
  R1*2
  \cueWhile "flute1mL" "flute" #UP R1*5
  r2 f'(\ppp~ |
  f8. af16 af4) gf8( ef f4) |
  df8( f ef c df2) |
  f8.( af16) af4\db gf8( ef f4) |
  df8( f ef c df2) |
  df8( f ef c df2) |
  df8(\< f ef c df bf c af) |
  df( f ef c df bf c af) |
  df(\> bf c af) df2.( cf8 bff)\p
  af1(\ppp~ |
  af2~\ub af8 c,4~ c8) |
  df(\< f ef4) df( af')\f |
  <gf bf>2(\fz\> af) |
  R1\!
  ef'4.(\pp df8 ef4 bf) |
  df2( af) |
  df( af~ |
  af4) r r2 |
  R1
  \key cs\minor
  R1*6
  \cueWhile "flute1mL" "winds" #UP R1*2
  e32(\p gs e gs e gs e gs e16) r8. r2 |
  r4 fs32(\ub a fs a fs a fs a fs16) r8. r4 |
  r2 fs32(\ub gs fs gs fs gs fs gs fs16) r8. |
  r4 a32( cs a cs a cs a cs a16) r8. gs32( bs gs bs gs) r16. |
  r4 e32(\pp gs e gs e gs e gs e16) r8. r4 |
  R1 |
  fs32(\fz\> b fs b fs b fs b fs16)\! r8. gs32( b gs b gs)\ub r16. r4 |
  fs32( a fs a fs a fs a fs16) r8. e32( a e a e) r16. r4 |
  a32( cs a cs a cs a cs a16) r8. r4 fs32( gs fs gs fs) r16. |
  \repeat tremolo 12 { e32( gs) } e(\> gs e gs e gs cs ds)\! |
  \barNumberCheck#ThreemL
  \times2/3{ e8(\pp ds cs) } cs4(~ cs8 e ds cs) |
  \times2/3{ e8(\< ds cs) } cs4(~ cs8 e ds cs) |
  \times2/3{ b8( gs b } cs4)\ub a16(\f\> cs b a b4)\ub |
  gs4( \times2/3{ b8 gs b) } cs2\pp\ub |
  \times2/3{ e8( ds cs) } cs4(~ cs8\< e ds cs) |
  \times2/3{ e8( ds cs) } cs4(~ cs8 e d! cs) |
  \times2/3{ fs8( e d } d4)\ub a'8(\f fs e\ub d) |
  d'(\ff cs bs b) as(\> a gs fss) |
  a(\mf gs fs e ds\>\ub cs bs fs') |
  e4(\fp ds2) d4~ |
  d2.\> cs4~\( |
  cs bs a2\ub ~ |\noBreak
  a4\) gs( fss2~ |
  fss4)\pp gs( a8 gs ds e) | \partPageBreak
  cs2(\pp\< ds4 e)\! |
  gs( fs2)\> a4~ |
  a4\! gs\(~gs8 fs4(\ub e8)\) |
  e4( ds) (fs e8.\prall ds16) |
  e2. cs8(ds) |
  e2\< fs4(gs) |
  b4.(\mf cs16 b) b( gs8.~ gs8 e) |
  fs4.( gs8) a4(\> e) |
  e(\pp ds) fs(e8\prall ds) |
  \times2/3{ e8(\pp ds cs } cs4~ cs8 e( ds cs) |
  \times2/3{ e8( ds cs } cs4~ cs8 e( ds cs) |
  \times2/3{ e8( ds cs) } <cs gs'>2.~ |
  \barNumberCheck#FourmL
  <cs gs'>8 r r4 r2 R1*2
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \times2/3{
    es'16[->\p fs gs] es[ ds cs]  ds[ es fs] es[ ds cs]
    ds[\< es fs] es[ gs] r  fs[ es ds] es cs] r |
  } \unset tupletSpannerDuration
  \once\override Script #'script-priority = #100
  gs'8(\mf\trill^\markup\tiny\sharp cs16)
  r bs8(\trill cs16) r
  fs\prall(\< ds cs) r bs8(\trill cs16) r |
  \times4/6{ gs16(\f gs') gs gs gs gs }
  \times 4/6 gs4.:16\<
  \times2/3{ gs,16[(\ub gs') gs]-. }
  \repeat unfold 3 \times2/3{ gs,[(gs') gs]-. } |
  \acciaccatura a,8\db a'2.\ff\ub \acciaccatura a,8 a'8. a16-. |
  fs16 e8. \acciaccatura a,8 a'2.\ff |
  a4 a8.\> a16 fs e8. a8. a16 |
  fs16\mp e8. a8. a16\> fs e8. a,8. a16 |
  fs16\p\> e8. a8. a16 fs e8. a,8. a16\! |
  \key df\major
  \barNumberCheck#FivemL
  s1*0^\markup{"4 violins"}
  af1\pp |
  af1 |
  af2( a) |
  bf4( c df2) |
  s1*0^\markup{"2 violins" \italic"con sordini"}
  bf8.(\> df16 df4\ub c8 af bf4) |
  bf8( df c af bf2)\ub\! |
  bf8( df df4\ub c8 af) r4\fermata |
  bf2\ub r4\fermata bf8( df |
  c af bf2) r4\fermata |
  f8.(\pp^\markup"1 violin" af16 af4 f8. ef16 df4) |
  ef8.( f16 af8. f16 ef4 e) |
  s1*0^\markup\italic"tutti"
  f8.(\< af16) af4 df8.( ef16 f4)\f\ub |
  ef8.(\> df16 ef8 c) df2\p |
  r af8(\p\ub df f af) |
  df2(~ df8 c\ub f df) |
  af( f bf\> af f\ub af f\prall ef) |
  df(\pp f af f16 ef df8\prall bf af f) |
  f4^\( df8 ef f\<\ub af4\> f8 |
  f4\ppp ef df bf |
  df\) r r2 |
  R1 *3 |
  r8 df'(\pp\>\db f af df ef f af) |
  \ottava#1
  df1\ppp~ | df4 r r2 R1\partPageBreak
}

violinIImL = \relative c' {
  \key df\major
  \trCueWhile "brassmL" "brass 8vb" #DOWN c'' R1 *4 |
  s1*0^\markup\italic"con sordino"
  df4.(\ppp df8--) df2(\ub ~ |
  df8(-- c)-- df2. |
  df2( af)~ |
  af1 |
  af2( a) |
  bf4( c df2) |
  bf(\pp af4 bf) |
  bf( af bf2) |
  bf(\< af4 bf) |
  bf(\> af bf2) |
  af1\ppp |
  af |
  af2(\< df) |
  <<
    {s2\f\> s4. s8\p }
    { df4.( bf8 af2) }
  >>
  R1*7
  r2 af'\ppp~ | af1 | f1 | af1 |
  f2(~ f8 f4) f8(-- |
  f2~ f8) f4-- f8(-- |
  f1)\<~ | f |
  f2\> |
  <<
    {s2 s4. s8\p s1\ppp}
    << {
      f4( gf g2) |
      af4( f df2)
    } \\ {
      fs4( gf e2)
      f4( df df2)
    } >>
  >>
  c2(~ c8 gf' f ef) |
  af,2\< <<df {s4 s\f}>> |
  bf2\fz\> df |
  R1\!
  bf'2.\(\pp ef,4(  |
  f)\) r r2 R1*3
  \key e \major
  \barNumberCheck#TwomL
  gs2:32\pp fs:32 | gs:32 fs:32\< | ds4:32 e2:32 ds4:32\mf\> |
  gs2:32 gs:32\p\> | gs2:32\pp fs2:32\< | gs2:32 fs2:32 |
  <cs e>2:32 <cs e>2:32 |
  << <cs e gs>1:32->^"div." {s2\f s2\>} >>
  <cs e gs>8\pp r r4 r2 R1*3
  r4 <cs e> <cs e> r |
  R1*5 |
  \barNumberCheck#ThreemL
  gs'2:32\pp fs:32 | gs:32\< fs:32 | ds4:32 e2:32\f ds4:32\> |
  e4:32 << gs2.:32 {s4 s2\pp} >> |
  gs2:32\pp <g a>:32\< | gs:32 <g a>:32 | <fs a>:32 a:32\f |
  e':32\ff cs4.:32\> e8:32 | <bs fs'>8\mf r r4 r2 |
  bs2(\fp a) | b2\> <g as> |
  << {a2.(e4)} \\ {fs2.(e4)} >> |
  ds1\pp~ |
  ds8 r r4 r2 |
  r4\pp r8 <gs, e'>8_\pizz r4 r8 <gs e'>8 |
  r4 r8 <a fs'>8 r4 r8 <a fs'>8 |
  r4 r8 <gs gs'>8 r4 r8 <e' cs'>8 |
  r4 r8 <cs a'>8 r4 r8 <gs gs'>8 |
  r4 r8 <cs gs'>8 r4 r8 <gs gs'>8 |
  r4\< r8 <cs gs'>8 r4 r8 <gs e'>8 |
  r4 r8 <ds' fs>8\mf r4 r8 <b gs'>8 |
  <a a'> r4 <d d'>8 <e cs'>\> r <gs, gs'> r |
  <cs a'>\pp r4 <cs a'>8 r r4 <gs gs'>8 |
  gs2(\pp\db_\arco a) |
  gs( a) |
  gs1\>~ |
  gs8\! r r4 r2 R1
  <cs gs'>1\ub\pp\< |
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \times2/3{
    es16[\p fs gs] es[ ds cs]  ds[ es fs] es[ ds cs]
    ds[\< es fs] es[ gs] r  fs[ es ds] es cs] r |
  } \unset tupletSpannerDuration
  \once\override Script #'script-priority = #100
  gs'8(\mf\trill^\markup\tiny\sharp cs16)
  r bs8(\trill cs16) r
  fs\prall(\< ds cs) r bs8(\trill cs16) r |
  \times4/6{ gs16(\f gs') gs gs gs gs }
  \times 4/6 gs4.:16\<
  \times2/3{ gs,16[(\ub gs') gs]-. }
  \repeat unfold 3 \times2/3{ gs,[(gs') gs]-. } |
  \acciaccatura a,8 a'2.\ff\ub \acciaccatura a,8 a'8. a16-. |
  fs16 e8. \acciaccatura a,8 a'2.\ff |
  a4 a8.\> a16 fs e8. a8. a16 |
  fs16\mp e8. a8. a16\> fs e8. a,8. a16 |
  fs16\p\> e8. a8. a16 fs e8. a,8. a16\! | \partPageBreak
  \key df\major
  \barNumberCheck#FivemL
  s1*0^\markup{"4 violins"}
  af1 |
  af |
  af2( a) |
  bf4( c df2) |
  s1*0^\markup{"2 violins" \italic"con sordini"}
  df8 df4 df df df8~ |
  df df4 df df df8~ |
  df df4 df df8 r4\fermata |
  df8 df4 df8 r4\fermata df8 df~ |
  df df4 df df8 r4\fermata |
  \cueWhile "violin1mL" "solo violin" #DOWN R1*2
  s1*0^\markup{\italic"tutti"}
  df4(\ub\< ef df2) |
  <bff gf'>\f\> <af f'>\! R1*9
  <<
    R1
    \tag#'part {
      \transposedCueDuring "cellomL" #DOWN c''
      \context CueVoice {\stemUp s1^\markup\tiny"cello 8vb" }
    }
  >>
  r8 f'(\pp\> df' ef f af df ef) |
  f1\ppp~ |
  f4 r r2 |
  R1 \partPageBreak
}

violamL = \relative c' {
  \key df\major
  \clef alto
  \once\override Staff.MultiMeasureRest #'minimum-length = #20
  R1*4
  s1*0^\markup\italic"con sordino"
  -\tweak #'self-alignment-X #1.8 _\markup\whiteout\pad-around#0.3 "div."
  <<
    {
      af4.\((\ppp af8)-- af2(--\ub |
      af8)\)(-- af)-- af2. |
      <af f>2( f) gf1 f1 gf2(f)
    } \\ {
      f4.( f8)-- f2(-- |
      f8)(-- ef)-- f2. |
      df1 ef1 df2(f) gf2(df)
    }
  >>
  df1\pp~ | df |
  df\<~ | df\> |
  <df f>\ppp |
  gf4( ef8. f16 gf2) |
  f4\< ef f2 |
  <<
    {s2\f\> s4. s8\p }
    << {gf2(^\div f) } \\ {df1} >>
  >>
  R1*7
  r2 af'\ppp~ | af1 |
  bf8( df c af) bf2 |
  af1 |
  bf8( df c af) bf2 |
  bf8( df c af) bf2 |
  bf8( df c af bf gf af f) |
  bf( df c af bf gf af f) |
  bf(\> gf af f) |
  <<
    {s2. s4\pp }
    { bf4( bff2.) }
  >> <f af>1\ppp
  gf4( bf8. af16 gf8 bf af gf) |
  f4(\< ef) <<f2 {s4 s\f}>> |
  df2(\fz\> f) R1\!
  df'1\pp | af~ | af8 r r4 r2 R1*2
  \key cs\minor
  \barNumberCheck#TwomL
  cs2:32\pp a:32 cs:32 a:32\< |
  gs2:32 fs4:32 b:32\mf\> |
  e2:32 <cs e>:32\p\> |
  cs2:32\pp a:32\< |
  cs2:32 a':32 |
  cs,4:32 b:32 a2:32 |
  \times2/3{ cs,8(\f gs' cs }\times2/3{ e gs cs) } cs2\>~ |
  cs8\pp r8 r4 r2 |
  R1*7
  \trCueWhile "flute1mL" "flute 8va" #UP c R1*2
  \barNumberCheck#ThreemL
  cs,2:32\pp a:32 cs:32\< a:32 |
  gs2:32 fs4:32\f b:32\> |
  e2:32 <cs e>:32\pp |
  <cs e>2:32 e:32\< |
  <cs e>2:32 e:32 |
  d!2:32 fs:32\f |
  gs2:32\ff gs:32\> | gs8\mf r8 r4 r2 |
  a(\fp fs) |
  g4(\> fs e2) |
  ds!2.( cs4) |
  bs1\pp~ | bs8 r r4 r2 |
  r4\pp cs,4:32 cs16 r8. r4 |
  r4 a':32 a16 r8. r4 |
  r4 gs:32 gs16 r8. r4 |
  r4 a:32 a16 r8. gs4:32 |
  gs2:32 gs16 r8. r4 |
  r4 cs,:32\< cs16\! r8. r4 |
  r4 b':32\mf b16 r8. r4 |
  a4:32 a16 r8. r4 gs:32\> |
  a16\pp r8. a4:32 a16 r8. gs4:32 |
  s1*0 -\tweak #'self-alignment-X #1.5 -\markup\whiteout\pad-around#0.3 "div."
  << {
    e2( g) | e2(g) | e4 es2.~| es8
  } \\ {
    cs2( cs) | cs(cs) | cs4 cs2.\>~| cs8\!
  } >> r8 r4 r2 |
  <cs gs'!>1\pp\ub~ |
  <cs gs'>\< |
  <cs gs'>\p\< |
  gs'16(\mf es) gs( es) fs(\< as) gs( es) fs( gs) gs( es) fs( gs) gs( es) |
  s1*0\f
  << {
    as16.[( bs32)-- gs8] as16.[(\< bs32)-- gs8]
    as16.[( bs32)-- as16.( bs32])-- as16.[( bs32)-- as16.( bs32])-- |
    \times4/6{ cs16\ff cs cs cs cs cs }
    \repeat unfold 8 \times4/6 cs4.:16
    s1*0\> \repeat unfold 3 \times4/6 cs4.:16 |
    cs4\mp cs8.( e16 e4)\> cs8.( e16 | e4)\p\> cs8.( e16 e4) cs8.( e16\! |
    \key df\major
  \barNumberCheck#FivemL
    s1*0^\markup{"4 violas"}
    f1)\pp df df
    df4( c) af2
  } \\ {
    fs8[ es] fs[ es] fs[ fs] fs[ fs] |
    \times4/6{ a16 a a a a a } \repeat unfold 11 \times4/6 a4.:16
    a4 a8.( cs16 cs4) a8.( cs16 | cs4) a8.( cs16 cs4) a8.( cs16 |
    df1) df df,
    ef4( af) af2
  } >>
  gf8(^\markup{"2 violas" \italic"con sordini"}\> bf bf4 af8 f gf4) |
  gf8( bf af f gf2)\! |
  gf8( bf bf4 af8 f) r4\fermata |
  gf2\ub r4\fermata gf8(\db bf |
  af)( f gf2) r4\fermata |
  df1\pp^\markup"1 viola" ~ |
  df |
  f8.(\<^\markup\italic"tutti" af16 af4) df8.( ef16 f4)\f |
  << {
    ef2(^\div af)
  } \\ {
    df,2(\> af)\p
  } >>
  R1*9
  <<
    R1
    \tag#'part {
      \cueDuring "cellomL" #DOWN
      \context CueVoice {\stemUp s1^ \markup\tiny"cello" }
    }
  >>
  \cueDuring "cellomL" #UP R1
  \clef treble
  af''1\ppp\ub~ | af4 r r2 R1
}

cellomL = \relative c {
  \clef bass
  \key df\major
  R1*4 |
  s1*0^\markup\italic"con sordino"
  df4.(\ppp df8-- df2~ |
  df8)(-- af)-- <<
    {df2.^"div." af1 af1 af2( df2) | df4\(( af) af2\) }\\
    {af2. df,1 df1 df2( f2) | gf4\( af df,2\) }
  >>
  gf1\pp~gf |
  gf1\<~ | gf\> | df\ppp~df |
  df'4\< c bf af |
  <<
    {s2\f\> s4. s8\p }
    af1
  >> R1*2
  \barNumberCheck#OnemL
  \times2/3{ r8(\pp df, af' } \times2/3{ df f af } df) r r4
  R1*4 %\partPageBreak
  r2 df\ppp(~ |
  df8 f f4) ef8( c df4) |
  bf8( df c af bf2) |
  df8( f f4 ef8 c df4) |
  bf8( df c af bf2) |
  bf8( df c af bf2) |
  bf8(\< df c af bf gf af f) |
  bf( df c af bf gf af f) |
  bf(\> gf af f) |
  <<
    {s2. s4\pp}
    { bf4( bff2.) }
  >> af4\ppp <<
    { df,2.^"div." ~ df1 } \\
    { af2.~ af1 }
  >>
  <df df'>4(\< <c c'>) <bf bf'>( <af af'>)\f |
  <gf gf'>2(\fz <df df'>) R1\!
  gf'1(\pp |
  df)( |
  df,) |
  df~ |
  df4 r r2
  \key cs\minor
  R1 *6
  \tag#'part \clef tenor
  \tag#'score \clef treble
  gs''2\p\< cs\fz |
  cs2\f\>~ \times2/3{ cs8( gs e }
  \clef bass
  \times2/3{ cs gs cs,) }
  cs8\pp r r4 r2 R1*9%\partPageBreak
  R1*8
  \trCueWhile "violin1mL" "violin 15ma" #UP c, R1*4
  r2 bs2:32\ppp\>
  bs1*7/8:32-\markup\italic"tremolo" s8\! |
  cs8:32\ppp gs:32 e:32 cs:32 fs:32 a:32 gs:32 cs,:32 |
  fs:32 a:32 d:32 fs:32 fs:32 d:32 cs:32 bs:32 |
  cs:32 ds:32 e:32 as,:32 bs:32 gs:32 cs:32 a:32 |
  fs:32 gs:32 a:32 fs:32 ds:32 fs:32 gs:32 gs:32 |
  cs,:32 cs':32 b:32 a:32 gs:32 fs:32 e:32 ds:32 |
  cs:32 gs':32 e:32 cs:32 a':32 fs:32 cs:32 cs':32 |
  b:32 fs':32 ds:32 b:32 e:32 b:32 gs:32 e:32 |
  d':32 a:32 fs:32 b:32 a:32 b:32 cs:32 cs,:32 |
  fs:32 gs:32 a:32 fs:32 ds:32 fs:32 gs:32 bs,:32 |
  \acciaccatura c8 gs'2(\pp a) |
  gs(a) |
  gs1\> |
  \barNumberCheck#FourmL
  <cs, gs'>\!~ |
  <cs gs'>\pp ~ |
  <cs gs'>\< ~ |
  <cs gs'>\p\< |
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \times2/3 {
    es'16[\mf fs gs] es[ ds cs] ds[\< es fs] es[ ds cs]
    ds[ es fs] es[ gs] r fs[ es ds] es[ cs] r\! |
    fs[\f es ds] es[ cs] r fs[\< es ds] es[ cs] r
    fs[ es ds] fs[ es ds] fs[ es ds] fs[ es ds] |
  } s1*0\ff
  <<
    { s1^\div s1 s4 s2.\> s2\mp s2\> s1\p\> }
    {
      \times4/6{ e16 e e e e e } \repeat unfold 11 \times4/6 e4.:16
      e4 cs8.( e16 e4) cs8.( e16 | e4) cs8.( e16 e4) cs8.( e16|
      \key df\major
  \barNumberCheck#FivemL
      s1*0\pp^\markup{"4 cellos"}
      f1) gf! f2 f2 gf( f)
    } \\ {
      \times4/6{ cs16 cs cs cs cs cs } \repeat unfold 11 \times4/6 cs4.:16
      cs4 a8.( cs16 cs4) a8.( cs16 | cs4) a8.( cs16 cs4) a8.( cs16 |
      df1) df df2 f, gf4( af df2)
    }
  >>
  s1*0^\markup{"2 cellos"}
  gf,1\pp\>~ |
  << {s2 s2\!} gf~ >> |
  gf2. r4\fermata |
  gf2 r4\fermata gf~ |
  gf2~ gf4 r\fermata |
  s1*0^\markup{"1 cello"}
  df''8.(\pp f16 f4 df8. af16 f4) |
  af8.( df16 ef8. df16 c4 bf8 bff) |
  s1*0^\markup\italic"tutti"
  af2\< f8.( gf16 af4)\f |
  << df,1
    {s2\> s2\p}
  >> R1*6
  \cueWhile "brassmL" "low brass" #UP {
    R1*3 r8
  } df,(\mf\> af' df f8 af df f) |
  af1\p \> |
  \clef treble
  df1\ppp~ |
  df4 r r2 R1 \partPageBreak
}

bassmL = \relative c {
  \key df\major
  \clef "bass_8"
  \once\override Staff.MultiMeasureRest #'minimum-length = #20
  \trCueWhile "brassmL" "brass" #UP c R1*4
  s1*0^\markup\italic"con sordino"
  df4.(\ppp df8-- df2--~ |
  df8)( af)-- df,2.~ |
  df4 r r2 R1*7
  af'1\ppp\ub ~ | af1 |
  df,4\< c bf af~ |
  <<
    {s2\f\> s4. s8\p }
    { af2 df }
  >> R1*7
  r2 df'\ppp\db~ |  df1~ |  df |
  df~ |  df |
  df~ |  df\< |
  df~ | df2\> |
  <<
    {s2. s4\pp}
    df1
  >>
  df,1\ppp\ub~ | df |
  df4(\< c) bf( af)\f |
  gf2(\fz\> df') | R1*3\!
  af'1\ppp~| af~ | af4 r r2
  \key cs\minor
  R1*6
  \trCueWhile "cellomL" "cello 15ma" #UP c, R1*2
  cs,8\pizz\pp e gs cs, fs a gs cs, |
  fs a d e fs d cs bs |
  cs ds e as, bs gs cs a |
  fs gs a fs ds fs gs gs, |
  cs\pp e gs cs b a gs e |
  cs gs' e cs' a\< cs e cs |
  b\mf fs' ds b e\> b gs e |
  d'\p a fs d a\> b cs e |
  fs\pp gs a fs ds fs gs gs, |
  cs cs' b a gs e cs gs |
  \barNumberCheck#ThreemL
  cs r r4 r2 R1*11
  \cueWhile "cellomL" "cello" #UP R1
  gs1(\ppp | cs4) r r2 R1*8
  cs2\pp e |  cs e |
  cs1\>~ |
  \barNumberCheck#FourmL
  cs8\! r r4 r2 R1*3
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  \times2/3 {
    es16[\mf fs gs] es[ ds cs] ds[\< es fs] es[ ds cs]
    ds[ es fs] es[ gs] r fs[ es ds] es[ cs] r |
    fs[\f es ds] es[ cs] r fs[\< es ds] es[ cs] r
    fs[ es ds] fs[ es ds] fs[ es ds] fs[ es ds] |
  } s1*0\ff
  \unset tupletSpannerDuration
  <<
    { s1\ff s1 s4 s2.\> s2\mp s2\> s1\p\> s1*0\!}
    {
      \times4/6{ cs16 cs cs cs cs cs } \repeat unfold 11 \times4/6 cs4.:16
      cs2( e, | a1)(
    }
  >>
  \key df\major
  \barNumberCheck#FivemL
  cs4)\pp r r2 |
  R1*3 |
  s1*0^\markup{"2 basses"}
  df'1\pp~|  df~| df2~ df4 af\rest\fermata |
  df2 af4\rest\fermata df~ |
  df2~ df4 af\rest\fermata |
  R1*2
  s1*0^\markup\italic"tutti"
  df4(\< c) bf( af)\f |
  gf2\> df\p |
  R1*10
  \tag#'part \clef "treble^8"
  \cueWhile "violin1mL" "violin" #UP R1*2
  \tag#'part \clef "bass_8"
  \grace s8
  << { r2 s4^\div r4 | s2 s8 r8 r4 }
  << {
    s2 <af' f'>4 s | <af_~ f'~>2 <af f'>8
  } \\ {
    s2 <df, df'>4 s | <df~ df'~>2 <df df'>8
  } >> >>
  \partPageBreak
}

