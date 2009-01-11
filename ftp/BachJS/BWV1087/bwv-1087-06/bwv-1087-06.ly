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
        piece = "6. Canon simplex über besagtes Fundament a 3 voci  "
        mutopiatitle = "14 Canons - 6"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1087"
        mutopiainstrument = "Violins and Cello"
        style = "Baroque"
        source = "Photocopy of Autograph"
	arranger = "Hajo Dezelski"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/01-1435"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


global= {
       \time 2/4
       \key g \major
     }

    violinOne = \new Voice { \relative e'{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       r16 e16 [ d c ] b8 [ bes ] | % 1
       a8 [ d ] cis [ c ]  | % 2
       b4 r16 d16 [ e f ]  | % 3
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] | % 4
       g16 [ e'16 d c ] b8 [ bes ]  | % 5
       a8 [ d ] cis [ c ]  | % 6
       b4 r16 d16 [ e f ]  | % 7
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] | % 8
       g16 [ e'16 d c ] b8 [ bes ]  | % 9
       a8 [ d ] cis [ c ]  | % 10
       b4 r16 d16 [ e f ]  | % 11
       e16 [ c a8 ] ~ a16 [ b32 c b16 a ] | % 12
       g2 \bar "|." }}

     violinTwo = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violine 2 "
       \set Staff.midiInstrument = "violin"
       r2 | % 1
       r2 | % 2
       r16 d16 [ e fis ] g8 [ gis ] | % 3
       a8 [ e ] f [ fis ] | % 4
       g4 r16 e16 [ d cis ]  | % 5
       d16 [ fis a8 ] ~ a16 [ g32 fis g 16 a ] | % 6
       b16 [ d, e fis ] g8 [ gis ] | % 7
       a8 [ e ] f [ fis ] | % 8
       g4 r16 e16 [ d cis ]  | % 9
       d16 [ fis a8 ] ~ a16 [ g32 fis g 16 a ] | % 10
       b16 [ d, e fis ] g8 [ gis ] | % 11
       a8 [ e ] f [ fis ]  | % 12
       g2  \bar "|." }}
 

      cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Cello       "
       \set Staff.midiInstrument = "cello"
       \clef bass
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
	g,2 \bar "|." }}

     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
