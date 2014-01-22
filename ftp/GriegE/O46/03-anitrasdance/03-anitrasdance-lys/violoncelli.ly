\version "2.18.0"

violoncelliOneStaffSettings = \with {
  midiInstrument = "pizzicato strings"
  instrumentName = \markup{\center-column{"Violoncelli I" "(senza sordini)"}}
  shortInstrumentName = "Vc. I"
}

violoncelliTwoStaffSettings = \with {
  midiInstrument = "pizzicato strings"
  instrumentName = \markup{\center-column{"Violoncelli II" "(senza sordini)"}}
  shortInstrumentName = "Vc. II"
}

violoncelliI =  \relative c {
  \time 3/4
  \key c\major
  \clef "bass"
  R2.\fermataMarkup
  r4 r\fermata r
  a\p^"pizz." r e'8 e
  a,4 r e'8 e
  a,4 r e'8 e
  a,4 r e'8 e
  % volta (1)
  \repeat volta 2 {
    \grace {s16 s} % to match acciaccatura in violiniI
    a,4 r e'8 e
    a,4 r e'8 e
    a,4 r e'8 e

    a,4 r e'8 e
    a,4\crM r e'8 e
    a,4 r e'8 e
    a,4\diM r e'8 e
    b4 r r
    b'8[-.^"arco"\pp ais-. fis-. b-. a-. f-.]
    b[-.\< gis-. e-. b'-. g-. dis-.\!]
    b'[-.\> fis-. d-. b'-. f-. des-.\!]
    b'[-. e,-. c-. b'-. dis,-. b-.]
    % 2
    \acciaccatura { e16 fis }
    e4-. r r
    R2.
    r4 r4 b'4^\accent\f^\markup{\whiteout "pizz."}
  }

  \alternative {
    { e^\accent r r } { e^\accent r r }
  }

  \repeat volta 2 {
    r4 e,\p gis
    r e\< gis\!
    r e gis
    r e\> gis\!
    r r r8 f'8\downbow^\accent_"arco"(

    d8)-. c-.(  b) r r4
    r8 d8-.^\downbow(  b)-. a-.(  gis) r
    r4 e8^"pizz." d c b
    a4 a' cis
    r a\< cis\!
    r a cis
    r a\> cis\!
    r r r8 bes'^\accent\downbow_"arco" (
    g)-. f-.(  e)-. r r4
    % 3
    r8 g-.^\accent\downbow(  e)-. d-.(  cis) r
    r4 a8^"pizz."\< g f e\!
    d4\mp r a8 a
    d4 r a8 a
    d4 r a8 a
    d4 r r
    d r r
    d r r
    d r r

    d\pp r a8 a
    d4 r a8 a
    d4 r a8 a
    d4 r r
    d r r
    d r r
    d r r
    ees2.^"arco" ~
    ees ~
    % 4
    ees ~
    ees
    fis\crM ~
    fis ~
    fis\piucM ~
    fis
    c'2\ff\>(  b4)\!
    c2\>(  b4)\!

    c2\>(  b4)\!
    c2\>(  b4)\!
    f2\> (  e4)\!
    f2\>(  e4)\!
    f2\>^"poco rit."(  e4)\!
    f2\>(  e4)\!
    r^"a tempo" r e\p
    \acciaccatura { a16 b }
    a8 gis\< a b c d\!
    e\> ( a e4  d)\!
    % 5
    c8( e c2)
    f2^\accent(  e4)
    dis2.\crM
    a'2^\accent\diM(  g4)
    fis2 r4
    bes,2^\accent(  a4)
    gis2.\crM
    d'2^\accent\diM(  c4)
    b2 r4
    e8-.\pp dis-. b-. e-. d-. bes-.

    e-. cis-. a-.\< e'-. c-. gis-.\!
    e'-.\> b-. g-. e'-.\! ais,-. fis-.
    e'-. a,-. f-. e'-. gis,-. e-.
    \acciaccatura { a16  b }
    a4-. r r
    R2.
    r4 r e'4^\accent\f^\markup{\whiteout "pizz."} }
  \alternative {
    {a4^\accent r r } {a4^\accent r e,\pp a, r r R2.\fermataMarkup R }
  }
}



violoncelliII =  \relative c {
  \time 3/4
  \key c\major
  \clef "bass"
  R2.\fermataMarkup
  r4 r\fermata r
  a\p^"pizz." r r
  a r r
  a r r
  a r r
  % volta (1)
  \repeat volta 2 {
    \grace {s16 s} % to match acciaccatura in violiniI
    a4 r r
    a r r
    a r r

    a r r
    a\crM r r
    a r r
    a\diM r r
    b r r
    b r b'
    b,\< r b'\!
    b,\> r b'\!
    b, r b'
    % 2
    e,4 r r
    R2.
    r4 r4 b'4\f^\accent
  }

  \alternative {
    { e^\accent r r } { e^\accent r r }
  }

  \repeat volta 2 {
    e,,4\p r b'8 b
    e,4\< r b'8 b\!
    e,4 r b'8 b
    e,4\> r b'8 b\!
    e,4 r r8 f''8^\downbow\accent_"arco"(

    d8)-. c-.(  b) r r4
    r8 d8-.^\downbow(  b)-. a-.(  gis) r
    r4 e8^"pizz." d c b
    a4 a' cis
    r a\< cis\!
    r a cis
    r a\> cis\!
    r r r8 bes'^\accent\downbow_"arco" (
    g-.) f-. (  e)-. r r4
    % 3
    r8 g^\accent\downbow(  e) d(  cis) r
    r4 a8^"pizz."\< g f e\!
    d4\mp r r
    d r r
    d r r
    d r r
    d r r
    d r r
    d r r

    d\pp r r
    d r r
    d r r
    d r r
    d r r
    d r r
    d r r
    ees r r
    ees r r
    % 4
    ees r r
    ees r r
    fis\crM r r
    fis r r
    fis\piucM r r
    fis r r
    b,\ff r fis'8 fis
    b,4 r fis'8 fis

    b,4 r fis'8 fis
    b,4 r b8 b
    e,4\diM r b'8 b
    e,4 r b'8 b
    e,4^"poco rit." r e'8\p e
    e,4 r e'8\p e
    a,4^"a tempo" r e'8 e
    a,4 r e'8 e
    a,4 r e'8 e
    % 5
    a,4 r e'8 e
    a,4\crM r r
    a r r
    a\diM r r
    b r r
    d\crM r r
    d r r
    d\diM r r
    e r r
    e r e'

    e, r\< e'\!
    e,\> r\! e'
    e, r e'
    a, r r
    R2.
    r4 r e\f^\accent }
  \alternative {
    {a4^\accent r r } { a4^\accent r e\pp a, r r R2.\fermataMarkup R }
  }
}


