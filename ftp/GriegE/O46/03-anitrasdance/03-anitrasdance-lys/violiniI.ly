\version "2.18.0"

violiniOneStaffSettings = \with {
  midiInstrument ="violin"
  instrumentName = \markup{\center-column {"Violini I" "(con sordini)"}}
  shortInstrumentName ="Vl.I"
}

taggedVioliniOne = \relative c''' {
  \time 3/4
  \key c\major
  \once \override Script #'outside-staff-priority = #100
  \once \override TextScript #'outside-staff-priority = #500

  \tag #'violinioneI { e2. \pp\fermata^"divisi"~
                       e4 }

  \tag #'violinioneII { gis,2. ~
                        gis4 }

  r\fermata r
  R2.*3
  r4 r e,\p
  % volta (1)
  \repeat volta 2 {
    \acciaccatura { a16 b }
    a8-. gis-. a-. b-.( c-.  d)-.
    e8(  a) e4\tenuto( d16 e d e)
    c8( a'  c,4) b16^\upbow( c b c
    a2) r4
    a8\tenuto\crM ( \( c a4 ) g16 a g a \)
    fis8 \( (  c')  fis,2 \) \tenuto
    f!8\diM\( ( c'  f,4)\tenuto e16 f e f\)
    dis8(  b') dis,2
    b'8-.\pp ais-. fis-. b-. a-. f-.
    b-.\< gis-. e-. b'-. g-. dis-.\!
    b'-.\> fis-. d-. b'-. f-. des-.\!
    b'-. e,-. c-. b'-. dis,-. b-.
    % 2
    \acciaccatura { e16 fis } e4-. r r
    R2.
    e8\<^"pizz."fis g a\! b4^\accent\f }
  \alternative {
    { e4^\accent r e,^"arco"\p} { e'4^\accent r r }
  }
  \repeat volta 2 {
    \tag #'violinioneI { f!4.\p^"divisi"^"arco"\( (  e8) e(  d)\)
                         d4.\( ( e8)\< e(  f)\)\!
                         f2.(
                         e4) r r }

    \tag #'violinioneII { d4.\p \( (  c8) c(  b)\)
                          b4.\( (  c8)\< c(  d)\)\!
                          \override Hairpin.to-barline=##f
                          d2.\> ~
                          d4\! r r }

    r r r8 f8^\accent\downbow(

    d)-. c-.(  b)-. r r4
    r8 d-.^\downbow(  b)-. a-.(  gis)-. r
    R2.

    \tag #'violinioneI { bes'4._"divisi"\( (  a8) a(  g)\)
                         g4.\<\( (  a8) a(  bes)\)\!
                         bes2.(
                         a4) r r }

    \tag #'violinioneII { g4.\( (  f8) f(  e)\)
                          e4.\<\( (  f8) f(  g)\)\!
                          \override Hairpin.to-barline=##f
                          g2. \> ~
                          g4\! r r }

    r r r8 bes^\accent^\downbow(
    g)-. f-.(  e)-. r r4
    % 3
    r8 g-.^\accent\downbow(  e)-. d-.(  cis)-. r
    R2.*3
    r4 r a\mp
    \acciaccatura { d16 e } d8-. cis-. d-. e-.( fis-.  g)-.
    a\( ( d a4) g16 a g a\)
    fis8( d'  fis,4) e16( fis e fis
    d2) r4

    R2.*2
    r4 r a\pp
    \acciaccatura { d16 e }  d8-. cis-. d-. e-.( f-.  g)-.
    a\( ( d a4) g16 a g a\)
    f8( d'  f,4) e16( f e f
    d2) r4
    r r r8 c\upbow
    \acciaccatura { f16 g }
    f8-. e-. f-. g-.( a-.  bes)-.
    % 4
    c8\( ( f)  c2\)\tenuto
    R2.
    r4 r r8 e,\wcrM
    \acciaccatura { a16 b }
    a8-. gis-. a-. b-.( c-.  d)-.
    e\( (  a)  e2\)\tenuto
    R2.
    r4 r r8 b,\ff
    \acciaccatura { fis'16 g }
    fis8 eis\< fis g a b\!

    c\> \( (  c,)  fis2\)\tenuto\!
    R2.
    r4 r r8 e,8\wdiM
    \acciaccatura { b'16 c }
    b8 ais b c d e
    f^"poco rit."\( (  f,)  b2\)\tenuto

    \tag #'violinioneI { r4 r e4\p^\upbow
                         \acciaccatura { a16^"a tempo"b }
                         a8-. gis-. a-. b-.( c-.  d)-.
                         e(  a) e4\tenuto( d16 e d e)
                         c8(  e) c4\upbow b16( c b c
                         % 5
                         a2) r4 }

    \tag #'violinioneII { r4 r e,4\p^\upbow^"divisi"
                          \acciaccatura { a16 b } a8-. gis-. a-. b-.( c-.  d)-.
                          e(  a) e4\tenuto( d16 e d e)
                          c8(  e) c4\upbow b16( c b c
                          % 5
                          a2) r4 }

    a'8\downbow^\accent\crM( c a4\tenuto g16 a g a)
    fis8\( (  c')  fis,2\)\tenuto
    f!8^\accent\diM\( (  c') f,4\tenuto( e16 f e f)\)
    dis8\( (  b')  dis,2\)\tenuto
    d!8^\accent\crM\( (  f) d4\tenuto( c16 d c d)\)
    b8\( (  f')  b,2\)\tenuto
    bes8^\accent\diM\( (  f') bes,4\tenuto( a16 bes a bes)\)
    gis8\( (  e')  gis,2\)\tenuto
    e'8-.\pp dis-. b-. e-. d-. bes-.

    e-. cis-. a-. e'-.\< c-. gis-.\!
    e'-.\> b-. g-. e'-.\! ais,-. fis-.
    e'-. a,-. f-. e'-. gis,-. e-.
    \acciaccatura { a16 b }
    a4-. r r
    R2.
    a8\<^"pizz."b c d\! e4\f^\accent }
  \alternative {
    {a4^\accent r r}
    {a4^\accent r r
     R2.
     % should say "arco" here.
     \tag #'violinioneI {
       \once \override Script #'outside-staff-priority = #100
       \once \override TextScript #'outside-staff-priority = #500
       a2.^"divisi"\pp\fermata ~ a4 r r }
     \tag #'violinioneII { c,2. ~ c4 r r }
    }
  }
}



violinioneI =  \keepWithTag #'violinioneI \taggedVioliniOne

violinioneII =  \keepWithTag #'violinioneII \taggedVioliniOne
