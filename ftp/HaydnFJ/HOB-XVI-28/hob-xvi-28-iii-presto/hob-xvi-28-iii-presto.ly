\version "2.16.1"

#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Sonata II"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:28"
  meter             = "III - Presto"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate II, III - Presto"
  mutopiacomposer   = "HaydnFJ"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "C. F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/07/07-212"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key es\major \time 2/4 \partial 8}
staffUp = \change Staff = "up"
staffDown = \change Staff = "down"
phraseDown = \override PhrasingSlur   #'direction = #-1
Treble = \clef treble
Bass = \clef bass
beamingOn = \set autoBeaming = ##t
beamingOff = \set autoBeaming = ##f

VoiceI =  \relative c'' {
  \repeat volta 2 {
  bes8 (
  
   g) r r bes (
   f) r r bes (
   es) as,4 g8 (
   c) f,4 es8 (
  
   d) as'4 g8 (
   g) ( f) r bes (
   g) r r bes (
   f) r r bes (
  
   a) es'4 d8 (
   g,) c4 bes8 (
   g) g'4 a,8
   c[ ( bes)] r
  }

  \repeat volta 2 {
   d8 (
  
   f) r r as,! (
   g) r r bes (
   c) r r es, (
   d) r r bes (
  
   c) f4 es8 (
   d) as'4 g8 (
   f) c'4 bes8 (
   as) as'4 g8 (
  
  [ g) f ( as  d,)]
   f8[ ( es)] r
  }
  
  \repeat volta 2 {
  bes8
  
  es16 bes g r r8 g
  bes16 as f r r4
  r16 es' ( as  es') as,8 ( g)
  r16 c,16 ( f  c') f,8 ( es)
  
  r16 as,16 ( d  as') d,8 ( es)
  e ( f) r bes,
  es16 bes g r r8 g
  bes16 as f r r8 bes
  
  es16 a, es r r8 <bes' d>
  es16 a, es r r8 <bes' d>
  r g16 c g'8\noBeam <es, a>
  <d bes'>4 r8
  }
  
  \repeat volta 2 {
  d'16[ as!]
  
  f' d as r r8 as16 f
  g es r8 r bes'16 g
  c as f r r8 es16 c
  d bes r8 r4
  
  r16 c ( f  c') d,8 ( es)
  r16 es ( as  es') as,8 ( g)
  r16 c ( f  c') d,8 ( es)
  r16 as, ( d  as') fis8 ( g)
  
  r8 c,16 f as8\noBeam <as, d>
  <g es'>4 r8
  }
  
  \times 2/3 {bes'16 ( c bes}
  
   g8) r r \times 2/3 {bes16 ( c bes}
   f8) r r \times 2/3 {bes16 ( c bes}
  es8) ( as,) \slashedGrace bes as ( g)]
  c ( f,) \slashedGrace g f ( es)
  
  d8 <f as >4( <es g>8)
  <es g >( <d f>) r \times 2/3 {bes,16 ( c bes}
   g8) r r \times 2/3 {bes16 ( c bes}
   f8) r r \times 2/3 {bes16 ( c bes}
  
   a8) es'4 d8 (
   c) g'4 \tieDown f8 ~
   f[ es ( d) c-|]
   cis[ ( d)] r
  
  \repeat volta 2 {
   \times 2/3 {f'16 ( g f}
  
   as,!8) r r \times 2/3 {f'16 ( g f}
   g,8) r r \times 2/3 {c16 ( d c}
   es,8) r r \times 2/3 {c'16 ( d c}
   d,8) r r bes
  
  as as' ~ as16 g f es
  d8 bes' ~ bes16 as g f
  es8 c' ~ c16 bes as g
  f8 <f' as >4( <es g>8)
  
  r <as, f' >[( <g es'>) <f d'>-|]
  <g es'>4 r8
  }
  
   bes8 (
  
   g) r r bes (
   f)  r r bes (
   es) as,4 g8 (
   c) f,4 es8 (
  
   d) as'4 g8 (
   g) ( f) r bes (
   ges) r r bes (
   f) r r bes (
  
   a) es'4 des8 (
   c) ges'4 f8 (
  [ f) <c es >( <bes des> <a c>)]
  bes4 r8 bes (
  
   des) r r ges, (
   f) r r as (
   ces) r r as (
   bes) r r ges (
  
   es') r r <as, f' >(
  <bes ges'>) r r <bes des>
  <bes des >16( <as ces> <ges bes>4 <f as>8
   ges8) r r bes (
  
   bes') r r bes, ( 
   as') r r bes, (
   ges') r r bes, (
   f') r r
  
  <<{
    bes, ( es2) ~
    es4.\fermata es,8 (
     d'!2) ~
    d4.\fermata } \\
   {
    s8 r4 es, (
     a4.) s8
    r4 r8 as (
     c4.)}
  >>
   bes8 (
   
   g!) r r bes (
   f) r r bes (
   es) as,4 g8 (
   c) f,4 es8 (
  
   d) as'4 g8 (
   g) ( f) r bes, (
   c) f4 es8 (
   d) as'4 g8 (
  
   f) c'4 bes8 (
   as) as'4 \tieUp g8 ~
   g[ f ( as  d,)]
   f[ ( es)] r
  
  \repeat volta 2 {
  bes8
  
  es16 bes a bes c bes a bes
  f' bes, a bes c bes a bes
  es c bes as! as g fis g
  c as g f! f es d es
  
  d es f g as f g es
  <d f>4 r8 bes'
  es16 bes a bes c bes a bes
  f' bes, a bes c bes a bes
  
  a g' f es d f es d
  c es d c bes d c bes
  g c es g <d f>8\noBeam <es, a>
  <d bes'>4 r8
  }
  
  \repeat volta 2 {
  bes'8
  
  f'16 bes, a bes bes as g as
  g es d es f es d es
  c' f, e f f es d es
  d bes a bes c bes a bes
  
  r c f es d as' g f
  es bes' as g f c' bes as
  g 'g f es d c' bes as
  g f es d c bes as g
  
  f8 as16 ( f) es8-| d-|
  es4 r8
  }
  
   bes'8 (
  
   g) r r bes (
   f) r r bes (
   es) as,4 g8 (
   c) f,4 es8 (
  
   d) as'4 g8 (
   g) ( f) r bes (
   g) r r bes (
   f) r r bes (
  
   a) es'4 d8 (
   g,) c4 bes8 (
   g) g'4 a,8
  c ( bes) r bes (
  
  a  bes) r bes (
  a  bes) r bes (
   es) as,!4 g8 (
   c) f,4 es8 (
  
   d) <f as>4 \tieNeutral <es g>8 ~
  <es  g>( <d f>) r bes' (
  a  bes) r bes (
  a  bes) r bes (
  
   a) es'4 d8 (
   g,) c4 bes8 (
   g) <es' g>4 <a, c>8 ~
  <a c >( <bes d>) r d (
  
   f) r r as, (
   g) r r bes (
   c) r r es, (
   d) r r bes (
  
   c) f4 es8 (
   d) as'4 g8 (
   f) c'4 bes8 (
   as) as'4 g8 ~
  
   g[ f ( as  d,)]
  f ( es) r <f, d' >(
  <as f'>) r r <f  as>(
  <es g>) r r <g  bes>(
  
  <as c>) r r <c,  es>(
  <bes d>) r r bes (
   c) f4 es8 (
   d) as'4 g8 (
  
   f) <as c>4 <g  bes>8(
  <f as>) <as' c>4 <g bes>8 ~
  <g bes>[ <f as>-| <es g>-| <d f>-|]
  es4 r8
  \bar "|."
  }

