\header { 
title = "Wiegenlied"  composer = "F. Schubert(1797-1828)" tagline = ""
% MUTOPIA
 mutopiatitle = "Wiegenlied"
 mutopiacomposer = "SchubertF"
 mutopiainstrument = "Voice and Piano"
 mutopiaopus = "D.498 (Op. 98, No. 2)"
 mutopiapoet = "Matthias Claudius (1740-1815)"
 mutopiadate = "1816"
 source = "Indiana Edu. Web"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Shogo Mori"
 footer = "Mutopia-2007/10/03-1040"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.0"
#(set-global-staff-size 20)

textOne = \lyricmode {
  Schla- fe, schla- fe, hol- der, sü- sser Kna- be,
  Lei- se wiegt dich dei- ner Mut- ter Hand;
  sanf- te Ru- he, mil- de La- be
  bringt dir schwe- bend die- ses Wie- gen- band.
}
textTwo = \lyricmode {
  Schla- fe, schla- fe in dem sü- ssen Gra- be,
  noch be- schützt dich dei- ner Mut- ter Arm,
  al- le Wün- sche, al- le Ha- be
  fasst sie lie- ben, al- le lie- be- warm.
}
textThree = \lyricmode {
  Schla- fe, schla- fe in der Flau- men Scho- ße,
  noch um- tönt dich lau- ter Lie- bes- ton,
  ei- ne Li- lie, ei- ne Ro- se,
  nach dem schla- fe werd' sie dir zum Lohn.
}

melody = \relative c'' {
  \clef treble
  \key as \major
  \time 4/4
  c4^\markup { \italic "Lamgsam" } es4  bes8. [ (  c16)] des4
   c8   c8   bes16 [ (  as)]  g16 [ (  as)] bes4 es,4
    c'4 es4  bes8. [ (  c16)] des4
      c8   c8   bes16 [ (  c)]  des16 [ (  bes)] as4 r4
%
  bes4. bes8 c8.(  bes16) as4
   es'4( \grace {
   \override Stem   #'stroke-style = #"grace"
   f16 [ es]
   \revert Stem #'stroke-style }
    des8)   c8  bes4 es,4
     c'4 es4  bes8. [ (  c16)] des4
      c8   c8   bes16 [ (  c)]  des16 [ (  bes)] as4 r4
%
  r1
   r1
}

upper = \relative c'' {
  \clef treble
  \key as \major
  \time 4/4
  <as c>8[(_\pp  es  <as c>8  es]  <g des'>8[  es  <g bes>8  es])
   <as c>8[(  es  <as c>8  es]  <g des'>8[  es  <g des'>8  es])
    <as c>8[(  es  <as c>8  es]  <g des'>8[  es  <g bes>8  es])
     << {<as c>8[_(  es] \stemDown des8[ es]) } \\ { s4 \stemUp<g bes>4 } >>
     <as c,>8[(  es]   <as c,>4) 
%
  <bes g es>4   <bes g es>8[   <bes g es>8 ]
   << { <c as>8.[(  <bes g>16] )as4} \\ {es2} >>
    << {<es' es,>4(   <des g,>8[ <c as>) ] bes4.( b8)} \\ {es,2  <es g>2 }>>
     <as c>8[(  es  <as c>8  es]  <g des'>8[  es  <g bes!>8  es])%07
      << {<as c>8[(  es] \stemDown des8[ es])  } \\ {s4 \stemUp <g bes>4}>>
      <as c,>8[(  es   <as c,>8  es') ]
%
  << {<es g, >2-> es2} \\ {bes4->  des16[( c des bes])  as8[ c] es4} >>
   << {<es g,>2-> es2} \\ {bes4->  des16[( c des bes])  as8[ c] as4} >>
\bar ":|"
}

lower = \relative c' {
  \clef bass
  \key as \major
  \time 4/4
  <as as,>2 <es es,>2
   <as as,>2 <es es,>2
    <as as,>2 <es es,>2
     <as as,>4  es4 as,2
%
  es'4  es8[ es8]  as8.[( es16] c4)
   c'4(  bes8[ as8]) es2
    <as as,>2 <es es,>2
     <as as,>4  es4 as,2
%
  << { des'8[( es bes es])  c8[ es c es]  des8[ es bes es]  c8[ es] c4} \\ {as2 as2 as2 as2 }>>
}

\score {
  <<
    \new Voice = "mel" {
      \autoBeamOff
      \melody
    }
    \new Lyrics \lyricsto mel \textOne
    \new Lyrics \lyricsto mel \textTwo
    \new Lyrics \lyricsto mel \textThree

    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { \RemoveEmptyStaffContext }
  }
  \midi { }
}
