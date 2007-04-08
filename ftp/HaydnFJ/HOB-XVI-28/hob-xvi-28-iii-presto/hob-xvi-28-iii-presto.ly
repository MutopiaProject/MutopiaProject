%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Sonata II"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:28"
  meter             = "III - Presto"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate II"
  mutopiacomposer   = "F.J. Haydn (1732-1809)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "C.F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/15"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/15-212"
}

Global = \notes {\key es\major \time 2/4 \partial 8}
staffUp = \translator Staff = "up"
staffDown = \translator Staff = "down"
phraseDown = \property Voice.PhrasingSlur \override #'direction = #-1
Treble = \clef treble
Bass = \clef bass
beamingOn = \property Voice.noAutoBeaming = ##f
beamingOff = \property Voice.noAutoBeaming = ##t
scriptUpB = \property Voice.Script \override #'extra-offset = #'(0 . 4)
scriptUpE = \property Voice.Script \override #'extra-offset = #'(0 . 2)
scriptZero = \property Voice.Script \revert #'extra-offset 
scriptDownE = \property Voice.Script \override #'extra-offset = #'(0 . -1)

VoiceI = \notes \relative c'' {
  \repeat volta 2 {
  \stemBoth \slurBoth bes8 (
  
  ) g r r bes (
  ) f r r bes (
  ) es as,4 g8 (
  ) c f,4 es8 (
  
  ) d as'4 g8 (
  ) g () f r bes (
  ) g r r bes (
  ) f r r bes (
  
  ) a es'4 d8 (
  ) g, c4 bes8 (
  ) g g'4 a,8
  \partial 8*3 [c () bes] r
  }

  \repeat volta 2 {
  \partial 8 d8 (
  
  ) f r r as,! (
  ) g r r bes (
  ) c r r es, (
  ) d r r bes (
  
  ) c f4 es8 (
  ) d as'4 g8 (
  ) f c'4 bes8 (
  ) as as'4 g8 (
  
  [) g f ( as ) d,]
  \partial 8*3 [f8 () es] r
  }
  
  \repeat volta 2 {
  \partial 8 bes8
  
  es16 bes g r r8 g
  bes16 as f r r4
  r16 es' ( as ) es' as,8 () g
  r16 c,16 ( f ) c' f,8 () es
  
  r16 as,16 ( d ) as' d,8 () es
  e () f r bes,
  es16 bes g r r8 g
  bes16 as f r r8 bes
  
  es16 a, es r r8 <bes' d>
  es16 a, es r r8 <bes' d>
  r g16 c \beamingOff g'8 <es, a>
  \partial 8*3 \beamingOn <d4 bes'> r8
  }
  
  \repeat volta 2 {
  \partial 8 [d'16 as!]
  
  f' d as r r8 as16 f
  g es r8 r bes'16 g
  c as f r r8 es16 c
  d bes r8 r4
  
  r16 c ( f ) c' d,8 () es
  r16 es ( as ) es' as,8 () g
  r16 c ( f ) c' d,8 () es
  r16 as, ( d ) as' fis8 () g
  
  r8 c,16 f \beamingOff as8 <as, d>
  \partial 8*3 \beamingOn <g4 es'> r8
  }
  
  \partial 8 \times 2/3 {bes'16 ( c bes}
  
  ) g8 r r \times 2/3 {bes16 ( c bes}
  ) f8 r r \times 2/3 {bes16 ( c bes}
  [) es8 () as, \grace bes as () g]
  c () f, \grace g f () es
  
  d8 <f4 as (> <es8 ) g>
  <es g (> <d ) f> r \times 2/3 {bes,16 ( c bes}
  ) g8 r r \times 2/3 {bes16 ( c bes}
  ) f8 r r \times 2/3 {bes16 ( c bes}
  
  ) a8 es'4 d8 (
  ) c g'4 \tieDown f8 ~
  [f es () d c-|]
  \partial 8*3 [cis () d] r
  
  \repeat volta 2 {
  \partial 8 \times 2/3 {f'16 ( g f}
  
  ) as,!8 r r \times 2/3 {f'16 ( g f}
  ) g,8 r r \times 2/3 {c16 ( d c}
  ) es,8 r r \times 2/3 {c'16 ( d c}
  ) d,8 r r bes
  
  as as' ~ as16 g f es
  d8 bes' ~ bes16 as g f
  es8 c' ~ c16 bes as g
  f8 <f'4 as (> <es8 ) g>
  
  r [<as, f' (> <g ) es'> <f d'-|>]
  \partial 8*3 <g4 es'> r8
  }
  
  \partial 8 bes8 (
  
  ) g r r bes (
  ) f  r r bes (
  ) es as,4 g8 (
  ) c f,4 es8 (
  
  ) d as'4 g8 (
  ) g () f r bes (
  ) ges r r bes (
  ) f r r bes (
  
  ) a es'4 des8 (
  ) c ges'4 f8 (
  [) f <c es (> <bes des> <a ) c>]
  bes4 r8 bes (
  
  ) des r r ges, (
  ) f r r as (
  ) ces r r as (
  ) bes r r ges (
  
  ) es' r r <as, f' (>
  <bes ) ges'> r r <bes des>
  <bes16 des (> <as ces> <ges4 bes> <f8 as>
  ) ges8 r r bes (
  
  ) bes' r r bes, ( 
  ) as' r r bes, (
  ) ges' r r bes, (
  ) f' r r
  
  <\context Voice=VA {\stemUp \tieUp \slurUp
    bes, () es2 ~
    es4.\fermata es,8 (
    ) d'!2 ~
    d4.\fermata }
   \context Voice=VB {\stemDown \tieDown \slurDown
    s8 r4 es, (
    ) a4. s8
    r4 r8 as (
    ) c4.}
  >
  \slurBoth \stemBoth \tieBoth bes8 (
   
  ) g! r r bes (
  ) f r r bes (
  ) es as,4 g8 (
  ) c f,4 es8 (
  
  ) d as'4 g8 (
  ) g () f r bes, (
  ) c f4 es8 (
  ) d as'4 g8 (
  
  ) f c'4 bes8 (
  ) as as'4 \tieUp g8 ~
  [g f ( as ) d,]
  \partial 8*3 [f () es] r
  
  \repeat volta 2 {
  \partial 8 bes8
  
  es16 bes a bes c bes a bes
  f' bes, a bes c bes a bes
  es c bes as! as g fis g
  c as g f! f es d es
  
  d es f g as f g es
  <d4 f> r8 bes'
  es16 bes a bes c bes a bes
  f' bes, a bes c bes a bes
  
  a g' f es d f es d
  c es d c bes d c bes
  g c es g \beamingOff <d8 f> <es, a>
  \beamingOn \partial 8*3 <d4 bes'> r8
  }
  
  \repeat volta 2 {
  \partial 8 bes'8
  
  f'16 bes, a bes bes as g as
  g es d es f es d es
  c' f, e f f es d es
  d bes a bes c bes a bes
  
  r c f es d as' g f
  es bes' as g f c' bes as
  g 'g f es d c' bes as
  g f es d c bes as g
  
  f8 as16 () f es8-| d-|
  \partial 8*3 es4 r8
  }
  
  \partial 8 bes'8 (
  
  ) g r r bes (
  ) f r r bes (
  ) es as,4 g8 (
  ) c f,4 es8 (
  
  ) d as'4 g8 (
  ) g () f r bes (
  ) g r r bes (
  ) f r r bes (
  
  ) a es'4 d8 (
  ) g, c4 bes8 (
  ) g g'4 a,8
  c () bes r bes (
  
  a ) bes r bes (
  a ) bes r bes (
  ) es as,!4 g8 (
  ) c f,4 es8 (
  
  ) d <f4 as> \tieBoth <es8 g> ~
  <es ( g> <) d f> r bes' (
  a ) bes r bes (
  a ) bes r bes (
  
  ) a es'4 d8 (
  ) g, c4 bes8 (
  ) g <es'4 g> <a,8 c> ~
  <a c (> <bes ) d> r d (
  
  ) f r r as, (
  ) g r r bes (
  ) c r r es, (
  ) d r r bes (
  
  ) c f4 es8 (
  ) d as'4 g8 (
  ) f c'4 bes8 (
  ) as as'4 g8 ~
  
  [g f ( as ) d,]
  f () es r <f, d' (>
  <as ) f'> r r <f ( as>
  <) es g> r r <g ( bes>
  
  <) as c> r r <c, ( es>
  <) bes d> r r bes (
  ) c f4 es8 (
  ) d as'4 g8 (
  
  )f <as4 c> <g8 ( bes>
  <) f as> <as'4 c> <g8 bes> ~
  [<g bes> <f as-|> <es g-|> <d f-|>]
  \partial 8*3 es4 r8
  \bar "|."
  }

