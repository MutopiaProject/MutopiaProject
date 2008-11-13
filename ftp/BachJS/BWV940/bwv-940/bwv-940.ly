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
        title = "Praeludium Nr. 2"
        subtitle = "\"Fünf kleine Präludien\""
        piece = "Bwv 940"
        mutopiatitle = "Praeludium Nr. 2"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 940"
        date = "1717-1723?"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2008/11/13-1594"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
	}

     sopranoOne =   \relative d'' {
			r16 d16 [ c bes ] a [ bes f g ] a8. \mordent [ bes16 g8. f16 ] | % 1
			r4 d'2 cis4 | % 2
			d16 [ a' g f ] e [ f cis d ] e8. \mordent [ f16 d8. cis16 ] | % 3
			cis4 ~ cis16 [ a d8 ] ~ d4 c4 | % 4
			b2 ~ b4 a4 ~ | % 5
			a16 [ a g f ] g4 ~ g f ~ | % 6
			f16 [ a g f ] e16 [ g8. ] ~ g16 [ g f e ] d16 [ f8. ] ~ | % 7
			f16 [ f e d ] b'4 a g | % 8
			fis4 g r8 g16 [ bes ] e4 | % 9
			d1 | % 10
	 }	
     sopranoTwo =   \relative d' {
			s1 | % 1
			f2 e | % 2
			s1 | % 3
			r16 b'16 [ a g ] f8. [ f16 ] e2 ~  | % 4
			e2 ~ e4 e16 [ e f d ] | % 5
			r4 e4 \mordent ~ e d ~ | % 6
			d4. cis16 [ d ] cis4 d ~ | % 7
			d8 r8 r16 e16 [ f d ] r16 e16 [ f d ] r16 d16 [ e cis ]  | % 8
			r16 e16 [ d c ] bes16 [ d8. ] s4 r16 bes'16 [ a g ]  | % 9
			f1 | % 10
	 }
     sopranoThree =   \relative a' {
			s1*3 | % 1
			s2. a4 ~  | % 4
			a4 gis ~ gis16 [ gis fis e ] s4 | % 5
			s1*5 | % 10
	 }

	 soprano = << \sopranoOne \\ \sopranoTwo \\ \sopranoThree >>
%%
%% Bass Clef
%% 

bassOne = \relative f {
			f2 e | % 1
			d16 [ d' c bes ] a [ bes f g ] a8. \mordent [bes16 g8. f16 ] | % 2
			r4 a4 bes b | % 3
			a2 ~ a16 [ a g f ] e [ f c d ] | % 4
			e8. \mordent [ f16 d8. c16 ] c4. d8 | % 5
			bes'2 a | % 6
			g2 a4. gis16 [ a ] | % 7
			gis2 << { cis,8 d } { g8 f8 } >>  e4  | % 8
			r4 r8 fis16 [ g ] r16 bes8. ~ bes4 | % 9
			a1 | % 10
	 }
	 
bassTwo = \relative c {
			d2 cis | % 1
			s1 | % 2
			f2 g4 gis | % 3
			s1 | % 4
			s1 | % 5
			e4 ~ e16 [ f e d ] cis [ a b c ] d [ e f d ] | % 6
			bes2 a ~ | % 7
			a2 a | % 8
			<<d, d' >> cis | % 9
			d1 | % 10
	 }
	
	 bass = << \bassOne \\ \bassTwo >>

%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key f \major \time 4/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key f \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }

}
