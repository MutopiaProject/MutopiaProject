\version "2.18.0"

violiniTwoStaffSettings = \with {
  midiInstrument = "violin"
  instrumentName = \markup{\center-column {"Violini II" "(con sordini)"}}
  shortInstrumentName = "Vl.II"
}

taggedViolinitwo =  \relative c''' {
  \time 3/4
  \key c\major
  \once \override Script #'outside-staff-priority = #100
  \once \override TextScript #'outside-staff-priority = #500

  \tag #'violinitwoI { b2.\pp\fermata^"divisi" ~
                       b4 }

  \tag #'violinitwoII { e,2. ~
                        e4}

  r\fermata r


  \tag #'violinitwoI { r c,\p^"pizz." d
                       r e f
                       r e d
                       r c b }

  \tag #'violinitwoII { r a b
                        r c d
                        r c b
                        r a gis }


  % volta (1)
  \repeat volta 2 {
    \grace {s16 s} % to match acciaccatura in violiniI

    \tag #'violinitwoI {

      r4 c d
      r e f
      r e d

      r c e
      r f\crM e
      r dis dis
      r f\diM e
      r dis dis
      b' r b'
      b,\< r b'\!
      b,\> r b'\!
      b, r b' }

    \tag #'violinitwoII {
      r4 a,, b
      r c d
      r c b

      r a c
      r c c
      r c c
      r c c
      r b b
      b r b'
      b,\< r b'\!
      b,\> r b'\!
      b, r b'
    }

    % 2
    e,8 dis e\<  fis g a\!
    b\> e b a\! g fis
    e\< fis g a b4^\accent\f
  }

  \alternative {
    { e^\accent r r } { e^\accent r r }
  }

  \repeat volta 2 {
    \override Hairpin.to-barline=##f
    gis,2\p^"arco" ~ gis4-.
    gis2\< ~ gis4-.\!
    gis2.\> ~
    gis4\! r r
    r8 f'8_"pizz." d c b r

    r4 r8 d b a
    gis r r4 r8 b
    gis f e r r4
    cis'2^"arco" ~ cis4-.
    cis2\< ~ cis4-.\!
    cis2.\> ~
    cis4\! r r
    r8 bes'^"pizz." g f e r
    r4 r8 g e d
    % 3
    cis8 r r4 r8 e
    cis bes a r r4

    \tag #'violinitwoI {
      r fis\mp^"divisi" g
      r a b
      r a g
      r fis e
      r fis g
      r a b
      r a g

      r f\pp g
      r a bes
      r a g
      r f e
      r f g
      r a bes
      r a g
      r f f
      r f f
      % 4
      r f f
      r f f
      r a\crM a
      r a a
      r a\piucM a
      r a a
      r a\ff a
      r a a

      r a a
      r a a
      r d,\diM d
      r d d
      r^"poco rit." d d
      r d d
      r^"a tempo" c\p d
      r e f
      r e d
      % 5
      r c c
      r f^\accent\crM e
      r dis dis
      r f\diM e
      r dis dis
      r bes'^\accent\crM a
      r g g
      r bes\diM a
      r gis gis
      e'4 r e'

      e,\< r e'\!
      e,\> r e'\!
      e, r e' }

    \tag #'violinitwoII {
      r d,, e
      r fis g
      r fis e
      r d cis
      r d e
      r fis g
      r fis e

      r d e
      r f g
      r f e
      r d cis
      r d e
      r f g
      r f e
      r c c
      r c c
      % 4
      r c c
      r c c
      r e e
      r e e
      r e e
      r e e
      r fis fis
      r fis fis

      r fis fis
      r fis fis
      r b, b
      r b b
      r^"poco rit." b b
      r b b
      r^"a tempo" a b
      r c d
      r c b
      % 5
      r a a
      r c^\accent c
      r c c
      r c c
      r b b
      r f'^\accent f
      r f f
      r f f
      r e e
      e4 r e'

      e,\< r e'\!
      e,\> r e'\!
      e, r e'
    }

    a,8 gis\< a b c d\!
    e\> a e d\! c b
    a\< b c d\! e4\f^\accent }
  \alternative {
    { a4^\accent r r }
    { a4^\accent r r R2.

     % should say "arco" here.

      \tag #'violinitwoI
      { \once \override Script #'outside-staff-priority = #100
        \once \override TextScript #'outside-staff-priority = #500
        %\override TextScript.extra-offset = #'(-10 . -5)
        e2.\pp\fermata
        ^"divisi"
        ~ e4 r r }

      \tag #'violinitwoII
      { a,2. ~ a4 r r }

    }
  }
}

violinitwoI = \keepWithTag #'violinitwoI \taggedViolinitwo
violinitwoII = \keepWithTag #'violinitwoII \taggedViolinitwo