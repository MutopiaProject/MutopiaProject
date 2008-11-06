\version "2.11.62"

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
        title = "Praeludium Nr. 1"
        subtitle = "\"Fünf kleine Präludien\""
        piece = "Bwv 939"
        mutopiatitle = "Praeludium Nr. 1"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 939"
        date = "1717-1723?"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2008/11/06-1593"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
	}

     sopranoOne =   \relative c' {
			r8 c8 [ e g ] e [ c bes' g ] | % 1
			a8 [ c, f a ] f [ c c' a ] | % 2
			b8 [ g b d ] b [ g f' d ]  | % 3
			e2 r4 e4 | % 4
			d2 r4 d4 | % 5
			d8 g,8 [ b d ] b4 e4 | % 6
			c2 r4 <a c>4 ~ | % 7
			<a c>8 d,8 [ fis a ] fis [ d c' a ] | % 8
			b8 [ g b d ] b [ g f' d ] | % 9
			e8 [ g, c e ] c [ g g' e ] | % 10
			fis8 [ a, c fis ] c [ a a' fis ] | % 11
			g2 r4 s4 | % 12
			c,8 [ e g c ] g [ e bes' g ] | % 13
			a16 [ g f e ] d [ c b a ] b [ g a b ] c [ d e f ]  | % 14
			g4 c,2 b4 | % 15
			c1 | % 16
	 }	
     sopranoTwo =   \relative d' {
			s1*3 | % 1
			< g c>2 r4 <g c>4 | % 4
			<a c>2 r4 <a c>4 | % 5
			<g b>8 s8*3 g4 b4 | % 6
			c2 r4 e,4 ~ | % 7
			e8 s8 s2. | % 8
			s1*3 | % 9
			<b' d>2 s4 b4 | % 12
			s1*2 | % 13
			s4 g2 d4 | % 15
			e1 | % 16
	 }

	 soprano = << \sopranoOne \\ \sopranoTwo >>
%%
%% Bass Clef
%% 

bass = \relative c, {
			<c c'>1 ~ | % 1
			<c c'>1 ~ | % 2
			<c c'>1 | % 3
			r8 c'8 [ e g ] e [ c c' e, ] | % 4
			fis8 [ d fis a ] fis [ d d' fis, ]| % 5
			g2 r4 g4 | % 6
			a8 [ a, c e ] c [ a g' e ] | % 7
			fis2r4 d4 | % 8
			g4-\mordent g, g'-\mordent g, | % 9
			g'4-\mordent g, g'-\mordent g, | % 10
			g'4-\mordent g, g'-\mordent g, | % 11
			g'8 [ g, b d ] b [ g f' d ] | % 12
			e8 [ c e g ] e [ c c' e, ]  | % 13
			f1 ~ | % 14
			f8 [ d e c ] g'4 g, | % 15
			c,1 \bar "|."
	 }

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key c \major \time 4/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key c \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }

}
