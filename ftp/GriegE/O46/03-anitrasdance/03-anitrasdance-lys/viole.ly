\version "2.18.0"

violaOneStaffSettings = \with {
  midiInstrument = "pizzicato strings"
  instrumentName = \markup{\center-column{"Viole I" "(senza sordini)"}}
  shortInstrumentName = "Vla.I"
}

violaTwoStaffSettings = \with {
  midiInstrument = "pizzicato strings"
  instrumentName = \markup{\center-column{"Viole II" "(senza sordini)"}}
  shortInstrumentName = "Vla.II"
}

violeI =  \relative c'' {
  \time 3/4
  \key c\major
  \clef "alto"
  b2.\pp\fermata ~
  b4 r\fermata r
  r e,,\p^"pizz." e
  r e e
  r e e
  r e e
  % volta (1)
  \repeat volta 2 {
    \grace {s16 s} % to match acciaccatura in violiniI
    r4 e e
    r e e
    r e e

    r e a
    r a\crM g
    r fis fis
    r a\diM g
    r fis fis
    b r a'
    gis\< r g\!
    fis\> r f\!
    e r dis
    % 2
    e,8 dis e\< fis g a\!
    b\> e b a\! g fis
    e\< fis g a b4^\accent\f
  }

  \alternative {
    { e^\accent r r } { e^\accent r r }
  }

  \repeat volta 2 {
    r4 d\p e
    r d\< e\!
    r d e
    r d\> e\!
    r8 f d c b r

    r4 r8 d b a
    gis r r4 r8 b
    gis f e r r4
    r g' a
    r g\< a\!
    r g a
    r g\> a\!
    r8 bes g f e r
    r4 r8 g e d
    % 3
    cis8 r r4 r8 e
    cis bes a r r4
    r a\mp a
    r a a
    r a a
    r a a
    r a a
    r a a
    r a a

    r a\pp a
    r a a
    r a a
    r a a
    r a a
    r a a
    r a a
    r a a
    r r r8 c8\upbow^"arco"
    % 4
    \acciaccatura { f16 g } f8 e f g a bes
    c8( f c2)
    R2.
    r4 r r8 e,\wcrM
    \acciaccatura { a16 b } a8 gis a b c d
    e8( a e2)
    R2.
    r4 r r8 b,\upbow\ff

    \acciaccatura { fis'16 g } fis8 eis\< fis g a b\!
    c8\> ( c,\!  fis2)
    R2.
    r4 r r8 e,\wdiM
    \acciaccatura { b'16^"poco rit." c } b8 ais b\< c d e\!
    f\>( f,  b2)\!
    r4^"a tempo" e,\p e
    r e e
    r e e
    % 5
    r e e
    r a^\accent\crM g
    r fis fis
    r a\diM g
    r fis fis
    r d'^\accent\crM c
    r b b
    r d\diM c
    r b b
    e r d'

    cis r\< c\!
    b\> r\! ais
    a r gis
    a,8 gis a\< b c d\!
    e\> a e d c\! b
    a\< b c d\! e4\f^\accent }
  \alternative {
    {a4^\accent r r }
    {a4^\accent r r R2.
     % should say "arco" here.
     e2.\pp\fermata ~ e4 r r }
  }
}



violeII =  \relative c' {
  \time 3/4
  \key c\major
  \clef "alto"
  e2.\pp\fermata ~
  e4 r\fermata r
  r e,^"pizz." e
  r e e
  r e e
  r e e
  % volta (1)
  \repeat volta 2 {
    \grace {s16 s} % to match acciaccatura in violiniI
    r4 e e
    r e e
    r e e

    r e a
    r a\crM g
    r fis fis
    r a\diM g
    r fis fis
    b r f'
    e\< r dis\!
    d\> r cis\!
    c r b
    % 2
    e,8 dis e\< fis g a\!
    b\> e b a\! g fis
    e\< fis g a b4^\accent\f
  }

  \alternative {
    { e^\accent r r } { e^\accent r r }
  }

  \repeat volta 2 {
    r4 gis,\p d'
    r gis,\< d'\!
    r gis, d'
    r gis,\> d'\!
    r8 f d c b r

    r4 r8 d b a
    gis r r4 r8 b
    gis f e r r4
    r cis' g'
    r cis,\< g'\!
    r cis, g'
    r cis,\> g'\!
    r8 bes g f e r
    r4 r8 g e d
    % 3
    cis8 r r4 r8 e
    cis bes a r r4
    r a\mp a
    r a a
    r a a
    r a a
    r a a
    r a a
    r a a

    r a\pp a
    r a a
    r a a
    r a a
    r a a
    r a a
    r a a
    r a a
    r a a
    % 4
    r a a
    r a a
    r c\crM c
    r c c
    r c\piucM c
    r c c
    r e\ff dis
    r e dis

    r e dis
    r e dis
    r a\diM gis
    r a gis
    r^"poco rit." a gis
    r a gis
    r^"a tempo" e\p e
    r e e
    r e e
    % 5
    r e e
    r a^\accent\crM g
    r fis fis
    r a\diM g
    r fis fis
    r d'^\accent\crM c
    r b b
    r d\diM c
    r b b
    e r bes'

    a r\< gis\!
    g\> r\! fis
    f r e
    a,8 gis\< a b c d\!
    e\> a e d\! c b
    a\< b c d\! e4^\accent\f }
  \alternative {
    {a4^\accent r r }
    {a4^\accent r r R2.
     % should say "arco" here.
     a,2.\pp\fermata ~ a4 r r }
  }
}

