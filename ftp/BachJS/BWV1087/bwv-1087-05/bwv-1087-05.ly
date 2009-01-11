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
        piece = "5. Canon duplex a 4 voci  "
        mutopiatitle = "14 Canons - 5"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1087"
        mutopiainstrument = "Violins, Viola and Cello"
        style = "Baroque"
        source = "Photocopy of Autograph"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/01-1434"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}


global= {
       \time 2/4
       \key g \major
     }

    violinOne = \new Voice { \relative g'{
       \set Staff.instrumentName = "Violine 1 "
       \set Staff.midiInstrument = "violin"
       r8 g16 [ fis ] g [ a b c ] | % 1
       d16 [ a fis d ] e [ fis g a ] | % 2
       b8 [ fis ] g4 ~  | % 3
       g16 [ a32 b c16 b ] a16 [ g b a ] | % 4
       g16 [a g fis ] g [ a b c ]  | % 5
       d16 [ a fis d ] e [ fis g a ]  | % 6
       b8 [ fis ] g4 ~  | % 7
       g16 [ a32 b c16 b ] a16 [ g b a ] | % 8
       g16 [a g fis ] g [ a b c ]   | % 9
       d16 [ a fis d ] e [ fis g a ]  | % 10
       b8 [ fis ] g4 ~ | % 11
       g16 [ a32 b c16 b ] a16 [ g b a ] | % 12
       g2 \bar "|." }}

     violinTwo = \new Voice { \relative c''{
       \set Staff.instrumentName = "Violine 2 "
       \set Staff.midiInstrument = "violin"
       r2 | % 1
       r2 | % 2
       r8 d16 [ e ] d [ c b a ]  | % 3
       g16 [ c e g ] fis [ e d c ] | % 4
       b8 [ e ] d4 ~ | % 5
       d16 [ c32 b a16 b ] c [ d b c ] | % 6
       d16 [ c d e ] d [ c b a ]  | % 3
       g16 [ c e g ] fis [ e d c ] | % 4
       b8 [ e ] d4 ~ | % 5
       d16 [ c32 b a16 b ] c [ d b c ] | % 6
       d16 [ c d e ] d [ c b a ]  | % 3
       g16 [ c e g ] fis [ e d c ] | % 4
       b2  \bar "|." }}
 

     viola = \new Voice { \relative c'' {
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
	g,2 \bar "|." }}

     cello = \new Voice { \relative d {
       \set Staff.instrumentName = "Cello       "
       \set Staff.midiInstrument = "cello"
       \clef bass
       r2 | % 1
       r2 | % 2
       r4 d4 | % 3
       e4 fis | % 4
       g4 b | % 5
       a4 g | % 6
       d'4 d,4 | % 7
       e4 fis | % 8
       g4 b | % 9
       a4 g | % 10
       d'4 d,4 | % 11
       e4 fis | % 12
       g2  \bar "|."}}

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
