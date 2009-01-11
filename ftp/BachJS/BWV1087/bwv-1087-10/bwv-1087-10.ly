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
        subtitle = "über die ersten acht Fundamentalnoten der Aria aus den Goldber-Variationen"
        piece = "10. Canon alio modo per sincopationes et per ligaturas a 2 voci "
        mutopiatitle = "14 Canons - 10"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1087"
        mutopiainstrument = "Violins, Viola and Cello"
        style = "Baroque"
        source = "Photocopy of Autograph"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/02-1442"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

global= {
       \time 2/4
       \key g \major
     }

    violinOne = \new Voice { \relative b'{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       r4 r8 b8 ~ | % 1
       b8 a4 g8 ~ | % 2
       g16 [ fis g a ] b [ d c b ]  | % 3
       a16 [ g fis e ] d [ c b a ]  | % 4
       g16 [ a b8 ] r8 b'8 ~ | % 5
       b8 a4 g8 ~ | % 6
       g16 [ fis g a ] b [ d c b ]  | % 7
       a16 [ g fis e ] d [ c b a ]  | % 8
       g16 [ a b8 ] r8 b'8 ~ | % 9
       b8 a4 g8 ~ | % 10
       g16 [ fis g a ] b [ d c b ]  | % 11
       a16 [ g fis e ] d [ c b a ]  | % 12
       g16 [ a b8 ] r8 b'8 ~ | % 13
       b8 a4 g8 ~ | % 14
       g16 [ fis g a ] b [ d c b ]  | % 15
       a16 [ g fis e ] d [ c b a ]  | % 16
       g16 [ a ] b4. \bar "|." }}

     violinTwo = \new Voice { \relative d'{
       \set Staff.instrumentName = "Violine 2 "
       \set Staff.midiInstrument = "violin"
       r2 | % 1
       r2 | % 2
       r4 d4 | % 3
       e4 fis | % 4
       g4 b | % 5
       a4 g | % 6
       d'4 d, | % 7
       e4 fis | % 8
       g4 b | % 9
       a4 g | % 10
       d'4 d, | % 11
       e4 fis | % 12
       g4 b | % 13
       a4 g | % 14
       d'4 d, | % 15
       e4 fis | % 16
     	g2  \bar "|." }}
 

     viola = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Viola       "
       \set Staff.midiInstrument = "viola"
       \clef alto
        r4 g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 g'4 | % 5
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
	g,2 \bar "|." }}

     cello = \new Voice { \relative g {
       \set Staff.instrumentName = "Cello       "
       \set Staff.midiInstrument = "cello"
       \clef bass
       r2 | % 1
       r2 | % 2
       r4 r8 g,8 ~ | % 3
       g8 a4 b8 ~ | % 4
       b16 [ c b a ] g [ e fis g ]  | % 5
       a16 [ b c d ] e [ fis g a ] | % 6
       b16 [ a g8 ] r8 g,8 ~ | % 7
       g8 a4 b8 ~ | % 8
       b16 [ c b a ] g [ e fis g ]  | % 9
       a16 [ b c d ] e [ fis g a ] | % 10
       b16 [ a g8 ] r8 g,8 ~ | % 11
       g8 a4 b8 ~ | % 12
       b16 [ c b a ] g [ e fis g ]  | % 13
       a16 [ b c d ] e [ fis g a ] | % 14
       b16 [ a g8 ] r8 g,8 ~ | % 15
       g8 a4 b8 ~ | % 16
       b16 [ c b a ] g4 \bar "|."}}

     \score {
        \new StaffGroup <<
           \new Staff << \global \violinOne >>
           \new Staff << \global \violinTwo >>
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
