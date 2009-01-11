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
        piece = "7. Canon simplex über besagtes Fundament a 3 voci "
        mutopiatitle = "14 Canons - 7"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1087"
        mutopiainstrument = "Violins and Cello"
        style = "Baroque"
        source = "Photocopy of Autograph"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/01-1436"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global= {
       \time 2/4
       \key g \major
     }

    violinOne = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       r4 r16 g16 [ fis e ] | % 1
       d16 [ b c d ] g,4 ~ | % 2
       g16 [ fis g a ] g4 ~ | % 3
       g16 [ b' a g ] fis [ d e fis ] | % 4
       b,8 [ c ] d16 [ g fis e ] | % 5
      d16 [ b c d ] g,4 ~ | % 6
       g16 [ fis g a ] g4 ~ | % 7
       g16 [ b' a g ] fis [ d e fis ] | % 8
       b,8 [ c ] d16 [ g fis e ] | % 9
      d16 [ b c d ] g,4 ~ | % 10
       g16 [ fis g a ] g4 ~ | % 11
       g16 [ b' a g ] fis [ d e fis ] | % 12
       b,8 [ c ] d16 [ g fis e ] | % 13
      d16 [ b c d ] g,4 ~ | % 14
       g16 [ fis g a ] g4 ~ | % 15
       g16 [ b' a g ] fis [ d e fis ] | % 16
       b,2 \bar "|." }}

     violinTwo = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violine 2 "
       \set Staff.midiInstrument = "violin"
       r16 d16 [ e fis ] g [ b a g ] | % 1
       d'4 ~ d16 [ e d cis ]  | % 2
       d4 ~ d16 [ b, c d ] | % 3
       e16 [ g fis e ] b'8 [ a ]| % 4
       g16 [ d e fis ] g [ b a g ] | % 5
       d'4 ~ d16 [ e d cis ]  | % 6
       d4 ~ d16 [ b, c d ] | % 7
       e16 [ g fis e ] b'8 [ a ] | % 8
       g16 [ d e fis ] g [ b a g ] | % 9
       d'4 ~ d16 [ e d cis ]  | % 10
       d4 ~ d16 [ b, c d ] | % 11
       e16 [ g fis e ] b'8 [ a ]| % 12
       g16 [ d e fis ] g [ b a g ] | % 13
       d'4 ~ d16 [ e d cis ]  | % 14
       d4 ~ d16 [ b, c d ] | % 15
       e16 [ g fis e ] b'8 [ a ] | % 8      
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
	g,4 g' | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
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
