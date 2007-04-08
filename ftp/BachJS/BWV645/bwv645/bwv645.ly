%#(set-default-paper-size "a4")
#(set-global-staff-size 17.82)

\version "2.8.1"
\header {
  title = "Wachet auf, ruft uns die Stimme"
  subtitle = "BWV 645"
  composer = "J.S. Bach"
  enteredby = "Bart Golsteijn"
  mutopiatitle = "Wachet auf, ruft uns die Stimme"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 645"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft, Leipzig"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 2.5"
  maintainer = "Bart Golsteijn"
  maintainerEmail = "bartgolsteijn@hotmail.com"
  lastupdated = "2006/June/28"
 footer = "Mutopia-2006/06/29-601"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

upperNotes = \relative c' { 
  \clef treble 
  \key es \major
  \time 4/4 
  \partial 8*1 bes8^"Dextra 8 Fuss" es16( f g8) g( f) as([ g)] bes,([ as)] 
  \repeat volta 2 {g'16( es) f8-. as,( g) d'( es) r8 bes es16( f g8) g( f) as([ g)] 
	  bes,([ as)] g'16( es) f8-. as,( g) d'( es) r8 bes' bes4 as16( g f es) 
	  f( es d c) bes8 c16 d es( f) g( f) as( g f es) g8( f) r8 bes, g'( a4) 
	  bes8 \appoggiatura f8 es16( d) es8 r c a'( bes4) c8 \appoggiatura f,8 
	  es16( d) es8 r es'\prallup d16 c bes8 bes16\trill a bes8~ bes16( a 
	  g f) es( d c bes) c( d es8) \appoggiatura f8 es16( d) es8~ es16 a( bes 
	  c bes a g f) bes8[ f] d\trill c16 bes bes( es d c d8) bes \appoggiatura a8 
	  g8. a16 a8.\prallprall g32 a bes4 r8 bes es16( f g8) g( f) as([ g)] 
	  bes,([ as)] g'16( es) f8-. as,( g) d'( es) r8 bes es16( f g8) g( f) as([ g)] 
	  bes,([ as)] g'16( es) f8-. as,( g) d'( es) r8 f g( a4) bes8 \appoggiatura 
	  f8 es16( d) es8 r es a( bes4) c8 \appoggiatura g8 f16 es f8 r4 r r8 bes
	  bes4 as16( g f es) f( es d c) bes8 c16 d es( f) g( f) as( g f es)
  }
  \alternative { {g8( f) r4 r r8 bes, es16( f g8) g( f) as([ g)] bes,([ as)]} {g'8( f) r4 r r8 bes8 }}
  bes4 as16( g f es) f( es d c) bes8 c16 d es( f) g( f) as( g f es) g8( f) r bes, 
  g'( a4) bes8 \appoggiatura f8 es16( d) es8 r c a'( bes4) c8 \appoggiatura f,8 
  es16 d es8 r8 es' d16 c bes8 bes16\trill a bes8~ bes16( a g f) es( d c bes) c( 
  d es8) \appoggiatura f8 es16( d) es8~ es16 a( bes c bes a g f) bes8[ f] d\trill
  c16 bes bes( es d c d8) bes \appoggiatura a8 g8. a16 a8.\prallprall g32 a bes4
  r8 d es( f4) g8 bes,16(\trill as) bes8 r bes' bes4 as16( g f es) f( es d c) 
  bes8 c16 d es( f) g( f) as( g f es) g8( f) r4 r4 r8 g c16( d es8) es( d) f([ es)]
  g,([ f)] es'16( c) d8-. f,( es) b'( c) r8 g g4 f16( es d c) d( c b a) g8 a16 b
  c( d es d) f( es d c) es8( d) r8 g, es'( fis4) g8 \appoggiatura d c16( bes) c8 
  r8 a fis'( g4) a8 \appoggiatura d, c16( bes) c8 r c' bes16 a g8~ g16\trill fis
  g8~ g16 f( es d c bes a g) a bes c8~ c16\trill bes c8~ c16 fis( g a g fis e d)
  g8[ d] bes\trill a16 g g4 r4 r r8 bes es16( f g8) g( f) as([ g)] bes,([ as)] g'16( 
  es) f8-. as,( g) d'( es) r4 r r8 bes' bes4 as16( g f es) f( es d c) bes8 c16 d es( 
  f) g( f) as( g f es) g8( f) r es c'( d4) es8 as,16\trill g as8 r c d( es4) f8 
  \appoggiatura bes, as16( g) as8 r f g16 f es8~ es16\trill d es8~ es16 des' c bes as
  g f es f g as8~ as16\trill g as8~ as16 d,( es f es d c bes) bes'8 es, g16 f es d es( as g f g8) 
  es \appoggiatura d c8. d16 d8. es16 es1 \bar "|."
}

lowerNotes = \relative c { 
  \clef bass 
  \key es \major
  \time 4/4
  \partial 8*1 r8^"Sinistra 8 Fuss" R1
  \repeat volta 2 {R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 r2 es4 g bes bes bes bes c2 
      bes \clef treble r r4 bes es bes es8 f g4 f4. es8 d4( c8.\prallprall bes32 
      c) bes2 r \clef bass r4 bes \appoggiatura bes8 es4 bes} 
  \alternative {{c4 g8.( as32 bes) as8 g f4 es2 r}{c'4 g8.( as32 bes) as8 g f4 es2 r}}
  R1 R1 R1 R1 R1 R1 r2 r4 bes' bes as g f\trill es2 r r4 bes' bes as g f\trill es2
  R1 f4 g as2\trill g r2 R1 R R R R r4 bes c d es2 r \clef treble r r4 es8 f g4 f\trill es2 
  \clef bass R1 r4 bes es bes c g as8 g f4\trill es1 R R R R
}

pedalNotes = \relative c, {
  \clef bass
  \key es \major
  \time 4/4
  \partial 8*1 r8^"Pedal 16 Fuss" es4 es es g 
  \repeat volta 2 {as bes es, r4 es4 es es g as bes es, r4 g c bes as g es bes' 
    d es d c es f g a f bes a g f es d c es d8 bes f' f, g a bes d, es c f4 bes8
    c bes as g f es d c4 c' g bes es, g as as' d, es c d es d c g c8 d es4( es8) d 
    g, a bes d, es f bes a bes c d bes es4 bes as g es
  } 
  \alternative {{as8 bes c4 f, bes8 as g4 es' d es}{as,8 bes c4 f, bes8 as g4 c bes as}}
  g es bes' d es d c es f g a f bes a g f es d c es d8 bes f' f, g a bes d, es c f4
  bes8 c bes as g f es d es g as bes c d es4 bes as g es bes'8 c d bes es d c b 
  c g' c bes! as4 es f g as8 g f e f es d c b g g' f es4 c g' b c bes a c, d es
  fis, d g f es' d c bes a c bes8 g d' d, g es f g as g as bes c bes c d es4 c as
  bes c8 bes c d es d es f g f g as d, bes bes' as g4 es bes'8 as g4 as g f es f
  bes, c as bes g as8 g f es d4 f bes8 c bes as g c as bes c d es g as f bes bes, es1
}

\score {
  <<
    \new PianoStaff <<
      \context Staff = upper \upperNotes
      \context Staff = lower \lowerNotes
    >>
    \context Staff = pedal \pedalNotes
  >>
  \midi { \tempo 4=60 }
  \layout { }
}

