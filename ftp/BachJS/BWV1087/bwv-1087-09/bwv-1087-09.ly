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
        piece = "9. Canon in unisono post semifusam a 3 voci "
        mutopiatitle = "14 Canons - 9"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1087"
        mutopiainstrument = "Violins and Cello"
        style = "Baroque"
        source = "Photocopy of Autograph"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/02-1441"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global= {
       \time 2/4
       \key g \major
     }

    violinOne = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       g16 [ b d g ] d [ b g d' ] | % 1
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 2
       d16 [ a fis d ] g [ b d g,] | % 3
       e' [ c a c ] fis, [ a d32 c b a ]  | % 4
        g16 [ b d g ] d [ b g d' ] | % 5
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 6
       d16 [ a fis d ] g [ b d g,] | % 7
       e' [ c a c ] fis, [ a d32 c b a ]  | % 8
       g16 [ b d g ] d [ b g d' ] | % 9
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 10
       d16 [ a fis d ] g [ b d g,] | % 11
       e' [ c a c ] fis, [ a d32 c b a ]  | % 12
       g16 [ b d g ] d [ b g d' ] | % 13
       d,16 [ fis a cis, ] e [ g cis ] r16  | % 14
       d16 [ a fis d ] g [ b d g,] | % 15
       e' [ c a c ] fis, [ a d32 c b a ]  | % 16
       g4 s4  \bar "|." }}

     violinTwo = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violine 2 "
       \set Staff.midiInstrument = "violin"
       r16 g16 [ b d ] g [ d  b g ] | % 1
       d'16 [ d, fis a ] cis, [ e  g cis ]   | % 2
       r16 d16 [ a fis ] d [ g b d ] | % 3
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 4
       b32 [ a g16 b d ] g [ d b g ] | % 5
      d'16 [ d, fis a ] cis, [ e  g cis ]   | % 6
       r16 d16 [ a fis ] d [ g b d ] | % 7
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 8
       b32 [ a g16 b d ] g [ d b g ] | % 9
      d'16 [ d, fis a ] cis, [ e  g cis ]   | % 10
       r16 d16 [ a fis ] d [ g b d ] | % 11
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 12
       b32 [ a g16 b d ] g [ d b g ] | % 13
       d'16 [ d, fis a ] cis, [ e  g cis ]   | % 14
       r16 d16 [ a fis ] d [ g b d ] | % 15
       g,16 [ e' c a ] c [ fis, a d32 c ]   | % 16
       b32 [ a ] g8. s4  \bar "|." }}
 

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
	g,4 g'4 | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
	g,4 s4 \bar "|." }}

     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
