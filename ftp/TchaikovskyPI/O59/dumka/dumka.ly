\version "2.18"
\header {
  mutopiatitle = "Doumka"
  mutopiacomposer = "TchaikovskyPI"
  mutopiainstrument = "Piano"
  date = "1886"
  style = "Romantic"
  license = "Public Domain"
  maintainer = "Vassily Checkin"
  maintainerEmail = "ly@auriga.com"

  title="Doumka"
  subtitle="Scène rustique russe"
  opus="Op. 59"
  composer="P. Tchaikovskiy"
  source="Unknown"

 footer = "Mutopia-2014/02/25-341"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

PIRH = <<
  \context Voice = AI \relative c'' {
    \voiceOne %\slurSS
    \set PianoStaff.connectArpeggios = ##t
    c2( ees4 c) | f1 |
    g4 ~ g8 \tuplet 3/2 { f16 ees d} c4^- c^- |
    <bes g> g2. | c4^- c^- ees4.(\arpeggio d16 c) |
    bes1 | g8( c b c) g4( f8. ees32 f) | g1 |
    <g g' >4^> <g g'>^> g'4.->( f16 ees) d1 |
    <g, g' >4^> <g g'>^> g'4.( f16 ees) d1 |
    c4 c8( d f ees d c) | ees2. ees4 |
    d\arpeggio c\arpeggio g\arpeggio c8.\arpeggio d32 c |
    g2. aes4~ | aes4. b8( c d ees e) |
    \oneVoice %\slurAttAny
    f( g) bes4^>~ bes8_\mp aes( g f) |
    bes\>( aes g f) bes( aes g  f\! ~ | f)_\p
    c'( b c bes aes g f) ~ | f_"dim." c'( b c bes aes g f) ~ |
    f16\> c'( b c bes aes g f) ~ f( c' b c bes aes g f)\! ~ |
    \time 3/2
    f_\pp c'( b c bes aes g f) ees( c' b c aes g f ees)
    d( c' b c g f ees d) |
    \time 4/4
    c( ^\pp _\markup{\dynamic "p" marcato la melodia}
    c' b c g f ees d) c( c' b c g f ees d) |
    c\<( c' b c f, ees d ees) c( c' b c f, ees d ees)\! |
    c( c' b c g-2 f ees-3 d) ees-1( ees'-4 d-5 ees-4 d-5 c bes a) |
    g( g' fis g d c bes  a) g( g' fis g d c bes a) |
    g( g' fis g ees d c bes) a( g' fis g d c bes a) |
    g( d' cis d bes g f ees) d( bes'^4 a bes g^2 f^1 ees^3 d)^2 |
    c^1( g' fis g ees d c bes!) a( ees'^4 d ees d-3 c-1 bes^3 a)^2 |
    g_"poco cresc."( d' cis d bes g f ees)^3
    d^2( g^5 fis g d^2 c!^1 bes a) |
    \clef bass
    g( d' cis d bes g f! ees) d( g d c! bes a) r8 |
    \clef treble
    \voiceOne
    <g' g' >4^> s g'4.^> f16( ees16) |
    \oneVoice
    r16 aes,( c <f aes>) <f aes>( c aes c) r16 \clef bass
    d,( f <c' d>) r d,( f<b d>) |
    \voiceOne
    \clef treble
    <g g' >4^> s g'4.^> f16( ees16) |
    \oneVoice
    r16 aes,( c <f aes>) <f aes>( c aes c) r16 \clef bass
    d,( f <c' d>) r d, f( <b d>) |
    \voiceOne
    c4 \oneVoice
    r16 \clef treble
    ees( <g c> ees) r g( <c ees> g) r c( <ees g> c) |
    r ees( <g bes> ees) <bes' ees>( ees,) <g bes>( ees)
    <ees g>( bes) <bes ees>( g) r bes,( <g' bes> bes,) |
    r bes( <f' bes> bes,) r ees( <g c ees> ees) r g( <bes d g> g)
    \clef bass
    \voiceOne c,8.( d32 c) |
    g8. g16 \oneVoice r<g bes>[ r <bes d>] r \clef treble
    <d g>[ r <g bes>]
    \voiceOne
    c8.( d32 c) |
    g8. g16 \oneVoice r<g bes>[ r <bes d> r
    <d g> r <g bes>]
    \voiceOne
    c8.( d32 c) |
    g8. g16 \oneVoice r<g bes>[ r <bes d>]
    \ottava #1
    r <d g>[ r <g bes> r <bes d> r <d g>] |
    r_"un poco cresc." <bes d>[ r <d g>]
    r <bes d>[ r <d g>] r <bes d>[ r <d g>] r <bes d>[ r <d g>]
    r <bes d>_\mp <c g'> <bes d>
    \repeat unfold 3 {<c g'> <bes d> <c g'> <bes d>}
    \repeat unfold 2 {
      \tuplet 6/4 {
        <c g'>[ <bes d> <c g'> <bes d> <c g'> <bes d>]
      }
    }
    <c g'>16 <bes d>32 <c g'> <bes d>8 ~ <bes d>
    \ottava #0 r^\fermata |
  }
  \context Voice = BI \relative c' {
    \voiceTwo
    <ees g>4 e4\rest e2\rest <f c'>1 |
    <g c>4 r r2 | s1 | <g c,>4 r <ees g c>\arpeggio d\rest |
    f1 | <g c,>2. r4 | d2\<( ees4 f)\! |
    c'2 <aes c> | r4 <f c'>2( <g b>4) |
    c2 <aes c> | r4 <f c'>2( <g b>4) |
    <ees g> r r2 | r <ees bes'>4 r |
    <d f bes>8\arpeggio e\rest <ees g>\arpeggio e\rest
    d\arpeggio e\rest <ees g>\arpeggio e\rest |
    d2. f4~f d\rest r2
    \repeat unfold 14 {s1} s1.
    \slurNeutral
    r16 b( c g') r b( c <ees g>)
    r16 b,!( c ees) g( <c g'>) r8 | s1
    r16 b,( c g') r b( c <ees g>) r16 b,!( c ees) g( <c g'>) r8 | s1 |
    r16 ees,, g ees s4 s2 | s1 s2 s4 r16 c g'8 |
    r16 d8 d16 s2 r16_\p c' g'8 | r16 d8 d16 s2 r16_\pp c' g'8 |
    r16 d8 d16 s2. | s1 s s
  }
>>

PILH = <<
  \context Voice = CI \relative c' {
    \voiceOne
    s1
    c4.\arpeggio\<( d8 c4 d4)\! |
    ees4\arpeggio s4 s2 | s1 | s1 |
    <f, bes> | g2. c4 | b2( c4 d) |
    c2^\markup {più \dynamic "f"}
    <g'>4.(->\arpeggio f16 ees) | d1
    c2 <g'>4.(\arpeggio f16 ees) | d1 |
    c4 c8( d f ees d c) | ees2. ees4 | s1 s1 s1 |
    \oneVoice
    r2 \clef treble <f aes d>~<f aes d>1~<f aes d>1~<f aes d>2~
    <f aes d>8 r r4 | R1
    \time 3/2
    R1.
    \time 4/4 \clef bass
    \voiceOne
    c2\arpeggio ees4 c f1 |
    g4\arpeggio~g8~g32 f ees d c4 <c>\arpeggio |
    <bes d,> <g bes,>2~<g bes,>8 s8 |
    <c>4^\arpeggio c^- <ees>4.(\arpeggio d16 c) | bes1 |
    g8( c b c) g4 a 8 g16 a | bes2.\arpeggio ~bes8 s8 |
    \oneVoice
    r2 r4 r8 g,16 f |
    ees 8 r8 <g' g'>4->
    \voiceOne
    g4.^> f16( ees) |
    \oneVoice
    <d f d'>2 <aes aes,>4( <g g,>) |
    <ees ees'>8 r8 <g' g'>4->
    \voiceOne
    g4.^> f16( ees) |
    \oneVoice
    <d f d'>2 <aes aes,>4( <g g,>) |
    \voiceOne
    c
    \oneVoice <c c'>8 <d d'> <f f'>( <ees ees'>) <d d'> <c c'> |
    \voiceOne
    <ees ees'>2.^\f <ees g ees'>4 | \oneVoice
    <d f d'>^\> <c ees g c> <g bes d g> ees8^\mp( ees') |
    bes,( bes') d16[ r g r bes r d ] r ees,8( ees') |
    bes,( bes') \clef treble d16[ r g r bes r d] r ees,8( ees') |
    bes,( bes') d16[ r g r
    \ottava #1 bes r d r g r bes] r |
    g[ r bes] r g[ r bes] r g[ r bes] r g[ r bes] r |
    g8[ ees16 g] \repeat unfold 3 { ees16( g ees g) } |
    \repeat unfold 2 { \tuplet 6/4 { ees16[( g ees g ees g)]}}
    ees16-. g32 ees g8~g8 \ottava #0 r8^\fermata
  }
  \context Voice = DI {
    \oneVoice \dynamicUp
    <c g c'>4^\p\arpeggio r4 r2 |
    \voiceTwo
    <c aes>1\arpeggio |
    <c g>4\arpeggio \oneVoice r4
    < ees c' ees'>\>\arpeggio r |
    <g d'> r r8 g( a bes)\! |
    <ees g>4 r <c g c'>\arpeggio r |
    \voiceTwo
    d4.( ees8) d8.( ees32 d c8 d8) |
    ees2. aes4 | g1 | <ees g>2 <d aes c'>4\arpeggio r4 |
    r4 <aes c'>2( <g b>4) |
    <ees g>2 <d aes c'>4\arpeggio r4 |
    r4 <aes c'>2( <g b>4)
    <c g>\arpeggio r r2 | r2 <g, ees bes>4\arpeggio r |
    \oneVoice
    <bes, f bes>8\arpeggio r <c ees g c'>\arpeggio r
    <g b>\arpeggio r <c g c'>\arpeggio r |
    <g b>2. <f c'>4~<f c'> r r2 |
    s1*5 s1.
    \voiceTwo
    <c ees g>4\arpeggio r r <ees g> | <aes c'>1 |
    <ees c'>4\arpeggio r4 r4 <c ees g>\arpeggio |
    g,2.~g,8 r |
    <ees g>4\arpeggio r4 <c g>\arpeggio r4 | g1 |
    <ees g>2 <c ees> | <g, d>2.\arpeggio ~ <g, d>8 r | s1
    s2 r8 <aes, c>~<aes, c> r8 | s1
    s2 r8 <aes, c>~<aes, c> r8 | s1
    r8 <c, ees, g,> s4 s2 | r4 <g, bes, ees g>2\arpeggio r4 |
    s1*7
  }
>>

PIIRH = <<
  \context Voice = AII \relative c'' {
    \set PianoStaff.connectArpeggios = ##f
    \stemUp \tieUp
    g'4^>~g8 \grace {f16[( g]}
    f16) ees^. d( ees) c^. d^. bes8^. c^. |
    g'4^>~g8 \grace {f16[( g]}
    f16) ees^. d( ees) c^. d^. bes8^. c^. |
    \stemNeutral \tieNeutral
    <g bes g'>^>_\mf <g bes g'>^>_"pesante"
    <aes bes aes'>^> <g bes g'>^>
    <f bes f'>^> <g bes g'>^> <ees bes' ees>^> <f bes f'>^> |
    <g bes g'>^>_\f <bes ees bes'>^>~<bes ees bes'>
    <c ees c'>^>~<c ees c'> <bes ees bes'>^> <f bes f'>
    a32 bes d f |
    \stemUp \tieUp \dynamicUp
    g4\>~g8\! \grace {f16[( g] }
    f16)^\mp ees^. d(
    ees) c^. d^. bes8^. c^. |
    g'4\>~g8\! \grace { f16[( g]}
    f16)^\mp ees^. d(
    ees) c^. d^. bes8^. c^. |
    \stemNeutral \tieNeutral
    <g bes ees g>^>_"pesante" <g bes g'>^>
    <aes? bes aes'>^> <g bes g'>^>
    <f bes f'>^> <g bes g'>^> <ees g ees'>^> <f g f'>^> |
    <<
      {d8 d ees d c d bes c d bes~bes c d bes~bes c d bes d ees}
      {g8 g g g g g g g g g~g g g g~g g g g g}
      {d'8 d ees d c d bes c d bes~bes c d bes~bes c d bes d ees}
    >>
    g,,8[^>( \tuplet 5/4 { bes32 d g bes d] } g8)-. r |
    \stemUp \tieUp
    g,4^>~g8 \grace {f16[( g]}
    f16) ees^. d( ees) c^. d^. bes8^. c^. |
    g'4^>~g8 \grace { f16[( g]}
    f16) ees^. d( ees) c^. d^. bes8^. c^. |
    \stemNeutral \tieNeutral

    <g bes ees g>4.-> <f c'>8 <g bes ees g>4.-> <f c'>8 |
    <g bes ees g>8->_\p <f c'> <g bes ees g>8-> <f c'>
    <g bes ees g>8-> <f c'> <g bes ees g>8-> <f c'> |
    % l'istesso tempo
    \stemUp \slurUp
    g'16[^> f32( ees d16)^. ees^.] bes8-. <c f,>->
    g'16[^> f32( ees d16)^. ees^.] bes8-. <c f,>->
    \stemNeutral \dynamicDown
    <<
      {<g bes ees g>16-> g'~g g~g\< g~g g~g g~g g~g g~g8_\f}
      {s8. f16~f ees~ees d~d c~c <d~ bes~><d bes> s <bes' d g>8^>}
    >>
    \stemUp \slurUp
    g16[^> f32( ees d16)^. ees^.] bes8-. <c f,>->
    g'16[^> f32( ees d16)^. ees^.] bes8-. <c f,>->
    <<
      {<g bes ees g >16-> g'~g g~g\< g~g g~g g~g g~g g( bes)_\f}
      {s8. f16~f ees~ees d~d c~c <d~ bes~><d bes> s <d' g> <bes bes'>}
    >>
    \stemNeutral \slurNeutral
    <<
      { c'8[--^"giocoso"_\mp c-] c16[-- bes32( aes g16)-. f-.]
        bes8[-- bes-] bes[( ees16)-. d-.] |
        c8[-- c-] c16[-- bes32( aes g16)-. f-.]
        bes8[-- bes-] bes g,16[_\mf bes] |
      } {
        c8 c c16 s s8
        bes8 bes bes ees16 d |
        c8 c c16 s s8
        bes8 bes bes ees,16 g |
      }
    >>
    \stemUp
    c8^- c^- c16^- bes32( aes) g16^. f^. bes8^- bes^- bes16 r r8 |
    c8^- c^- c16^- bes32( aes) g16^. f^. bes8^- bes^- bes16 r r8 |
    \oneVoice
    r16^"brilliante" \grace {b16} <c f,>
    r16 \grace { b'16 } <c f,>
    \ottava #1
    r16 \grace {b'16} <c f,>
    \ottava #0
    r8 r16 \grace {d,,16} <bes ees>
    r16 \grace {d'16} <bes ees>
    \ottava #1
    r16 \grace {d'16} <bes ees>
    \ottava #0
    r8 |
    r16 \grace {b,,16} <c f,>
    r16 \grace {b'16} <c f,>
    \ottava #1
    r16 \grace {b'16} <c f,>
    \ottava #0
    r8
    r16 \grace {d,,16} <bes ees>
    r16 \grace {d'16} <bes ees>
    \ottava #1
    r16 \grace {d'16} <bes ees>
    d,32( ees g bes) | c->( aes g f)
    \ottava #0
    c->( aes g f) c->( aes g f) r
    e''( f g) bes^>( g f ees) bes^>( g f ees) bes^>( g f ees) r
    g''32( aes bes) | c->( aes g f)
    c->( aes g f) c->( aes g f) r
    e''( f g) bes^>( g f ees) bes^>( g f ees) bes^>( g f ees) r16
    <g bes,>_\p |
    <<
      {
        fis_. g_. fis_. g_. fis_. g_. e_. f_.
        f_. g_. f_. g_. f_. g_. d_. ees_. |
        fis_. g_. fis_. g_. fis_. g_. e_. f_.
        f_. g_. f_. g_. f_. g_. d_. ees_. |
      }
      {
        s16 c s c s c s bes s bes s bes s bes s g |
        s16 c s c s c s bes s bes s bes s bes s g |
      }
      {
        s16 c' s c s c s bes s bes s bes s bes s g |
        s16 c s c s c s bes s bes s bes s bes s g |
      }
    >>
    <<
      {
        r16 c,8 c'16~c16. aes32 g16 f
        r bes,8 bes'16~bes16. g32 f16 ees
        r16 c8 c'16~c16. aes32 g16 f
        r bes,8 bes'16~bes16. g32 f16 ees
      }
      {
        r16 c'8 c'16~c16. aes32 g16 f
        r bes,8 bes'16~bes16. g32 f16 ees
        r16 c8 c'16~c16. aes32 g16 f
        r bes,8 bes'16~bes16. g32 f16 ees
      }
    >>
    r16 d,32( e \tuplet 5/4 { f[ g aes bes c] }
    \tuplet 6/4 { d[ e f g aes bes ]} c8)^.
    r16 c,,32( d \tuplet 5/4 { ees[ f g aes bes] }
    \tuplet 6/4 { c[ d ees f g aes ]} bes8)^. |
    r16 d,,32( e \tuplet 5/4 { f[ g aes bes c] }
    \tuplet 6/4 { d[ e f g aes bes ]} c8)^.
    r16 c,,32( d \tuplet 5/4 { ees[ f g aes bes] }
    \tuplet 6/4 { c[ d ees f g aes)] }  bes16[^.( <bes c>)^.]|
  }
  \context Voice = BII {
    \stemDown \tieDown
    \relative g' {
      % g'' here to have arpeggio split between staves
      <g bes ees g>4\arpeggio~<g bes ees>8 r8 r4 r8 f |
      <g bes ees g>4\arpeggio~<g bes ees>8 r8 r4 r8 f |
      s1 s1
      <g bes ees g>8 r8 r4 r8 <fis a>[ g] <c, f>_\f|
      <g' bes ees g>8 r8 r4 r8 <fis a>[ g] <c, f>_\f|
      s1 s s s
    }
    \relative g {
      <g bes ees >4~<g bes ees>8 r8 r4 r8 f |
      <g bes ees >4~<g bes ees>8 r8 r4 r8 f |
      s1 s1
      <g bes ees>16 r r8 s4 <g bes>16 r r8 s4 s1
      <g bes ees>16 r r8 s4 <g bes>16 r r8 s4 |
    }
    s1 s s
    \relative a' {
      \slurDown
      aes16( <f c> aes16)( <g c,> aes) r r8
      g16( <ees bes> g)( <f bes,>)
      g32( fis g bes ees16)_. d_. |
      aes16( <f c> aes16)( <g c,> aes) r r8
      g16( <ees bes> g)( <f bes,>)
      g32[( f ees d ees8)] |
    }
  }
>>

PIILH = <<
  \context Voice = CII {
    \clef bass
    \oneVoice
    <ees bes ees'>4^\mf\arpeggio ~ <ees bes ees'>8 r r4 r8 <aes ees'> |
    <ees bes ees'>4\arpeggio ~ <ees bes ees'>8 r r4 r8 <aes ees'> |
    <ees bes ees'>_> <ees bes ees'>_> <f bes f'>_> <ees bes ees'>_>
    <d bes d'>_> <ees bes ees'>_> <c bes c'>_> <d bes d'>_> |
    <ees bes ees'>_> <g ees' g'>_>~<g ees' g'>
    <aes ees' aes'>_>~<aes ees' aes'> <g ees' g'>_> <d bes d'>_> r8^\f
    \relative a, {
      << {r16^\mp a-. bes-. ees-.} \\ {<ees, bes' ees'>8 r} >>
      g'16[-. bes-.] \clef treble ees[-. g-.] bes8-. ees,-. r8
      \clef bass <aes,, ees' aes> |
      << {r16^\mp a-. bes-. ees-.} \\ {<ees, bes' ees'>8 r} >>
      g'16[-. bes-.] \clef treble ees[-. g-.] bes8-. ees,-. r8
      \clef bass <aes,, ees' aes> |
    }
    <ees, bes, ees>_> <ees bes ees'>_> <f bes f'>_> <ees bes ees'>_>
    <d bes d'>_> <ees bes ees'>_> <c g c'>_> <d g d'>_> |
    \dynamicUp
    <<
      \relative c {
        bes8^"accentuato"\< bes c bes a bes
        g a bes g~g a bes g~g a bes\! g bes c
      }
      \relative g { g g g g g g d d d d~d d d d~d d d d g g }
      \relative c' {
        bes8 bes c bes a bes g a
        bes g~g a bes g~g a bes g bes c
      }
    >>
    \relative b, {
      <bes g>8[( _>^\ff
      \tuplet 5/4 { d32 g bes d g] } bes8)-. r
    } |
    <ees, bes, ees>4^\mf ~ <ees, bes, ees>8 r r4 r8 <aes, ees> |
    <ees, bes, ees>4 ~ <ees, bes, ees>8 r r4 r8 <aes, ees> |
    \relative e, {
      <ees bes' ees>4.-> <aes ees'>8
      <ees bes' ees>4.-> <aes ees'>8 |
      <ees bes' ees>-> <aes ees'> <ees bes' ees>-> <aes ees'>
      <ees bes' ees>-> <aes ees'> <ees bes' ees>-> <aes ees'>
    }
    %l'istesso tempo
    <ees, bes, ees >16_> r^\p bes-. g-. fis-. g-. aes8-.
    <ees, bes, ees >16_> r^\p bes-. g-. fis-. g-. aes8-.
    \stemUp \tieUp
    r16 bes8^"cresc." b16~b c'8 bes16~bes aes8 g16~g8 d' |
    \stemNeutral \tieNeutral
    <ees, bes, ees >16_> r bes-. g-. fis-. g-. aes8-.
    <ees, bes, ees >16_> r bes-. g-. fis-. g-. aes8-.
    \stemUp \tieUp
    r16 bes8^"cresc." b16~b c'8 bes16~bes aes8 g16~g8 d' |
    \stemNeutral
    r16 <aes, bes, d>( aes) <aes bes d'>( aes' <aes bes d'>) r8
    r16 <g, bes, ees>( g) <g bes ees'>( g' <g bes ees'>) r8
    r16 <aes, bes, d>( aes) <aes bes d'>( aes' <aes bes d'>) r8
    r16 <g, bes, ees>( g) <g bes ees'>( g' <g bes ees'>) r8
    \stemUp \slurUp
    r16 d8( e16 f) r r8 r16 c8( d16 ees) r r8 |
    r16 d8( e16 f) r r8 r16 c8( d16 ees) r
    \stemNeutral g-. bes-. \stemUp|
    \relative c' {
      c8[^> c^>] c[ bes32( aes g f) ]
      bes8[^> bes^>] bes[^> ees16^. d^.] |
      c8[^> c^>] c[ bes32( aes g f) ]
      bes8[^> bes^>] bes[^> ees16^. d^.] |
    }
    \stemNeutral
    \relative d {
      <d aes>16^. ees^. e^. f^. g^. aes^. c^.^> r
      <d, g,>^. ees^. fis^. g^. a^. bes^. ees^.^> r
      <d, aes>16^. ees^. e^. f^. g^. aes^. c^.^> r
      <d, g,>^. ees^. fis^. g^. a^. bes^. ees^.^> r
    }
    \stemUp
    \relative e {
      ees^.^\< e^. ees^. e^. ees^. e^. cis^. d^.
      d^. ees^. d^. ees^. d^. ees^. b^. c^. |
      ees^. e^. ees^. e^. ees^. e^. cis^. d^.
      d^. ees^. d^. ees^. d^. ees^. b^. c^. |
    }
    \oneVoice
    <<
      {
        aes,,8^\ff aes, aes4 g,,8 g, g4
        aes,,8 aes, aes4 g,,8 g, g8 ees16[^> g^>]
      }
      { aes,8 aes aes'4 g,8 g g'4 aes,8 aes aes'4 g,8 g g'8}
      {
        d,8 d d'4 ees,8 ees ees'4
        d,8 d d'4 ees,8 ees ees'8 g16 bes
      }
    >>
    <aes c'>8^\fff <aes, c f>^\sf~<aes, c f> <d f>16-><f aes>->
    <g bes>8-> <g, bes, ees>8^\sf~
    <g, bes, ees> <ees g>16<g bes> |
    <aes c'>8 <aes, c f>^\sf~<aes, c f> <d f>16-><f aes>->
    <g bes>8-> <g, bes, ees>8^\sf~<g, bes, ees>
    \clef treble <g' bes' ees''>16( -.<g' bes' ees''>16)-. |
  }
  \context Voice = DII {
    s1*15
    \voiceTwo
    \tieDown \slurDown %\slurSS
    <ees bes, ees,>16 bes( ees) b( d) c'( c) bes( <d bes,>)
    aes( <d aes,> g)( <d g,>8) <g bes>_> s1
    <ees bes, ees,>16 bes( ees) b( d) c'( c) bes( <d bes,>)
    aes( <d aes,> g)( <d g,>8) <g bes>_> |
    s1*2
    \relative a, { aes4 ~ aes16 s8. g4~g16 s8.
                   aes4 ~ aes16 s8. g4~g16 s8. }
    r16 <ees aes,> r <ees aes,> r <ees aes,> r8
    r16 <ees g,> r <ees g,> r <ees g,> r8 |
    r16 <ees aes,> r <ees aes,> r <ees aes,> r8
    r16 <ees g,> r <ees g,> r <ees g,> r8 |
    s1 s
    \relative a, {
      aes?16 r aes r aes r aes r g r g r g r g r |
      aes?16 r aes r aes r aes r g r g r g r g r |
    }
  }

>>

PIIIRH = <<
  \context Voice = AIII{
    \voiceOne
    \relative c''' {
      d8 d~d c32( d c g') d8 d~d c32( d c d) |
      g,16. bes32( a16.) bes32( g16.) bes32(
      c16.) bes32( g8) g~g      bes16^.( c)^. |
    }
    \relative c''' {
      d8 d~d c32( d c g') d8 d~d c32( d c d) |
      g,16. bes32 a16. bes32 g16. bes32
      c16. bes32 g8 g~g bes16^.( c)^. |
    }
    \relative c''' {
      d8 d~d g,32 a g^.( a)^. bes8 bes~
      bes e,32 fis e^.( fis)^. |
      g 8 cis,32 dis cis dis e8 g,32 a g a
      bes4~bes8 bes16^.( c)^. |
    }
    \relative c'' {
      d8 d~d g,32 a g^.( a)^. bes8 bes~
      bes e,32 fis e^.( fis)^. |
      g 8 cis,32 dis cis dis \clef bass
      e8 g,32 a g a bes4~bes8. c16 |
      bes4~bes8. c16 bes8. c16 bes8. c16 |
      bes1 ~ bes4 ~ bes2 ~ bes8
    }
    \clef treble
    \cadenzaOn
    \small
    \oneVoice
    \change Staff = down
    \relative a,, {
      \tuplet 3/2 {
        r16^\fermata
        a16[^"cresc." bes]
      }
      \tuplet 3/2 { d[ ees fis]}
      \tuplet 3/2 { g[ a bes]}
      \bar ""
      \tuplet 3/2 { d[ ees fis]}
      \tuplet 3/2 { g[ a bes]}
      \bar ""
      \tuplet 6/4 { g32[ a bes d ees fis]}
      \change Staff = up
      \tuplet 6/4 { g[\< a bes d ees fis]}
      \bar ""
      \tuplet 6/4 { g[ a bes d ees fis]}
      \ottava #1
      \tuplet 6/4 { g[ a bes d ees fis]}
      \bar ""
      \tuplet 6/4 { g[\!_\f( b, c f d ees)]}
      \tuplet 6/4 { g[( b, c f d ees)]}
      \bar ""
      \tuplet 6/4 { g[( b, c f d ees)]}
      \tuplet 6/4 { g[( b, c f d ees)]}
      \bar ""
      g4^\fermata\>~g8[~ g32 d_\pp( f ees)]
      \tuplet 6/4 { a,![( c bes fis! aes! g)]}
      \bar ""
      \tuplet 6/4 { d[( f! ees a,! c bes)]}
      \ottava #0
      \tuplet 6/4 { fis![( aes! g d f! ees)]}
      \bar ""
      \tuplet 6/4 { a,![( c bes fis! aes) g]}
      \tuplet 6/4 { d[_"cresc."( f ees a, c bes)]}
      \bar ""
      \tuplet 6/4 { d[( f ees a, c bes)]}
      \tuplet 6/4 { d[( f ees a, c bes)]}
      \bar ""
      \tuplet 6/4 { d[( f ees a, c bes)]}
      \tuplet 6/4 { d16[\<~d32 ees fis g]}
      \bar ""
      \tuplet 6/4 { a[ bes d ees fis g]}
      bes4_\f~ \tuplet 18/16 {
        bes32([ g ees c bes g ees c
        \clef bass
        bes g ees c bes g ees c bes g)]}
      r2\fermata
      \bar ""
      \clef treble
      \change Staff=down
      \voiceOne
      \tuplet 3/2 {ees'8[ g bes]}
      \tuplet 13/16 {
        ees32[[ g bes ees
        \change Staff=up
        g bes ees g bes
        \ottava #1
        ees g bes ees ]
      }
      g8
      \ottava #0
      \oneVoice
      r8^\fermata
    }
    \normalsize
    \clef bass <g g,>16_.[ <bes bes,>_.]
    \bar "|"
    \cadenzaOff
  }
  \context Voice = BIII{
    \voiceTwo
    <<
      \relative b'' {
        bes16 bes bes bes bes bes s s
        bes16 bes bes bes bes bes s s
      }
      \repeat unfold 16 {g''}
      \relative d'' { d16 d d d d d s s s2 }
    >>
    \relative d'' {
      d16 d ees ees d d <c g'> <c g'> d d <d bes g> <d bes g>
      <d bes g> <d bes g> ees <ees bes'>
    }
    <<
      \relative b'' {
        bes16 bes bes bes bes bes s s
        bes16 bes bes bes bes bes s s
      }
      \repeat unfold 16 {g''}
      \relative d'' { d16 d d d d d s s s2 }
    >>
    \relative d'' {
      d16 d ees ees d d <c g'> <c g'> d d <d bes g> <d bes g>
      <d bes g> <d bes g> ees ees
    }
    <<
      \relative d'' {
        d d d d d d c c bes bes bes bes bes bes a a |
        g g g g g g e e ees ees ees ees ees ees ees ees |
      }
      \relative b'' {
        bes bes bes bes bes bes s s g g g g g g s s |
        e e s s c c s s g g g g g g s bes |
      }
    >>
    <<
      \relative d' {
        d d d d d d c c bes bes bes bes bes bes a a |
        g g g g g g e e ees ees ees ees ees ees ees ees |
      }
      \relative b' {
        bes bes bes bes bes bes s s g g g g g g s s |
        e e s s c c s s g g g g g g g g |
      }
    >>
    \repeat unfold 32 {<ees g>16}
    <ees g>16[ <ees g>8.]~<ees g>2~<ees g>8
  }
>>

PIIILH = {
  \clef treble
  <<
    \repeat unfold 26 {g'16}
    \relative bes' {
      bes16 bes bes bes bes bes <c ees,> <c ees,>
      <d bes> <d bes> <d bes> <d bes> <d bes> <d bes>
      <c ees,> <c ees,> |
      bes bes c c bes bes ees, ees bes' bes
    }
  >>
  r8
  \ottava #1
  <g''' d''''>8
  \ottava #0
  <g' bes'>16[ <g' bes'>16]
  <<
    \repeat unfold 26 {g'16}
    \relative bes' {
      bes16 bes bes bes bes bes <c ees,> <c ees,>
      <d bes> <d bes> <d bes> <d bes> <d bes> <d bes>
      <c ees,> <c ees,> |
      bes bes c c bes bes ees, ees bes' bes
    }
  >>
  r8
  \ottava #1
  <g''' d''''>8
  \ottava #0
  <g' bes'>16[ <g' bes'>16] |
  \repeat unfold 4 {<ges' bes' e''>16}
  <f' bes' f''> <f' bes' f''>
  <e' g'> <e' g'>
  \repeat unfold 4 {<ees' g' cis''>}
  <d' g' d''> <d' g' d''>
  <cis' e'> <cis' e'> |
  <c' e' ais'> <c' e' ais'>
  <b e' b'> <b e' b'>
  <bes c' e'> <bes c' e'>
  <a c'> <a c'>
  \clef bass
  <g bes>8
  \tuplet 7/4 \relative g,,{ g32[_\p( bes ees g bes ees g)]}
  bes8[ <g bes>16<g bes>] |
  \repeat unfold 4 {<ges bes e'>16}
  <f bes f'> <f bes f'>
  <e g> <e g>
  \repeat unfold 4 {<ees g cis'>}
  <d g d'> <d g d'>
  <cis e> <cis e> |
  <c e ais> <c e ais>
  <b, e b> <b, e b>
  <bes, c e> <bes, c e>
  <a, c> <a, c>
  <g, bes,>8
  \ottava #-1
  \tuplet 6/4 \relative g,,,{
    bes32[ ees g
    \ottava #0
    bes ees g]
  }
  bes,16[ r \clef treble <ees' g' bes'>] r \clef bass |
  r8
  \ottava #-1
  \tuplet 6/4 \relative g,,,{
    bes32[ ees g
    \ottava #0
    bes ees g]
  }
  bes,16[ r \clef treble <ees' g' bes'>] r
  r8
  <ees' g' bes'>16 r r8
  <ees' g' bes'>16 r |
  r8 <ees' g' bes'>8~<ees' g' bes'>8 \clef bass
  \ottava #-1
  \tuplet 6/4 \relative g,,,{
    bes32[ ees g
    \ottava #0
    bes ees g]
  }
  bes,8. c16 bes,4~ |
  \small
  \cadenzaOn
  bes,4~bes,2~bes,8 s
  s1*4 ees,,2\fermata
  \relative g,, {
    \voiceTwo
    \tuplet 3/2 {g8[ bes ees]}
    \tuplet 13/16 {
      g32[ bes ees g
      \change Staff=up
      bes ees g bes ees g bes ees g]
    } bes8
    \change Staff=down
    r8^\fermata
  }
  \normalsize
  \oneVoice
  g,,16-.[ bes,,-.]
  \bar "|"
  \cadenzaOff
}

PIVRH = <<
  \context Voice = AIV{
    <<
      \relative c' {
        c16^. aes^. bes^. d^. ees^"sempre staccato"
        c e cis f d g e \clef treble aes f g bes |
        c aes bes d ees c e cis f d g e aes f bes g |
        c aes bes d ees c d f g ees f aes bes fis g bes | c8
      }
      \relative c {
        c16 aes bes d ees c e cis f d g e aes f g bes |
        c aes bes d ees c e cis f d g e aes f bes g |
        c aes bes d ees c d f g ees f aes bes fis g bes | c8_\fff
      }
    >>
    <c' f' c''>8[_>~<c' f' c''>]
    <f'' f'''>16[ <aes'' aes'''>] <bes'' bes'''>8^>
    <bes ees' g' bes'>8[_>~<bes ees' g' bes'>8]
    <g'' g'''>16[<bes'' bes'''>] |
    <c''' c''''>8^>
    <c' f' c''>8[_>~<c' f' c''>]
    <f'' f'''>16[ <aes'' aes'''>] <bes'' bes'''>8^>
    <bes ees' g' bes'>8[_>~<bes ees' g' bes'>8]
    g''16[-. bes''-.] |
    \relative c''' {
      c16[-. <g c,>-. c <g c,>-.] <f c>[( ^\sf f,)]
      f'[-. aes-.] bes[-. <f bes,>-. bes-. <f bes,>-.]
      <ees bes>[( ^\sf ees,)]
      g'[-. bes-.] |
      c16[-. <g c,>-. c <g c,>-.] <f c>[( ^\sf f,)]
      f'[-. aes-.] bes[-. <f bes,>-. bes-. <f bes,>-.]
      <ees bes>[( ^\sf ees,)] r8 |
      <ees aes>8_\f-. <ees aes ees'>
      \voiceOne
      aes^- bes16 <aes c>
      \oneVoice
      <ees g>8-. <g ees'>-.
      \voiceOne
      g g16^. g^. |
      \oneVoice
      <ees aes>8-. <ees aes ees'>
      \voiceOne
      aes^- bes16 <aes c>
      \oneVoice
      <ees g>8-. <g ees'>-.
      \voiceOne
      g g16^. g^. |
      \oneVoice
    }
    %Andante
    \relative b {
      bes32_\ff( bes' d, g) c,( c' g bes)
      cis,( cis' g <a d>) e( <e' bes>) fis,( <fis' c>)
      g,( g' bes, d) a( a' ees g)
      bes,( bes' d, g) d( <d' bes>) ees,( <ees' bes>) |
    }
    \break
    \relative b {
      r32 bes'( bes, g') c,( c' g bes)
      cis,( cis' g <a d>) e( <e' bes>) fis,( <fis' c>)
      g,( g' bes, d) a( a' ees g)
      bes,( bes' d, g) d( <d' bes>) ees,( <ees' bes>) |
    }
    \voiceOne
    \break
    \relative g'' {
      r32 g( b, d) a( a' c, ees) b( b' f g)
      c,( <ees g c>) d( <g d'>)
      ees( ees' g, c) f,( f' aes, c)
      g( g' c, ees) aes,( <c aes'>) g( <c g'>) |
    }
    \break
    \relative g'' {
      r32 g( b, d) a( a' c, ees) b( b' f g)
      c,( <ees g c>) d( <g d'>)
      ees( ees' g, c) f,( f' aes, c)
      g( g' c, ees) aes,( <c aes'>) g( <c g'>) |
    }
    \oneVoice
    %meno mosso
    \relative a'' {
      <aes c ees aes>8[ <g c ees g>]
      <f aes c f>16.[ <ees ees'>32 <des des'>16 <c c'>]
      <f aes c f>8[ <ees aes c ees>]
      <des ees aes des>16.[ <c c'>32 <bes bes'>16 <aes aes'>] |
      <des ees des'>16[( <c c'>)] <bes ees bes'>[( <aes aes'>)]
      <f aes f'>[( <ees ees'>)] <des ees des'>[( <c c'>)]
      <bes ees bes'>[( <aes aes'>)]
      \clef bass
      <f aes f'>[( <ees ees'>)]<des ees des'>[( <c c'>)]
    }
    \clef treble
    <<
      \relative b' {b8_\fff ~ b[ b,] b'[ b'] b'[ b,] b,}
      \relative e' {e8~e e, e' e' e' e, e,}
      \relative b {b8~b b, b' b' b' b, b,}
    >>
    <<
      \relative g' {
        \slurUp
        gis16[^._\mf( b)^.] | cis8[^- cis^-]
        cis[^- fis,16^.( a)^.] b8[^- b^-]
        \voiceOne
        b[^- gis16^.( b)^.] |
        \oneVoice
        cis8[^- cis^-] cis[^- fis,16^.( a)^.]
        b8[^- b^-] b[^- e,16^. gis^.] |
        a8^- a^- a^- \clef bass dis,16[^.( fis)^.]
        gis8^- gis^- gis^- cis,16[^.( e)^.] |
        fis8^- bis,16^.( dis)^. e8^- ais,16^.( cis)^.
        dis4_\f ~dis8 fis |
        dis fis dis fis dis4_"dim." ~dis8 fis |
        dis fis dis fis ees!2->~ |
        ees1~ees~ees^\fermata \clef treble
      }
      \relative d' {
        s8 dis e fis s cis dis s s |
        dis e fis s cis dis e s |
        bis cis dis s ais bis cis s |
        gis s gis s gis4~ gis8 a |
        gis a gis a gis4~gis8 a gis a gis a
        aes2~aes1~aes~aes
      }
      \relative g {
        gis16[ b] | cis8[ cis] cis[ fis,16 a] b8[ b]
        b[ gis16 b] |
        cis8[ cis] cis[ fis,16 a] b8[ b] b[ e,16 gis] |
        a8 a a dis,16[ fis] gis8 gis gis cis,16[ e] |
        fis8 bis,16 dis e8 ais,16 cis dis4~dis8 fis |
        dis fis dis fis dis4~dis8 fis | dis fis dis fis ees!2->~ |
        ees1~ees~ees
      }
    >>
  }
  \context Voice = BIV {
    \repeat unfold 7 {s1}
    \voiceTwo
    \relative e' {
      s4 ees16. f32 ees16 ees s4 ees16. d32 c16 bes |
      s4 ees16. f32 ees16 ees s4 ees16. d32 c16 bes |
    }
    s1 s
    \relative a' {
      s8 a8 b c16 d ees8 f g aes16 g |
    }
    \relative a' {
      s8 a8 b c16 d ees8 f g aes16 g |
    }
    s1 s s
    s4 s s e'16. fis'32 s8 |
  }
