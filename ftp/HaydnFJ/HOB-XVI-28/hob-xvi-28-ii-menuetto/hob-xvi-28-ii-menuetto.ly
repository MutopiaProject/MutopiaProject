%\version "1.4.9.uu1"
\include "paper16.ly"
\include "nederlands.ly"
\header {
  title             = "Sonata II"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:28"
  meter             = "II - Menuetto"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate II"
  mutopiacomposer   = "HaydnFJ"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "C.F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Mar/15"

  tagline           = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer            = "Mutopia-2002/03/15-211"
}

Global = \notes {\key es\major \time 3/4 \partial 16*5}
staffUp = \translator Staff = "up"
staffDown = \translator Staff = "down"
beamingOn = \property Voice.noAutoBeaming = ##f
beamingOff = \property Voice.noAutoBeaming = ##t
Treble = \clef treble
Bass = \clef bass
TupNrOff = \property Voice.TupletBracket \override #'tuplet-number-visibility = ##f 

vOne = \notes \relative c'' {
  \repeat volta 2 {
  \stemBoth \slurBoth \tieBoth es16 es8.\turn g16
  
  bes4-| r8. es,16 es8.\turn g16
  c,4-| r8. f16 f8.\turn as16
  \times 2/3 {[c8 bes as]} \times 2/3 {[g f es]} \times 2/3 {[d c bes]}
  \TupNrOff \beamingOff as4 () g8. g'16 \beamingOn g8.\turn a16
  
  bes4 r8. f16 f8.\turn g16
  f8. ( e16 es4. ) d8
  \times 2/3 {[c ( es ) g]} bes,4 a\trill
  bes2. ~
  
  \times 2/3 {[bes8 g' f]} \times 2/3 {[es d c]} \times 2/3 {[bes a bes]}
  bes2. ~
  \times 2/3{[bes8 c d]} \times 2/3 {[es f g]} \times 2/3 {[a bes c]} 
  \partial 16*7 bes4 r8.
  }
  
  \repeat volta 2 {
  \partial 16*5 bes,16 bes8.\turn c16
  
  des4 ~ \times 2/3 {[des8 c bes]} \times 2/3 {[as! g f]}
  e4 () f8. as16 as8.\turn bes16
  ces4 ~ \times 2/3 {[ces8 bes as]} \times 2/3 {[ges f es]}
  \beamingOff d4 () es8. es16 \beamingOn es8.\turn g!16
  
  \times 2/3 {[c,8 d es]} \times 2/3 {[f g as]} \times 2/3 {[d, es f]}
  \times 2/3 {[es f g]} \times 2/3 {[as bes c]} \times 2/3 {[f, g as]}
  \times 2/3 {[g as bes]} \times 2/3 {[c d es]} \times 2/3 {[f g as]}
  \beamingOff <es4 g (> <d8. ) f> es16 \beamingOn es8.\turn g16
  
  bes4-| r8. es,16 es8.\turn g16
  c,4-| r8. f16 f8.\turn as16
  \times 2/3 {[c8 bes as]} \times 2/3 {[g f es]} \times 2/3 {[d c bes]}
  as4 () g8. c16 c8.\turn d16
  
  es4 r8. bes16 bes8.\turn c16
  bes8. a16 as4. g8
  \times 2/3 {[f as c]} es,4 d\trill
  \tieDown es2. ~
  
  \times 2/3 {[es8 c' bes]} \times 2/3 {[as g f]} \times 2/3 {[es d f]}
  \times 2/3 {[g as bes]} \times 2/3 {[c d es]} \times 2/3 {[f g as]}
  \times 2/3 {[bes c bes]} \times 2/3 {[as g f]} \times 2/3 {[es d f]}
  \partial 16*7 es4 r8.
  }
  
  \repeat volta 2 {
  \key es\minor \partial 8*3 [bes8^#'(Large (lines ("Trio." " "))) ( ges ) es]
  
  \slurBoth d4 () es8 bes' ( ges ) es
  ces4 () bes8 bes' ( as ) f
  ges4 ( g ) as8 es' (
  des bes ces4 c
  
  \stemUp \tieUp ) des2 ~ des8 des
  \stemBoth ces as bes ges fes des
  es as ces as ges f!
  \partial 8*3 ges4 r8
  }
  
  \repeat volta 2 {
  \partial 8*3 [des'8 ( bes ) ges]
  
  f4 () ges8 des' ( bes ) ges
  fes4 () es8 es' ( ces ) as
  g4 () as8 es' ( ces ) bes
  a4 () bes8 ces ( as f
  
  ) d8 r r4 r
  r8 [bes' ( d, f ) es bes'] ~
  bes as4 ges f8
  \partial 8*3 [f8 () es] r
  }
  }

vTwo = \notes \relative c' {
  \stemBoth r16 r4 

  r4 <es g> r
  r <as, c> r
  r r <bes 4>
  es es, \Treble \stemUp \tieUp bes'' ~
  
  bes bes2 ~
  bes4 a bes
  g \Bass \slurUp d () c 
  \Treble \stemBoth \times 2/3 {[bes8 c d]} \times 2/3 {[es f g]} \times 2/3 {[e f g]}
  
  \TupNrOff f4 r f
  \times 2/3 {[g8 f es]} \times 2/3 {[d c bes]} \times 2/3 {[g' f e]}
  f4 r \Bass <f, es'!>
  <bes d> bes,8.
  
  r16 r4
  
  r <bes' des> <bes des>
  \slurUp <bes des (> <as ) c> r
  r <as ces> <as ces>
  <as ces (> <g! ) bes> r
  
  as r bes
  c r d
  es c as
  bes bes, r
  
  r <es' g> r
  r <as, c> r
  r r <bes d>
  es es, \stemUp es'4 ~
  
  es4 es2 ~
  es4 d es
  c g () f
  \stemBoth \times 2/3 {[es8 f g]} \times 2/3 {[as bes c]} \times 2/3 {[a bes c]}
  
  bes4 r bes
  \times 2/3 {[es,8 f g]} \times 2/3 {[as bes c]} \Treble \times 2/3 {[d es f]}
  g4 r <bes, as'>
  <es g> \Bass es,8.
  
  \key es\minor r8 r4
  
  \slurBoth r8 <f as (> <ges4 ) bes> r
  r8 <es ges (> <d4 ) f> r
  \Treble r8 [es' ( des! bes] ) ces4
  r r8 [as' ( ges ) es]
  
  \Bass r [des ( ces as] ) bes4
  \stemUp des2 r4
  \stemBoth ces4 r <des, ces'>
  <ges bes> ges,8
  
  r8 r4
  
  r8 <as' ces (> <bes4 ) des> r
  r8 <bes des (> ) ces4 r
  r8 <bes des (> ) ces4 r
  r8 <es ges (> <d4 ) f> r
  
  r8 [ces ( as f d ces]
  \stemDown \tieDown ) bes2. ~
  bes
  \stemBoth es4 es,8
  }
  
vThree = \notes \relative c' {
  s16 s4
  
  s2. 
  s 
  s
  s2 \stemDown es4
  
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
  
  \staffUp \stemDown \slurDown f''2 () ges4
  \staffDown f,4 ges bes
  s2.
  s4.
  
  s4.
  
  s2.
  s
  s
  s
  
  s
  \stemUp r4 as ges
  f es d_#'(large (italic (lines (" " "Men. d. C."))))
  s4.
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "bright acoustic"
  \context Staff = "up" <
    \Global \clef treble
    \context Voice=VoiceI \vOne
  >
  \context Staff = "down" <
    \Global \clef bass
    \context Voice=VoiceI \vTwo
    \context Voice=VoiceII \vThree
  >
>
}
\paper {}
\midi {}
}

