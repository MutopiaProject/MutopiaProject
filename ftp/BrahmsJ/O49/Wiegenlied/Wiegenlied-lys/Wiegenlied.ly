\header {
  title = "Wiegenlied"
  composer = "J. Brahms Op.49-4"

  mutopiacomposer = "BrahmsJ"
  mutopiaopus = "Op. 49, No. 4"
  mutopiainstrument = "Voice and Piano"
  mutopiastyle = "Romantic"
  mutopiasource = "Indiana University: http://www.dlib.indiana.edu/variations/scores/bgn9130/index1.html"
  mutopiacopyright = "Public Domain"
  maintainer = "森 章吾"
  moreInfo = "The PDF file downloads include editions for piano/soprano and piano/SATB, the latter contributed by Agnès Zietek."

 footer = "Mutopia-2007/11/04-1037"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

#(set-global-staff-size 18)

  \version "2.10.0"
  melody = \relative c'' {
  \clef treble
  \key es \major
  \time 3/4
    \partial 8
    r8^"Zart bewegt"
    r2.
    r4 r4 g8 g
    bes4. g8 g4
    bes4 r4 g8[( bes])
    es4 d4. c8
    c4( bes) f8[( g])
    as4 f f8[( g])
    as4 r4 f8[( as])
    d8[( c]) bes4 d
    es4 r4 es,8 es8
    es'2 c8 as8
    bes2 g8 es8
    as4 bes c
    \acciaccatura g8 bes2 es,8 es
    es'2 c8 as
    bes2 g8 es
    as4( \acciaccatura { bes16[ as] } g4) f4
    es2 r8 s8
    \bar ":|"
  }

  upper = \relative c'' {
  \clef treble
  \key es \major
  \time 3/4
    <g bes>8~(^\markup { \italic "Teneramante, con moto" } <g bes>8[
<es g>8]) <g bes>4.
    <g bes>8~( <g bes>8[ <es g>8]) <g bes>4.
    <g bes>8~( <g bes>8 <es g>4 bes4)
    <g' bes>8~( <g bes>8 <es g>4 bes4)
    <g' bes>8~( <g bes>8 <es' g>4 <es g>4 <es g>8 ~ <es g> <d as'>4
<as d>4)    <g bes>8~ <g bes>8 <as f>4 <f bes,>4
    <as c>8~( <as c>8 <as f>4 <f bes,>4)
    <as c>8~( <as c>8 <as f>4 <as d>4 <as f'>8~<as f'> <g es'>4 <g bes>)
    <es' des es,>8~( <es des es,>8 <c as>8) <es c>4.
    <c as>8 <bes g>8( <g es>8) <bes g>4. <g es>8
    <f d>8( <d bes>8 <f d>8 <c as>8 <f d>8 <bes, g>8)
    <g' es>2 r8
    <es' des es,>8~( <es des es,>8 <c as>8) <es c>4.
    <c as>8 <bes g>8( <g es>8) <bes g>4. <g es>8
    <f d>8( bes8 <g es>8 c8 <as f>8 d8)
    <es bes g>2 r8 s8

  }

  lower = \relative c {
  \clef bass
  \key es \major
  \time 3/4
    r8
    es,4 g'( bes,)
    es,4 g'( bes,)
    es,4 g'( bes,)
    es,4 g'( bes,)
    es,4 bes''( bes,)
    es,4 f'( bes,)
    es,4 f'( bes,)
    es,4 f'( bes,)
    es,4 bes''( bes,)
    es,4 bes''( es,)
    es,4 as'( as,)
    es4 g'( bes,)
    es,4 f'( bes,)
    es,4 g'( bes,)
    es,4 as'( as,)
    es4 g'( bes,)
    es,4 bes''( bes,)
    es,4 <bes' es g>4 r8 s8


  }

  verseOne = \lyricmode {
   Gu- ten A- bend gut' Nacht,
   mit Ro- sen be- dacht,
   mit Näg'- lein be- steckt,
   schlupf' un- ter die Deck':
   Mor- gen früh, wenn Gott will,
   wirst du wie- der ge- weckt,
   Mor- gen früh, wenn Gott will,
   wirst du wieder ge- weckt,
  }
  verseTwo = \lyricmode {
   Gu- ten A- bend gut' Nacht,
   von Eng'- lein be- wacht,
   die zei- gen im Traum
   dir Christ- kind- leins Baum:
   Schlaf nun se- lig und süss,
   schau' im Traum 'spa- ra- dies,
   Schlaf nun se- lig und süss,
   schau' im Traum'sPa- ra- dies,
  }
  \score {
     <<
     \new Staff = "mel" {<<
      \autoBeamOff
      \melody >>
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
     }

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
