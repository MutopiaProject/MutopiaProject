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
        title = "Praeludium Nr. 3"
        subtitle = "\"Fünf kleine Präludien\""
        piece = "Bwv 941"
        mutopiatitle = "Praeludium Nr. 3"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 941"
        date = "1717-1723?"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2008/11/13-1595"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
	}

     sopranoOne =   \relative e' {
			r8 e8 [ g b e b ] | % 1
			c8 [ a fis a dis, b' ] | % 2
			g4 e e' ~ | % 3
			e4 dis fis ~  | % 4
			fis4 e g ~ | % 5
			g4 fis a ~  | % 6
			a4 g f ~ | % 7
			f4 e2 | % 8
			d2. ~  | % 9
			d8 [ e ] a,4.-\prall g8  | % 10
			g8 [ d' b g ] g'4 | % 11
			r8 e8 [ cis e a, g' ]  | % 12
			fis4 r8 fis8 [ d b ] | % 13
			gis'4 e gis | % 14
			a8 [ e c a ] a'4 | % 15
			r8 fis8 [ dis fis b, a' ] | % 16
			g8 [ e c e a, g' ]  | % 17
			fis8 [ d b d g, fis' ]  | % 18
			e4 dis8 [ e ] fis4 ~ | % 19
			fis8 [ b, e d c b ] | % 20
			\times 2/3 { a8 b c } 
			fis,4.-\prall e8 | % 21
			e2. | % 22

	 }	
     sopranoTwo =   \relative g' {
			s2.*2 | % 1
			s2 g4 | % 3
			fis2 a4 ~ | % 4
			a4 g b ~ | % 5
			b4 a c | % 6
			b2. ~ | % 7
			b4 c8 [ b ] c4 ~  | % 8
			c4 b8 [ a g fis ]  | % 9
			g4 fis2 | % 10
			s2.*8 | % 11
			s2 a4 ~ | % 19
			a4 g4. g8 | % 10
			fis8 [ e ] e4 dis | % 21
			r8 b8 gis2 | % 22
			 
	 }

	 soprano = << \sopranoOne \\ \sopranoTwo >>
%%
%% Bass Clef
%% 

bassOne = \relative f {
			g2. | % 1
			a2 fis4 | % 2
			b8 s8 s2 | % 3
			s2.*18 | % 4
			r4 r8 b,8 e4 | % 22
}
	 
bassTwo = \relative c {
			e2. | % 1
			e2. ~ | % 2
			e8 e8 [ g b e b ] | % 3
			c8 [ a fis a dis, b' ]  | % 4
			g8 [ e' b g e g ]  | % 5
			a8 [ b c a fis d ]  | % 6
			g8 [ g, b d g d ] | % 7
			e8 [ g c, e a, c ]  | % 8
			fis,8 [ d g b e, g ] | % 9
			c,8 [ c' d c d d, ] | % 10
			g4 r8 b' [ g e ] | % 11
			cis'4 a cis | % 12
			d8 [ a fis d ] d'4 | % 13
			r8 b8 [ gis b e, d' ] | % 14
			c4 r8 c8 [ a fis ]  | % 15
			dis'4 b dis | % 16
			e4 r8 a,8 [ c e ] | % 17
			d4 r8 g,8 [ b d ] | % 18
			c8 [ a fis a dis, fis ]  | % 19
			g,8 [ e g b e b ] | % 10
			c8 [ a b a ] b4  | % 21
			e,2. | % 22	
}
	
	 bass = << \bassOne \\ \bassTwo >>

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key g \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key g \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }

}