VoiceII = \notes \relative c' {
  \stemBoth \slurBoth r8
  
  r [es () g] r
  r [d () f] r
  r [c () bes] r
  r [as () g] r
  
  r [f ( d ) es]
  [bes-| \scriptUpB bes'-| \scriptZero bes,-|] r
  r [es' () g] r
  r [d () f] r
  
  r [c () bes] r
  r [es () d] r
  r [es ( c ) f]
  r \scriptUpB [bes,-| \scriptZero bes,-|]
  
  r
  
  r [bes' () d] r
  r [es () g] r
  r [as, () c] r
  r [bes () bes,] r
  
  r [as' () g] r
  r [c () bes] r
  \Treble r [as' () g] r
  r [f ( d ) es]
  
  \Bass as,4 r8 bes
  [\scriptDownE es,-| \scriptZero es'-| \scriptDownE es,-|] 
  
  \scriptZero r
  
  r r16 es' es,8 r
  r \Treble r16 d' \beamingOff bes8 bes'
  c4 () bes
  as () g
  
  f4. () es8
  <bes4 d> r
  \Bass r8 r16 es es,8 r
  r r16 d' bes8 r
  
  r r16 c f,8 r
  r r16 c' f,8 r
  \beamingOn es16 es' r8 r f,
  [bes,-| \scriptUpB bes'-| \scriptZero bes,-|]
  
  r8
  
  r r16 d' bes8 r
  r bes16 g es8 r
  r r16 c' as8 r
  r f16 d \beamingOff bes8 g'
  
  \beamingOn as4. () g8
  c4. () bes8
  \Treble as'4. () g8
  f4. () es8
  
  \Bass as,16 f' r8 r bes,
  [\scriptDownE es,-| \scriptZero es'-| \scriptDownE es,-|]
  
  \Treble \scriptZero r8
  
  r [<es' bes'> <es bes'>] r
  r [<d bes'> <d bes'>] r
  r [<c' es-|> <c es (> <d ) f>]
  r [\scriptDownE <as-| c> \scriptZero <as ( c> <) g bes>]
  
  \Bass r [d ( es ) a,]
  bes4 r
  r8 [<es,, bes'> <es bes'>] r
  r [<d bes'> <d bes'>] r
  
  <c4 c'> <bes bes'>
  <es es'> <d d'>
  <es es'> <f f'>
  bes bes,8
  
  r8 
  
  r [<bes' bes'> <bes bes'>] r
  r [<es bes'> <es bes'>] r
  r [<a, f'> <a f'>] r
  r [<bes f'> <bes f'>] <g es'>
  
  <\context Voice=VC {\stemUp \slurUp \tieUp es'4 f ~
  f g ~
  g as ~
  as8 bes4.}
   \context Voice=VD {\stemDown as,2
  bes
  c
  d4 es}
  >
  
  \stemBoth as4 r8 bes
  [\scriptUpE es,-| \scriptZero bes-| es,-|]
  
  r8
  
  r [es''8 () g] r
  r [d () f] r
  r [c () bes] r
  r [as () g] r
  
  r [f ( d ) es]
  [bes-| \scriptUpB bes'-| \scriptZero bes,-|] r
  r [es' () ges] r
  r [des () f] r
  
  r [c () bes] r
  r [es () des] r
  es4 f
  r8 [bes, () bes,] r
  
  r [ges' () bes] r
  r [as () ces] r
  r [f, () des'] r
  r [ges, () des'] r 
  
  \stemDown r [ces, () ces'] r
  \stemBoth r [bes () ges'] r
  ces,4 des
  r8 [ges, () ges,] r
  
  r [ bes' () ges'] r
  r [bes, () f'] r
  r [bes, () es] r
  r [bes () d!] r 
  
  <\context Voice=VC {\stemUp \tieUp \slurUp
    r4 ces ~
    ces4. r8
    r4 as4 ~
    as4. r8}
   \context Voice=VD {\stemDown \tieDown \slurDown
    r8 ces,4. ~
    ces\fermata s8
    r8 bes4. ~
    bes\fermata s8}
   \context Voice=VE {\stemUp \slurDown
    s2 \property Voice.Rest \override #'extra-offset = #'(0 . -4.2) 
    r8 [es () ges\fermata] s
    s2 \property Voice.Rest \override #'extra-offset = #'(-0.4 . -4.0)
    r8 [d! () f\fermata] s}
  >
  
  \stemBoth \slurBoth \tieBoth r8 [es' () g] r
  r [d () f] r
  r [c () bes] r
  r [as () g] r
  
  r [f ( d ) es]
  [bes-| \scriptUpB bes'-| \scriptZero bes,-|] r
  r [as' () g] r
  r [c () bes] r
  
  \Treble r [as' () g] r
  r [f ( d ) es]
  \Bass as,4 r8 bes
  [\scriptDownE es,-| \scriptZero es'-| \scriptDownE es,-|]
  
  \Treble \scriptZero r8
  
  <es'4 g> r8 <es g>
  <d4 f> r8 <d f>
  <c4 es> <bes d>
  <as c> <g bes>
  
  \Bass <f as> d8 es
  [bes-| \scriptUpB bes'-| \scriptZero bes,-|] r
  \Treble <es'4 g> r8 <es g>
  <d4 f> r8 <d f>
  
  <c4 es> bes
  es d
  es \beamingOff f8 \Bass <f, c'>
  \beamingOn [bes,-| \scriptUpB bes'-| \scriptZero bes,-|]
  
  r8
  
  <d4 bes'> r8 <d bes'>
  <es4 bes'> r
  <as, f'> r8 <a f'>
  <bes4 f'> r
  
  as' bes
  c d
  es f
  g r
  
  <as,, as'> <bes8 g'-|> <bes f'-|>
  [\scriptUpE es-| \scriptZero bes-| es,-|]
  
  r8
  
  r [es'' () g] r
  r [d () f] r
  r [c () bes] r
  r [as () g] r
  
  r [f ( d ) es]
  [bes-| \scriptUpB bes'-| \scriptZero bes,-|] r
  r [es' () g] r
  r [d () f] r
  
  r [c () bes] r
  r [es () d] r
  r [es ( c ) f]
  r [\scriptUpB bes,-| \scriptZero bes,-|] r
  
  \slurUp r [<es' g (> <d fis> <es ) g>]
  r [<d f! (> <cis e> <d ) f>]
  r [<c! es! (> <bes ) d>] r
  r [<as c (> <g ) bes>] r
  
  r [f ( d ) es]
  [bes-| \scriptUpB bes'-| \scriptZero bes,-|] r
  r [<es' g (> <d fis> <es ) g>]
  r [<d f (> <cis e> <d ) f>]
  
  r [c! () bes] r
  r [<es g (> <d ) f>] r
  r [es ( c ) f]
  bes,4 bes,
  
  r8 [bes' () d] r
  r [es () g] r
  r [as, () c] r
  r [bes () bes,] r
  
  r [as' () g] r
  r [c () bes] r
  \Treble r [as' () g] r
  r [f ( d ) es]
  
  \Bass as,4 r8 bes
  [\scriptDownE es,-| \scriptZero es'-| \scriptDownE es,-|] r
  \scriptZero r [bes () bes'] r
  r [bes, () es] r
  
  r [as,, () as'] r
  r [bes, () bes'] r
  r [<as' c (> <g ) bes>] r
  r [<c es (> <bes ) d>] r
  
  r [d () es] r
  r [d, () es] r
  <as,4 as'> <bes bes'>
  <es, es'> r8
  }
  
  
\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "bright acoustic"
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >
  \context Staff = "down" <
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >
>
}
\paper {}
\midi {\tempo 4=140}
}

