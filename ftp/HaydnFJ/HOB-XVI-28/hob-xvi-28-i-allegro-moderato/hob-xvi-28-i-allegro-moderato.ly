\version "2.16.1"

#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Sonata II"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:28"
  meter             = "I - Allegro moderato"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate II, I - Allegro moderato"
  mutopiacomposer   = "HaydnFJ"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "C. F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/07/07-210"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

flat = \markup {\small \flat}

Global =  {\key es\major \time 3/4}
staffUp = \change Staff = "up"
staffDown = \change Staff = "down"

Treble = \clef treble
Bass = \clef bass

vOne =  \relative c'' {
  \repeat volta 2 {
  bes4 ~ bes16 g as f g es f d
  es8-| bes-| g-| bes-| es-|  g-|
   bes4 ~ bes16 g as f g es f d
  es8 <g es'>[ <g es'> <g es'> <g es'> <g es'>]

  \voiceOne es'2 ( d4)
  \oneVoice r8 <des bes'>[ <des bes'> <des bes'> <des bes'> <des bes'>]
  <des bes' >4( <c as'>8)\noBeam bes32 ( g'16.) as,32 ( f'16.) f,32 ( d'!16.)
  g,32 ( es'16.) r8 r4 r

  bes4 ~ bes16 g as f g es f d
  es8-|  g-|  bes-|  es-|  g16 ( es) es8\trill
  as16 ( es) es8\trill g16 ( es) es8\trill c'16 ( es,) es8\trill
  bes'4 r8 c16 ( bes as g f  es)

  es4 ( d8) g16 ( f es d c  bes)
  bes4 ( as8) es'16 ( d c bes as  g)
  g4 ( f8) c'16 ( bes as g f  es)
  d8. ( es32  f) es4 r

  g'4 ~ g16 b c as g f es d
  c b d c es d f es g8 r
  f4 ~ f16 a bes g f es d c
  bes a c bes d c es d f8 r

  b,16 ( c des d es e f fis  g8)\turn g16. a32 (
  [ bes8)-| r16 a (] g8)-|[ r16 f (] es8)-|[ r16 d]
  d4\trill ( c4) r
  <d f>4. <es g >16( <c es>) <bes d>8-| <c es\turn>

  <d f> bes'-| r <f a> r <es g>-|
  <d f>4. <es g >16( <c es>)  <bes d>8-|  <c es\turn>
  <d f>-| <bes' d>-| r <g bes>-| r <es g>-|
  \slashedGrace d8 f2 e16 ( f g  f)

  f2 e16 ( f g  f)
  bes2 e,16 ( f g  f)
  f2 fis16 ( g a  g)
  g2 a16 ( bes c  bes)

  bes4 ~ bes8 d16 ( c bes a g  f)
  f8\turn g16 ( es) d4 c\trill
   bes8-|  bes'-| a\prall ( g) f\prall ( e)
  \tempo "Adagio."
   e2 ~ e16 ( f g  f)

  f2\fermata \tempo "Allegro." e16( f) g ( f)
  d ( es) d ( es) c ( d) es ( d) b ( c) d ( c)
  c2 c16 ( d es  d)
  d2 d16 ( es f  es)

  es2 \times 2/3 { f,16[ ( a c]} \times 2/3 { es[ f a]}
   bes4) ~ bes16 a g f es d c bes
  b ( c es  c) bes4 a\trill
  bes16 bes bes8\trill es16 ( bes) bes8\trill d16 ( bes) bes8\trill

  g'16 ( bes,) bes8\trill bes'4 ~ \times 4/6 { bes16[ a g f es d]}
  \times 4/6 { c[ g' f es d c]} \times 4/6 { d[ f es d c bes]} \times 4/6 { a[ g f es d c]}
  bes4.  a8[ ( <c es>) <a c>]
  <bes d>4. <a  c>8[( <es' g>) <c es>]

  <d f>4. \slashedGrace f8 f'[-| \slashedGrace g, g'-| \slashedGrace a, a'-|]
  \slashedGrace bes, bes'-| \slashedGrace c, c'-| \slashedGrace d, d'4-| r
  r8  g,,,[ ( es'  g)]  c,8.[ ( a16)]
  a4 ( bes) r
  }

  f''4 ~ f16 d es c d bes c a
   bes8-|  f-| d-| f-|  bes-|  d-|
   \tieNeutral <f as!>4 ~ <f as>8 <es g>-| <d f>-| <c es>-|
  <bes d>-| c32 ( es16.)  d32[ ( f16.) es32 ( g16.)]  f32[ ( as16.) g32 ( bes16.)]

  \slashedGrace as8 c4 ( c8) bes4 as8
  g4 ~ g16 es f d es c d b
   c8-|  g-|  es-|  g-|  c-|  es-|
   g4 ~ g16 es f d es c d b

  c8 <g es'>[ <g es'> <g es'> <g es'> <g es'>]
  \voiceOne es'2 ( d4)
  \oneVoice r8 <d d'>[ <d d'> <d d'> <d d'> <d d'>]
  \voiceOne d'2 ( c4)

  c2 ( bes4)
  bes2 ( as!4)
  as2 ( g4)
  g2 ( fis4)

  g4 ~ g8 \oneVoice  g,16[ g']  g,[ g' g, g']
  \voiceOne fis2.
  g2\fermata \oneVoice fis16 ( g) as ( g)
  e ( f!) g ( f) d ( es) f ( es) c ( d) es ( d)

  d2 d16 ( es f  es)
  es2 es16 ( f g  f)
  f2 f,32 ( as b d \times 2/3 { f16[ as b]}
   c4) ~ c16 bes! as! g f es d c

  es ( d f  d) c4 b\trill
  \voiceOne as'16 ( des,) des8\trill f16 ( as,) as8\trill d16 ( f,) \once \override Script #'script-priority = #-100 f8^\trill^\flat
  \oneVoice as16 des, des8\trill f16 ( as,) as8\trill des8-| c-|
  \times 2/3 { b16[ a g]} \times 2/3 { d'![ c b]} \times 2/3 { f'[ es! d]} \times 2/3 { as'![ g f]} \times 2/3 { d'[ c b]} \times 2/3 { as[ g f]}

  \times 4/6 { es[ g f es d c]} \times 4/6 { as'[ c bes as g f]} \times 4/6 { es[ d c b c d]}
  c4.  b8[ ( <d f>) <b d>]
  <c es>4. <b  d>8[( <f' as>) <d f>]
  <es g>4. c'32 ( as16.)  bes32[ ( g16.) as32 ( f16.)]

  <e g>4. des'32 ( bes16.)  c32[ ( as16.) bes32 ( g16.)]
   as32[ ( f16.) g32 ( es16.)]  f32[ ( d16.) es32 ( c16.)]  d32[ ( bes16.) c32 ( a16.)]
  bes8 \slashedGrace as! as'![-| \slashedGrace bes, bes'-| \slashedGrace d, d'-| \slashedGrace
   f, f'-| \slashedGrace g, g'-|] \slashedGrace as,8
  as'2. ~

  as16 g bes as c bes as g f es d c
  bes4 ~ bes16 g as f g es f d
  es8-| bes-| g-| bes-| es-| g-|
  bes4 ~ bes16 g as f g es f d

  es8  g16[ es' g, es' g, es' g, es' g, es']
  \voiceOne es2 ( d4)
  \oneVoice r8 des16 bes' des, bes' des, bes' des, bes' des, bes'
  <des, bes' >4( <c as'>8) <bes g'>-| <as f'>-| <f d'>-|

  <g es'>4 r r
  r8 <as bes>[ <as bes> <as bes> <as bes> <as bes>]
  \voiceOne bes2.
  \oneVoice r8 <bes g'>[ <bes g'> <bes g'> <bes g'> <bes g'>]

  <bes g' >2( <as f'>8.) <c as'>16
  <c as' >2( <bes g'>4)
  f'16 ( e g f as g bes as  c8.) es,16
  es2 ( d8  des)

  c4 ~ c16 e f des c bes as g
  f e g f as g bes as c8 r
  bes4 ~ bes16 d es c bes as g f
  es d f es g f as g bes8 r

  e,16 f ges g as a bes b c8.\turn d16 (
  es!8)[-| r16 d]   c8[-| r16 bes(] as8)[ r16 g]
  g4\trill ( f) r
  <g bes>4. <as  c>16( <f as>) <es g>8-| <f as\turn>

  <g bes>8-|  es'-|  r <c es>-| r  <as c>-|
   <g bes>4. <as  c>16( <f as>) <es g>8-| <f as\turn>
  <g bes>8-| <es' g> r <c es>-| r  <as c>-|
   \slashedGrace g8 bes2 a16 ( bes c  bes)

  bes2 a16 ( bes c  bes)
  es2 a,16 ( bes c  bes)
  bes2 b16 ( c d  c)
  c2 d16 ( es f  es)

  es4 ~ es8 g16 ( f es d c  bes)
  bes8\turn c16 ( as) g4 f\trill
   es8-|  es'-| d\prall ( c) bes\prall ( a)
  \tempo "Adagio."
  a2 ~ a16 ( bes c  bes)

  bes2\fermata \tempo "Allegro." a16( bes) c ( bes)
  g ( as!) bes ( as) f ( g) as ( g) e ( f) g ( f)
  f2 f16 ( g as  g)
  g2 g16 ( as bes  as)

  as2 bes,32 ( d f as \times 2/3 { d16[ f as]}
   c8.) bes16 as g f es d c bes as
  \voiceOne g8 s s2
  \oneVoice e16 ( f as  f) es4 d\trill

  es16 es es8\trill as16 ( es) es8\trill g16 ( es) es8\trill
  c'16 ( es,) es8\trill \tieUp es'4 ~ \times 4/6 { es16[ d c bes as g]}
  \times 4/6 { f[ c' bes as g f]} \times 4/6 { g[ bes as g f es]} \times 4/6 { d[ c \staffDown \voiceOne bes as g f]}
  es4. \staffUp \oneVoice  d'8[ ( <f as>) <d f>]

  <es g>4. <d  f>8[( <as' c>) <f as>]
  <g bes>4. \slashedGrace bes,8 bes'[-| \slashedGrace c, c'-|
  \slashedGrace d, d'-|] \slashedGrace es, es'-| \slashedGrace f, f'-| \slashedGrace g, g'4-| r
  r8  c,,[ ( as'  c)]  f,8.[ ( d16)]

  d4 ( es) r
  \bar "|."
  }

vTwo =  \relative c, {
  r8  es[-| g-| bes-|  es-|  as-|]
  g4 r r
   r8  es,[-| g-| bes-|  es-|  as-|]
   g4 r r

  \staffUp \voiceTwo f'2.
  \staffDown \voiceOne bes
  \Bass \oneVoice r8  as,[ as as bes bes]
  es,4 es, r

  r8  es[-| g-| bes-|  es-|  as-|]
  g4 r r
  \Treble c'4 bes as
  r4 es' r

  r8 <f, as>[ <f as>] r r4
  \Bass r8 <c es>[ <c es>] r r4
  r8 <as c>[ <as c>] r r4
  <bes, as'>4 <es g> r

  r8 <b' d >( <c es>4) r
  R2.
  r8 <a c >( <bes! d>4) r
  r r r8 \Treble <d  f>8(

  <es g>4) r r
  <es g> r r8. \voiceOne bes'16
  bes4 a \oneVoice r
  r8 \Bass bes,,, ( bes'4) r

   \Treble bes''8-| r bes-| r bes-| r
  r \Bass bes,,, ( bes'4) r
  \Treble bes''8-| r bes-| r bes-| r
   r <bes d>[ <bes d> <bes d> <bes d> <bes d>]

  r <a c>[ <a c> <a c> <a c> <a c>]
  r <g bes>[ <g bes> <g bes> <g bes> <g bes>]
  r <f a>[ <f a> <f a> <f bes> <f bes>]
  r <es bes'>[ <es bes'> <es bes'> <es c'> <es c'>]

  r <d f>[ <d f> <d f> <d bes'> <d bes'>]
  <es bes'> <es bes'> <f bes> <f bes> <f a> <f a>
  \voiceOne g2 bes4 ~
  bes2 a4 ~

  a2 s4
  s2.
  \Bass \oneVoice r8 <f, a es'>[ <f a es'> <f a es'>] r4
  r8 <f bes d>[ <f bes d> <f bes d>] r4

  r8 <f a c>[ <f a c> <f a c>] r4
  r8 d ( bes'4) r
  \voiceOne r8 es d4 c
  \oneVoice bes \Treble g' f

  es \voiceOne r <bes' d>
  \oneVoice <es, g>-| f-| \Bass f,-|
  r8 bes,, ( bes'4) r
  r8 bes, ( bes'4) r

  r8  bes,[ ( bes')]  d'[-| es-| c-|]
  d-| a-| bes4 r
  es,, r <f es'>
  \voiceOne es' ( d) \oneVoice r

%rep volta
  r8  bes[-|  d-|  f-|  bes-|  es-|]
   d4 r r
  \Treble \voiceOne r8 d es4 f8 g
  as2.

  as4 g f
  es8 \oneVoice \Bass  c,[-|  es-|  g-| c-| f-|]
  es4 r r
  r8  c,[-|  es-|  g-| c-| f-|]

  es4 r r
  \staffUp \voiceTwo fis2.
  s
  es'

  d
  c
  bes
  as

  g4 ~ g8 s4.
  as2.
  g2\fermata s4
  s2.

  \staffDown \oneVoice \Bass r8 <g, b d>[ <g b d> <g b d>] r4
  r8 <g c es>[ <g c es> <g c es>] r4
  r8 <g b d>[ <g b d> <g b d>] r4
  r8 es ( c'4) r

  \voiceOne r8 f es4 d
  \oneVoice <f,, as des f>2. ~
  <f as des f>
  <g d'! f>2 b4

  c-|  f,-| g-|
  r8 c, ( c'4) r
  r8 c, ( c'4) r
  r8 c, ( c'4) r

  r8 c, ( c'4) r
  <f, f'>8 <es! es'!> <d d'> <c c'> <bes bes'> <a a'>
  <bes bes'>2.
  <bes' d f>

  <bes d f as>
  r8  es,[-| g-|  bes-|  es-|  as-|]
   g4 r r
  r8  es,[-| g-|  bes-|  es-|  as-|]

   g4 r r
  \staffUp \voiceTwo f'2.
  \staffDown \voiceOne bes2.
  \Bass \oneVoice r8 as,,16 as' as, as' as, as' bes, bes' bes, bes'

  es,,8 \Treble <es'' g>[ <es g> <es g> <es g> <es g>]
  \voiceOne f2.
  \staffUp \voiceTwo as2 ( g4)
  \staffDown \oneVoice <es  des'>2( <e c'>4)

  r8 <f c'>[ <f c'> <f c'> <f c'> <f c'>]
  r <d f>[ <d f> <d f> <es g> <es g>]
  <as, c f>2 \slurDown \tieUp <a  f'>4( ~
  <bes f'>) bes' r

  r8 <e,  g>( <f as>4) r
  R2.
  r8 <d  f>( <es g>4) r
  \slurNeutral r r r8 \Bass <g, bes >(

  <as c>4) r r
  <as c> r r8. \voiceOne es'16
  \slurUp es4 ( d) \oneVoice r
  r8 es,, ( es'4) r

  es'8-| r es-| r es-| r
  r es,, ( es'4) r
  \Treble es'8-| r es-| r es-| r
  r8 <es g>[ <es g> <es g> <es g> <es g>]

  r <d f>[ <d f> <d f> <d f> <d f>]
  r <c es>[ <c es> <c es> <c es> <c es>]
  r <bes d>[ <bes d> <bes d> <bes es> <bes es>]
  r <as es'>[ <as es'> <as es'> <as f'> <as f'>]

  \Bass r <g bes>[ <g bes> <g bes> <g es'> <g es'>]
  <as es'> <as es'> <bes es> <bes es> <bes d> <bes d>
  \voiceOne c2 es4 ~
  es2 d4 ~

  d2 s4
  s2.
  \oneVoice r8 <bes, d as'>[ <bes d as'> <bes d as'>] r4
  r8 <bes es g>[ <bes es g> <bes es g>] r4

  r8 <bes d f>[ <bes d f> <bes d f>] s4
  r4 r r8 d'-|
  \staffUp \voiceTwo es8[ \times 2/3 {es32 ( g bes]} \times 2/3 { d[ es g]} <bes, bes'>4) r
  \staffDown \voiceOne r8 as, g4 f

  \oneVoice es c' bes
  as \voiceOne r <es' g>
  \oneVoice <as, c>-| bes-| \voiceOne bes,-|
   r8 es, ( es'4) r

  \oneVoice r8 es, ( es'4) r
  r8 es, ( es') g-| as-| f-|
  g-|  d-|  es4 r
  as, r <bes as'>

  \voiceOne as'4 ( g) r
  }

vThree =  \relative c'' {
  s2. s s s

  \Treble r8 <as bes>[ <as bes> <as bes> <as bes> <as bes>]
  \voiceTwo as2 ( g4)
  s2. s

  s s s
  g2 s4

  s2. s s s

  s s s s

  s
  s2 s8. e16
  f2 s4
  s2.

  s s s s

  s s s s

  s
  s
  g2.
  f ~

  f2\fermata s4
  s2.
  s
  s

  s
  s
  es,4 f f
  s2.

  s4 d'2
  s2.
  s
  s

  s
  s
  s
  bes,2 s4

  s2.
  s
  bes'2.
  bes

  bes 2 b4
  c8 s s2
  s2.
  s

  s
  \Treble r8 <a' c>[ <a c> <a c> <a c> <a c>]
  <a  c>2( <g bes>4)
  r8 <g' bes>[ <g bes> <g bes> a a]

  r <fis a>[ <fis a> <fis a> <fis a> <fis a>]
  r <e g>[ <e g> <e g> f f]
  r <d f>[ <d f> <d f> es es]
  r <c es>[ <c es> <c es> <c es> <c es>]

  <c es >4( <b d>) r
  r8 c16 es c es c es c es c es
  <c es >4( <b d\fermata>) s
  s2.

  s s s s

  f,4 g2
  s2.
  s
  s

  s s s s

  s s s s

  s s s s

  s
  \Treble \oneVoice r8 as'16 bes as bes as bes as bes as bes
  \voiceTwo as2 ( g4)
  s2.

  s
  es2 ( d4)
  \oneVoice r8 <es des'>[ <es des'> <es des'> <es des'> <es des'>]
  s2.

  s s s s

  s s s s

  s
  s2 s8. \voiceTwo a,16
  bes2 s4
  s2.

  s s s s

  s s s s

  s
  s
  c2.
  bes ~

  bes2\fermata s4
  s2.
  s
  s

  s
  s
  s
  as,4 bes bes

  s2.
  s4 g'2
  s2.
  s

  s
  s
  s
  s

  es2 s4
  }

\score { {
\context PianoStaff <<
  \set PianoStaff.midiInstrument = "bright acoustic"
  \context Staff = "up" <<
    \Global \clef treble
    \context Voice=VoiceI \vOne
  >>
  \context Staff = "down" <<
    \Global \clef bass
    \context Voice=VoiceI \vTwo
    \context Voice=VoiceII \vThree
  >>
>>
}
\layout {}

  \midi {
    \tempo 4 = 108
    }


}

