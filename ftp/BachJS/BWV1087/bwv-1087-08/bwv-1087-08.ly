\version "2.11.46"

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}

% #(set-default-paper-size "a4")

#(set-global-staff-size 19)

\header {
        title = "14 Kanons "
        subtitle = "über die ersten acht Fundamentalnoten der Aria aus den Goldberg-Variationen"
        piece = "8. Canon simplex a 3 voci, il soggetto in Alto "
        mutopiatitle = "14 Canons - 8"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1087"
        mutopiainstrument = "Violin, Viola and Cello"
        style = "Baroque"
        source = "Photocopy of Autograph"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/02-1440"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


global= {
       \time 2/4
       \key g \major
     }

    violinOne = \new Voice { \relative c'{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       r2 | % 1
       r2 | % 2
       r8 d16 [ e ] fis8 [ gis ] | % 3
       a8 [ c ] b [ a ] | % 4
       e'4 r8 d8 | % 5
       a'8 [ a,] b [cis ]  | % 6
       d8 [ d,16 e] fis8 [gis ] | % 7
       a8 [ c ] b [ a ] | % 8
       e'4 r8 d8 | % 9
       a'8 [ a,] b [cis ]  | % 10
       d8 [ d,16 e] fis8 [gis ] | % 11
       a8 [ c ] b [ a ] | % 12
       e'4 r8 d8 | % 13
       a'8 [ a,] b [cis ]  | % 14
       d2 \bar "|." }}


     viola = \new Voice { \relative g' {
       \set Staff.instrumentName = "Viola       "
       \set Staff.midiInstrument = "viola"
       \clef alto
        r4 g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 g' | % 5
	fis4 e | % 6
	d4 b | % 7
	c4 d | % 8
	g,4 g'4 | % 9
	fis4 e | % 10
	d4 b | % 11
	c4 d | % 12
	g,4 g' | % 13
	fis4 e | % 14
	d2 \bar "|." }}

     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Cello       "
       \set Staff.midiInstrument = "cello"
       \clef bass
       r8 e16 [ d ] c8 [ bes ] | % 1
       a8 [fis ] g [ a ] | % 2
       d,4 r8 e8 | % 3
       a,8 [ a' ] g [ f ] | % 4
       e8 [ e'16 d ] c8 [ bes ] | % 5 
      a8 [fis ] g [ a ] | % 2
       d,4 r8 e8 | % 3
       a,8 [ a' ] g [ f ] | % 4
       e8 [ e'16 d ] c8 [ bes ] | % 5 
      a8 [fis ] g [ a ] | % 2
       d,4 r8 e8 | % 3
       a,8 [ a' ] g [ f ] | % 4
       e8 [ e'16 d ] c8 [ bes ] | % 5 
       a8 [fis ] g [ a ] | % 14
       d,2 \bar "|."}}

     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