VoiceII =  \relative c' {
  r8
  
  r  es[ ( g)] r
  r  d[ ( f)] r
  r  c[ ( bes)] r
  r  as[ ( g)] r
  
  r  f[ ( d  es)]
   bes[-|  bes'-|  bes,-|] r
  r  es'[ ( g)] r
  r  d[ ( f)] r
  
  r  c[ ( bes)] r
  r  es[ ( d)] r
  r  es[ ( c  f)]
  r   bes,[-|  bes,-|]
  
  r
  
  r  bes'[ ( d)] r
  r  es[ ( g)] r
  r  as,[ ( c)] r
  r  bes[ ( bes,)] r
  
  r  as'[ ( g)] r
  r  c[ ( bes)] r
  \Treble r  as'[ ( g)] r
  r  f[ ( d  es)]
  
  \Bass as,4 r8 bes
   es,[-|  es'-|  es,-|] 
  
   r
  
  r r16 es' es,8 r
  r \Treble r16 d' bes8\noBeam bes'
  c4 ( bes)
  as ( g)
  
  f4. ( es8)
  <bes d>4 r
  \Bass r8 r16 es es,8 r
  r r16 d' bes8 r
  
  r r16 c f,8 r
  r r16 c' f,8 r
  es16 es' r8 r f,
   bes,[-|  bes'-|  bes,-|]
  
  r8
  
  r r16 d' bes8 r
  r bes16 g es8 r
  r r16 c' as8 r
  r f16 d bes8\noBeam g'
  
  as4. ( g8)
  c4. ( bes8)
  \Treble as'4. ( g8)
  f4. ( es8)
  
  \Bass as,16 f' r8 r bes,
   es,[-|  es'-|  es,-|]
  
  \Treble  r8
  
  r <es' bes'>[ <es bes'>] r
  r <d bes'>[ <d bes'>] r
  r <c' es>[-| <c es >( <d f>)]
  r <as c>[-|  <as  c>( <g bes>)]
  
  \Bass r  d[ ( es  a,)]
  bes4 r
  r8 <es,, bes'>[ <es bes'>] r
  r <d bes'>[ <d bes'>] r
  
  <c c'>4 <bes bes'>
  <es es'> <d d'>
  <es es'> <f f'>
  bes bes,8
  
  r8 
  
  r <bes' bes'>[ <bes bes'>] r
  r <es bes'>[ <es bes'>] r
  r <a, f'>[ <a f'>] r
  r <bes f'>[ <bes f'>] <g es'>
  
  <<{es'4 f ~
  f g ~
  g as ~
  as8 bes4.} \\
  {as,2
  bes
  c
  d4 es}
  >>
  
  as4 r8 bes
   es,[-|  bes-| es,-|]
  
  r8
  
  r  es''8[ ( g)] r
  r  d[ ( f)] r
  r  c[ ( bes)] r
  r  as[ ( g)] r
  
  r  f[ ( d  es)]
   bes[-|  bes'-|  bes,-|] r
  r  es'[ ( ges)] r
  r  des[ ( f)] r
  
  r  c[ ( bes)] r
  r  es[ ( des)] r
  es4 f
  r8  bes,[ ( bes,)] r
  
  r  ges'[ ( bes)] r
  r  as[ ( ces)] r
  r  f,[ ( des')] r
  r  ges,[ ( des')] r 
  
  r  ces,[ ( ces')] r
  r  bes[ ( ges')] r
  ces,4 des
  r8  ges,[ ( ges,)] r
  
  r  bes'[ ( ges')] r
  r  bes,[ ( f')] r
  r  bes,[ ( es)] r
  r  bes[ ( d!)] r 
  
  <<{
    r4 ces ~
    ces4. r8
    r4 as4 ~
    as4. r8} \\
   {
    r8 ces,4. ~
    ces\fermata s8
    r8 bes4. ~
    bes\fermata s8} \\
   {
    s2 
    r8  es[ ( ges)\fermata] s
    s2
    r8  d![ ( f)\fermata] s}
  >>
  
  r8  es'[ ( g)] r
  r  d[ ( f)] r
  r  c[ ( bes)] r
  r  as[ ( g)] r
  
  r  f[ ( d  es)]
   bes[-|  bes'-|  bes,-|] r
  r  as'[ ( g)] r
  r  c[ ( bes)] r
  
  \Treble r  as'[ ( g)] r
  r  f[ ( d  es)]
  \Bass as,4 r8 bes
   es,[-|  es'-|  es,-|]
  
  \Treble  r8
  
  <es' g>4 r8 <es g>
  <d f>4 r8 <d f>
  <c es>4 <bes d>
  <as c> <g bes>
  
  \Bass <f as> d8 es
   bes[-|  bes'-|  bes,-|] r
  \Treble <es' g>4 r8 <es g>
  <d f>4 r8 <d f>
  
  <c es>4 bes
  es d
  es f8\noBeam \Bass <f, c'>
  bes,[-|  bes'-|  bes,-|]
  
  r8
  
  <d bes'>4 r8 <d bes'>
  <es bes'>4 r
  <as, f'> r8 <a f'>
  <bes f'>4 r
  
  as' bes
  c d
  es f
  g r
  
  <as,, as'> <bes g'>8-| <bes f'>-|
   es[-|  bes-| es,-|]
  
  r8
  
  r  es''[ ( g)] r
  r  d[ ( f)] r
  r  c[ ( bes)] r
  r  as[ ( g)] r
  
  r  f[ ( d  es)]
   bes[-|  bes'-|  bes,-|] r
  r  es'[ ( g)] r
  r  d[ ( f)] r
  
  r  c[ ( bes)] r
  r  es[ ( d)] r
  r  es[ ( c  f)]
  r  bes,[-|  bes,-|] r
  
  \slurUp r <es' g >[( <d fis> <es g>)]
  r <d f! >[( <cis e> <d f>)]
  r <c! es! >[( <bes d>)] r
  r <as c >[( <g bes>)] r
  
  r  f[ ( d  es)]
   bes[-|  bes'-|  bes,-|] r
  r <es' g >[( <d fis> <es g>)]
  r <d f >[( <cis e> <d f>)]
  
  r  c![ ( bes)] r
  r <es g >[( <d f>)] r
  r  es[ ( c  f)]
  bes,4 bes,
  
  r8  bes'[ ( d)] r
  r  es[ ( g)] r
  r  as,[ ( c)] r
  r  bes[ ( bes,)] r
  
  r  as'[ ( g)] r
  r  c[ ( bes)] r
  \Treble r  as'[ ( g)] r
  r  f[ ( d  es)]
  
  \Bass as,4 r8 bes
   es,[-|  es'-|  es,-|] r
   r  bes[ ( bes')] r
  r  bes,[ ( es)] r
  
  r  as,,[ ( as')] r
  r  bes,[ ( bes')] r
  r <as' c >[( <g bes>)] r
  r <c es >[( <bes d>)] r
  
  r  d[ ( es)] r
  r  d,[ ( es)] r
  <as, as'>4 <bes bes'>
  <es, es'> r8
  }
  
  
\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "bright acoustic"
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VcI \VoiceI
  >>
  \context Staff = "down" <<
    \Global \clef bass
    \context Voice=VcII \VoiceII
  >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 140
    }


}

