% -*- mode: LilyPond; coding: utf-8; -*-

\version "2.19.49"

upper = \relative c' {
  \key c \minor
  \time 4/4

  c8.( es32 g) c8 <c, fis> <b g'> g'' r4
  | <es, g c>4\arpeggio <d f b>\arpeggio <c g' c>\arpeggio r
  | << { b' c8( bes) } \\ { as4 g } >> r8 <c, f as> r <c f as>
  | << { <f as>( <es g>) } \\ c4 >> r8
  << { c'8 ~ c( b) } \\ { <es, g>-\f <d f as>4 } >> r8
  << { <b' d> ~ <b d>( c) } \\ { <f, as> <es g b>4 } >> r <c g' c>2
  | r8 << { g'4 fis8 g4 } \\ { es8 d c b4 } >> r
  | es32( bes! g bes \repeat unfold 6 { es bes g bes }
  es bes g bes)
  | d( bes as bes \repeat unfold 6 { d bes as bes }
  d bes as bes)
  | es( bes g bes \repeat unfold 3 { es bes g bes }
  \repeat unfold 3 { es c a c } es c a c)
  | <a c fis>4 r r8 
  << { d'( cis c b[ bes] as[ es']) } \\ { fis, g a d,4 es! } >>
  r8 <bes d g> r <a c fis>
  | \repeat unfold 4 { r32 g'( fis g) } r as!( g as)
  \repeat unfold 3 { r as( g as) }
  | \repeat unfold 4 { r b( ais b) } 
  \repeat unfold 2 { r c( b c) } \repeat unfold 2 { r d( cis d) }
  | es c g c es c g c fis c a c fis c a c << g'8 \\ b, >> 
  %\once \override Slur.attachment-offset = #'((0 . 3.5) 0 . 0)
  g_( as'! g
  | fis f es d es_) c_( <des des'> <c c'>
  | <b b'> <bes bes'> <as as'> <g g'> <as as'>_) f'([ as c,])
  | << { des2 ~ des8 b c c ~ c es4( d!8) c f,[( g <d as'>)] } \\
       { r8 f( g es) as <d,! f>( es c) <es g> <g c>4 <f! b>8 es c4 c8 } \\
       { s2 s4 fis4 } >>
  | r8 <c es g> r <b d g> c c'( es fis,)
  | g8.( c32 es g8) <d, g b>-. <es g c>-. c''-. r4

  \bar "|."
}

lower = \relative c {
  \key c \minor
  \time 4/4

  c8.( es32 g) c8 <as, as'> <g g'>4 r
  | <c, c'> <d d'> <es es'> r
  | <f' d'> << { g8( c) } \\ e,4 >> f8 r f r
  | r16. c32[-\f es16. g32] c8 c, r16. d32[ f16. b32] d8 d,
  | r16. es32[ g16. c32] es8 es, <as, as'>2
  | as8 r as r g4 r
  | es8.( g32 bes) es8 r r2
  | bes,8.( d32 f) bes8 r r2
  | es,8.( g32 bes) es8 r c,8.( es32 a) c8 r
  | <d, d'>4 r r8 d' e fis
  | g4 c, d8 r d r
  | <g bes> <g bes> <g b> <g b> \repeat unfold 4 { <g c> }
  | \repeat unfold 4 { <g d' f> } <g c es> <g c es> <g b f'> <g b f'>
  | \repeat unfold 8 { <g, g'>16 } <g g'>8 r r4 \clef french
  | \tieUp \slurDown <b' g'>2( ~ <c g'>8) r r4 \clef bass 
  | <e, c'>2( ~ <f c'>8) r r4 \tieNeutral \slurNeutral
  | <as, as'>1
  | <g g'>8 r <g g'> r <as as'> as[( g f)]
  | g r g r <c, c'>4 r8 << { c''8 ~ <c es>4 } \\ { as8 g4 } >> 
  r8 <g, g'>-. <c, c'>4-. r
  
  \bar "|."
}

dynamics = {
  s4-\f s2.
  | s1
  | s4-\p s2.
  | s1
  | s2 s2-\p
  | s1
  | s4-\f s2.
  | s1*2
  | s2 s8 s4.-\p
  | s1*2 \override Voice.TextScript.extra-offset = #'(0 . 2)
  | s8-\markup { \italic "cre-" } s8-\markup { \italic "-" }
    s8-\markup { \italic "scen-" } s8-\markup { \italic "-" }
    s8-\markup { \italic "do" } s8-\markup { \italic "-" }
    s8-\markup { \italic "al" } s8-\markup { \italic "-" }
  | s4-\f s4 s8 s4.-\p
  | s1*5
  | s4 s8 s8-\f
}
