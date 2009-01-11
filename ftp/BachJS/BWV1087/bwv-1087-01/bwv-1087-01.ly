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
        piece = "1. Canon simplex"
        mutopiatitle = "14 Canons - 1"
        composer = "Johann Sebastian Bach (1685-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 1087"
        mutopiainstrument = "Viola and Cello"
        style = "Baroque"
        source = "Photocopy of Autograph"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
        maintainerEmail = "dl1sdz (at) gmail.com"
	
 footer = "Mutopia-2008/06/11-1451"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

     global= {
       \time 2/4
       \key g \major
     }

 
     viola = \new Voice { \relative c'' {
       \set Staff.instrumentName = "Viola       "
       \set Staff.midiInstrument = "viola"
       \clef alto
       r4^\markup { Soggetto } g4 | % 1
	fis4 e | % 2
	d4 b | % 3
	c4 d | % 4
	g,4 r4 | % 5
	r2 | % 6
	r2 | % 7
	r2 | % 8
	r4 g'4 | % 9
	fis4 e | % 10
	d4 b | % 11
	c4 d | % 12
	g,4 g'4 | % 13
	fis4 e | % 14
	d4 b | % 15
	c4 d | % 16
	g,2 \bar "|." }}

     cello = \new Voice { \relative c' {
       \set Staff.instrumentName = "Cello       "
       \set Staff.midiInstrument = "cello"
       \clef bass
       r2 | % 1
       r2 | % 2
       r2 | % 3
       r2 | % 4
       r4 g,4 | % 5 
       d'4 c | % 6
       b4 d | % 7
       e4 fis | % 8
       g4 g,4 | % 9
       d'4 c | % 10
       b4 d | % 11
       e4 fis | % 12
       g4 g,4 | % 13
       d'4 c | % 14
       b4 d | % 15
       e4 fis | % 16
       g2  \bar "|."}}

     \score {
        \new StaffGroup <<
           \new Staff << \global \viola >>
           \new Staff << \global \cello >>
        >>
        \layout { }
        \midi { }
     }