>>

PIVLH = <<
  \context Voice = CIV{
    \relative c, {
      c16^"poco a poco cresc."
      aes bes d ees c e cis f d g ees aes f g bes |
      c aes bes d ees c e cis f d g ees aes f bes g |
      c aes bes d \clef treble
      ees c d f g ees f aes bes fis g bes | c8
    }
    \clef bass
    <aes, d f aes>8[->~<aes, d f aes>8]
    \clef treble
    f'16[ aes'] bes'8->
    \clef bass
    <g, bes, ees g>[->~<g, bes, ees g>]
    \clef treble
    g'16[ bes'] |
    c''8->
    \clef bass
    <aes, d f aes>8[->~<aes, d f aes>8]
    \clef treble
    f'16[ aes'] bes'8->
    \clef bass
    <g, bes, ees g>[->~<g, bes, ees g>] r |
    aes, <aes c' e'>( aes')-> r
    g, <g bes d'>( g')-> r |
    aes, <aes c' e'>( aes')-> r
    g,[ <g bes d'>( g')->]
    <<
      \relative g, {
        g16[_. bes_.] | c8_. c_. c_- g16_. aes_. bes8_. bes_.
        bes_- ees16_. d_. |
        c8_. c_. c_- g16_. aes_. bes8_. bes_. bes_- ees16 ees |
      }
      \relative g,, {
        g16 bes c8 c c g16 aes bes8 bes bes ees16 d |
        c8 c c g16 aes bes8 bes bes ees16 ees |
      }
    >>
    \relative d, {
      \grace {d8(}
      \voiceOne
      d'8)[^- ees^-] e16.[( fis32) g16^. a^.] bes8[^- c^-]
      \clef treble d16.[( e32) fis16^. g^.] |
      \clef bass
    }
    \relative d, {
      \grace {d8}
      \voiceOne
      d'8[^- ees^-] e16.[( fis32) g16^. a^.] bes8[^- c^-]
      \clef treble d16.[( e32) fis16^. g^.] |
      \clef bass
    }
    g4~ \hideNotes g16. \unHideNotes s32 s8
    \override NoteColumn.ignore-collision = ##t
    c4~ \hideNotes c16. \unHideNotes s32 s8 |
    g4~ \hideNotes g16. \unHideNotes s32 s8
    c4~ \hideNotes c16. \unHideNotes s32 s8 |
    \revert NoteColumn.ignore-collision
    \oneVoice
    \relative e, {
      r32 ees( c' aes) ees'( c aes ees)
      r aes( ees' c) aes'( ees c aes)
      r c( aes' ees) c'( aes ees c)
      r ees( c' aes) ees'( c aes ees) |
    }
    <<
      \relative e' {
        r ees( aes ees) r c( ees c)
        r aes( c aes) r ees( aes ees) r
        c( ees c) r aes( c aes) r ees( aes ees)
      }
      \relative a {
        s aes s aes s ees s ees s c s c s aes s aes
        s ees s ees s c s c s aes s aes
      }
    >>
    <<
      \relative g {gis8~ gis[ gis,] gis'[ gis'] gis'[ gis,] gis, r}
      \relative e {e8~e e, e' e' \clef treble e' e, \clef bass e, s}
      \relative g, {gis8~gis gis, gis' gis' gis' gis, gis, s}
    >>
    <<
      \relative a {
        a8 a a r gis gis gis \voiceOne r |
        \oneVoice
        a a a r gis gis gis r |
        fis fis fis r e e e r |
        dis r cis r
        \voiceOne cis( bis)~bis cis |
        bis cis bis cis cis bis~bis cis |
        bis cis bis cis des4 c~|c b c2~c~c8 r r4
        R1^\fermataMarkup
      }
      \relative a, {
        a8 a a r gis gis gis r |
        a a a r gis gis gis r |
        fis fis fis r e e e r |
        dis r cis r s2 |
        s1 s s s s
      }
      \relative fis {
        fis8 e dis s e dis s s |
        fis e dis s e dis cis s |
        dis cis bis s cis bis ais s |
        gis s gis s s2 s1 s s s s
      }
    >>
  }
  \context Voice = DIV{
    s1*9
    \voiceTwo
    \grace s8
    d2 <d g>4 s4 |
    d2 <d g>4 s4 |
    <<
      \relative f' {
        f8[^\fff ees] d16.[ des32 c16 b]
        a8[ aes] g16.[ ges32 f16 ees] |
      }
      \relative f {
        f8 ees <d g>16. des32 c16 b
        a8 aes <g c>16. ges32 f16 ees |
      }
    >>
    <<
      \relative f' {
        f8[^\fff ees] d16.[ des32 c16 b]
        a8[ aes] g16.[ ges32 f16 ees] |
      }
      \relative f {
        f8 ees <d g>16. des32 c16 b
        a8 aes <g c>16. ges32 f16 ees |
      }
    >>
    s1 s s
    \voiceTwo
    s4 s s cis16. dis32 e16 r | s1 s
    s2 \grace {gis,,8(}
    gis,4)~gis,8 fis, |
    gis, fis, gis, fis, \grace {gis,,8}
    gis,4~gis,8 fis, |
    gis, fis, gis, fis, aes,2~aes,1~aes,2~aes,8 s s4 s1 |
  }
>>

PVRH = <<
  \context Voice = AV {
    \voiceOne
    \set PianoStaff.connectArpeggios = ##t
    \relative c' {
      c2^"cantabile"( ees4 c) | f1 |
      g4( ~ g8 \tuplet 3/2 { f16 ees d} c4^- c)^- |
      bes g2. | c4^- c^- ees4.( d16 c) |
      bes1 | g8( c b c) g4 \clef bass f8.( ees32 f) | g1 |
      \clef treble
      g'4^> g^> g4. f16( ees d1) |
      g4^> g^> g4. f16( ees d1) |
      c4 c8( d f ees d\arpeggio c) | \clef bass ees2. ees4 |
      d c g c8.( d32 c) | g2. ees'4 |
      d c g c8.( d32 c) |
    }
    \oneVoice
    <d g>2._\pp <ees g c'>4 | <d g>2. <ees g c'>4 |
    <d g> <ees g c'> <d g> <ees g c'> |
    <d g>1 | <ees g>~<ees g> | \clef treble
    <c'' ees'' g'' c''' >8^>_\ff c'^> r4 r2 | \clef bass
    <ees g c' >8^>_\ff r r4 r2\fermata
  }
  \context Voice = BV {
    \voiceTwo
    <ees g>8_\pp a\rest a4\rest a2\rest |
    <f c'>8 r r4 r2 |
    <g c'>8 b\rest r4 r2 |
    g4 r d2\rest |
    g8 e\rest r4 <ees g c'>8 e\rest e4\rest |
    f1 | g2 s2 | d2 c4 d |
    <g c'>8 a\rest a4\rest <aes c'>8 a\rest a4\rest |
    r <f c'>2( <g b>4) |
    <g c'>8 a\rest a4\rest <aes c'>8 a\rest a4\rest |
    r <f c'>2( <g b>4) | r g8 r r4 <ees g>8\arpeggio r |
    r4 <ees bes>2_\p <ees bes>8 r |
    <f bes>8 r <ees g> r d r <ees g> r |
    d2. <ees bes?>8_\pp r |
    <f bes>8 r <ees g> r d r <ees g> r |
    s1 s s s s s s s
  }
>>

PVLH = <<
  \context Voice = CV {
    \oneVoice
    <c, g, c>8 r r4 r2 |
    <aes, c>8 r r4 r2 |
    <ees, g, c ees>8 r r4 r2 |
    <g, d>4 r r2 |
    <ees, c>8 r r4 <c, g, c>8 r r4 |
    \voiceOne
    bes,1 c2. c4 | b,2 a,4 b, |
    \oneVoice
    <ees, c ees>8 r r4 <d, d>8 r r4 |
    r \voiceOne d2. |
    \oneVoice
    <ees, c ees>8 r r4 <d, d>8 r r4 |
    r \voiceOne d2. |
    r4 <ees, c>8 r r4 <c, g, c>8\arpeggio r |
    \oneVoice
    r4 <g, bes,>2 <g,, g,>8 r |
    <bes,, bes,> r <c, c> r <g, b,> r <c, g, c> r |
    <g, b,>2. <g, bes,>8 r |
    <bes,, bes,> r <c, c> r <g, b,> r <c, g, c> r |
    <g, b,>2. <c, g, c>4 | <g, b,>2. <c, g, c>4|
    <g, b,> <c, g, c> <g, b,> <c, g, c>|
    <g, b,>1 | <c, g, c>~<c, g, c> |
    <c ees g c' >8_> <c, c >_> r4 r2 |
    <c, g, c >8_> r r4 r2\fermata
  }
  \context Voice = DV {
    \voiceTwo
    s1 s s s s
    d,4. ees,8 d,8. ees,32 d, c,8 d, | ees,2. aes,4 | g,1
    s1 s4 aes,2 g,4 s1 | s4 aes,2 g,4 |
    \repeat unfold 13 {s1}
  }
>>

RH = {
  \key c \minor
  \PIRH
  \break
  \PIIRH
  \break
  \PIIIRH
  \break
  \PIVRH
  \break
  \PVRH
}

LH = {
  \key c \minor
  \PILH
  \PIILH
  \PIIILH
  \PIVLH
  \PVLH
}

\score {
  \context PianoStaff <<
    \context Staff = "up" {
      \time 4/4 \clef treble
      <<
        \context Voice=tempoChanges {
          \tempo "Andantino cantabile"
          s1*22 s1. s1*22
          \tempo "Con anima" s1*14
          \tempo "L'istesso tempo" s1*18
          \tempo "Poco meno mosso" s1*10
          s1*6
          s2 s8
          \tempo "Moderato con fuoco" s1*9
          \tempo "Andante" s1*4
          \tempo "Meno mosso" s1*6
          s2\tempo "Adagio" s2
          s1*5
          \bar "||"
          \tempo "Tempo I"
          s1*25
          \bar "|."
        }
        \RH
      >>
    }
    \context Staff = "down" {
      \clef bass
      \LH
    }
  >>
  \midi { }
  \layout {
    \context{
      \Score
      \override BarNumber.padding = #2
      \override TextScript.font-shape = #'italic
      \override NoteCollision.merge-differently-dotted = ##t
    }
  }
}
