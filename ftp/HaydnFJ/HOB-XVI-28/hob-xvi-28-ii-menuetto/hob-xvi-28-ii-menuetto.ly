\version "2.16.1"

#(set-global-staff-size 16)
\include "nederlands.ly"
\header {
  title             = "Sonata II"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:28"
  meter             = "II - Menuetto"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate II, II - Menuetto"
  mutopiacomposer   = "HaydnFJ"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "C. F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"

 footer = "Mutopia-2013/07/07-211"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

Global =  {\key es\major \time 3/4 \partial 16*5}
Treble = \clef treble
Bass = \clef bass
TupNrOff = \override TupletNumber #'stencil = ##f

vOne =  \relative c'' {
  \repeat volta 2 {
  es16 es8.\turn g16
  
  bes4-| r8. es,16 es8.\turn g16
  c,4-| r8. f16 f8.\turn as16
  \times 2/3 { c8[ bes as]} \times 2/3 { g[ f es]} \times 2/3 { d[ c bes]}
  \TupNrOff as4 ( g8.)\noBeam g'16 g8.\turn a16
  
  bes4 r8. f16 f8.\turn g16
  f8. ( e16 es4.  d8)
  \times 2/3 { c[ ( es  g)]} bes,4 a\trill
  bes2. ~
  
  \times 2/3 { bes8[ g' f]} \times 2/3 { es[ d c]} \times 2/3 { bes[ a bes]}
  bes2. ~
  \times 2/3{ bes8[ c d]} \times 2/3 { es[ f g]} \times 2/3 { a[ bes c]} 
  bes4 r8.
  }
  
  \repeat volta 2 {
  bes,16 bes8.\turn c16
  
  des4 ~ \times 2/3 { des8[ c bes]} \times 2/3 { as![ g f]}
  e4 ( f8.) as16 as8.\turn bes16
  ces4 ~ \times 2/3 { ces8[ bes as]} \times 2/3 { ges[ f es]}
  d4 ( es8.)\noBeam es16 es8.\turn g!16
  
  \times 2/3 { c,8[ d es]} \times 2/3 { f[ g as]} \times 2/3 { d,[ es f]}
  \times 2/3 { es[ f g]} \times 2/3 { as[ bes c]} \times 2/3 { f,[ g as]}
  \times 2/3 { g[ as bes]} \times 2/3 { c[ d es]} \times 2/3 { f[ g as]}
  <es g >4( <d f>8.\noBeam es16) es8.\turn g16
  
  bes4-| r8. es,16 es8.\turn g16
  c,4-| r8. f16 f8.\turn as16
  \times 2/3 { c8[ bes as]} \times 2/3 { g[ f es]} \times 2/3 { d[ c bes]}
  as4 ( g8.)\noBeam c16 c8.\turn d16
  
  es4 r8. bes16 bes8.\turn c16
  bes8. a16 as4. g8
  \times 2/3 { f[ as c]} es,4 d\trill
  es2. ~
  
  \times 2/3 { es8[ c' bes]} \times 2/3 { as[ g f]} \times 2/3 { es[ d f]}
  \times 2/3 { g[ as bes]} \times 2/3 { c[ d es]} \times 2/3 { f[ g as]}
  \times 2/3 { bes[ c bes]} \times 2/3 { as[ g f]} \times 2/3 { es[ d f]}
  es4 r8.
  }
  
  \repeat volta 2 {
  \set Timing.measurePosition = #(ly:make-moment -3 8)
  \key es\minor \mark "Trio." bes8[( ges  es)]
  
  \slurNeutral d4 ( es8) bes' ( ges  es)
  ces4 ( bes8) bes' ( as  f)
  ges4 ( g  as8) es' (
  des bes ces4 c
  
  <<{\voiceOne des2) ~ des8 des} \new Voice {\voiceTwo f,2( ges4)}>>
  \oneVoice ces8 as bes ges fes des
  es as ces as ges f!
  ges4 r8
  }
  
  \repeat volta 2 {
  des'8[ ( bes  ges)]
  
  f4 ( ges8) des' ( bes  ges)
  fes4 ( es8) es' ( ces  as)
  g4 ( as8) es' ( ces  bes)
  a4 ( bes8) ces ( as f
  
   d8) r r4 r
  r8  bes'[ ( d, f  es) bes'] ~
  bes as4 ges f8
  f8[ ( es)] r
  }
  }

vTwo =  \relative c' {
  r16 r4 

  r4 <es g> r
  r <as, c> r
  r r <bes >4
  es es, \Treble \voiceOne bes'' ~
  
  bes bes2 ~
  bes4 a bes
  g \Bass d ( c) 
  \Treble \oneVoice \times 2/3 { bes8[ c d]} \times 2/3 { es[ f g]} \times 2/3 { e[ f g]}
  
  \TupNrOff f4 r f
  \times 2/3 { g8[ f es]} \times 2/3 { d[ c bes]} \times 2/3 { g'[ f e]}
  f4 r \Bass <f, es'!>
  <bes d> bes,8.
  
  r16 r4
  
  r <bes' des> <bes des>
  <bes des >( <as c>) r
  r <as ces> <as ces>
  <as ces >( <g! bes>) r
  
  as r bes
  c r d
  es c as
  bes bes, r
  
  r <es' g> r
  r <as, c> r
  r r <bes d>
  es es, \voiceOne es'4 ~
  
  es4 es2 ~
  es4 d es
  c g ( f)
  \oneVoice \times 2/3 { es8[ f g]} \times 2/3 { as[ bes c]} \times 2/3 { a[ bes c]}
  
  bes4 r bes
  \times 2/3 { es,8[ f g]} \times 2/3 { as[ bes c]} \Treble \times 2/3 { d[ es f]}
  g4 r <bes, as'>
  <es g> \Bass es,8.
  
  \key es\minor r8 r4
  
  r8 <f as >( <ges bes>4) r
  r8 <es ges >( <d f>4) r
  \Treble r8  es'[ ( des! bes]  ces4)
  r r8  as'[ ( ges  es)]
  
  \Bass r  des[ ( ces as]  bes4)
  \voiceOne des2 r4
  \oneVoice ces4 r <des, ces'>
  <ges bes> ges,8
  
  r8 r4
  
  r8 <as' ces >( <bes des>4) r
  r8 <bes des >(  ces4) r
  r8 <bes des >(  ces4) r
  r8 <es ges >( <d f>4) r
  
  r8  ces[ ( as f d ces]
  \voiceTwo  bes2.) ~
  bes
  \oneVoice es4 es,8
  }
  
vThree =  \relative c' {
  s16 s4
  
  s2. 
  s 
  s
  s2 \voiceTwo es4
  
  d2 d4
  c2 bes4
  es f,2
  s2.
  
  s s s s
  
  s s s s
  
  s s s s
  
  s 
  s 
  s 
  s2 as4
  
  g2 g4
  f2 es4
  as4 bes,2
  s2.
  
  s s s s4 s8.
  
  s4.
  
  s2. s s s
  
  s2.
  f'4 ges bes
  s2.
  s4.
  
  s4.
  
  s2.
  s
  s
  s
  
  s
  \voiceOne r4 as ges
  f es d_ \markup{\italic "Men. d. C."}
  s4.
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
\midi {}
}

