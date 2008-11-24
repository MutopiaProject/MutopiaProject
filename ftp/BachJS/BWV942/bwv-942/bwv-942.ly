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
        title = "Praeludium Nr. 4"
        subtitle = "\"Fünf kleine Präludien\""
        piece = "Bwv 942"
        mutopiatitle = "Praeludium Nr. 4"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 942"
        date = "1717-1723?"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
	maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2008/11/24-1599"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
	}

     soprano =   \relative a'' {
			a8 [ e f ] a [ d, e ] a [ c, d ]  | % 1
			a'8 [ b, c ] a8. [ c16 b a ] dis8 [ c b ] | % 2
			g'8 [ dis e ] c' [ g fis ] b [ fis e ] | % 3
			a8 [ fis dis ] g8 [ fis16 e dis e ] g8 [ d cis ] | % 4
			f8 [ cis d ] f8 [ e16 d cis d ] f8 [ c b ] | % 5
			e8 [ b c ] e [ a, b ] e [ g, a ] | % 6
			e'8 [ fis, g ] e8. [ g16 fis e ] cis'8 [ bes a ] | % 7
			d8 [ e, f ] d8. [ f16 e d ] gis8 [ f e ] | % 8
			c'8 [ gis a ] d [ gis, a ] e' [ gis, a ] | % 9
			f16 [ g f e d e ] f [ g a b c d ] e [ fis g a b c ] | % 10
			d,8 [ e f ] e [gis a ] b, [ c a ] | % 11
			gis8 [ f' e ] a, [ e' d ] b [ d c ] | % 12
			c8 [ b a ] f' [ a, gis ] e' [ g, fis ] | % 13
			d'8 [ f, e ] c' [ gis a ] fis [ gis a ]  | % 14
			gis16 [ e' d c b a ] gis [ fis e d c b ] s4. | % 15
			s4 s16 e16 a16 [ c e b c a ] e8 [ a gis ]  | % 16
			a8 [ g16 f e d ] c [ b a gis a e ] s4. | % 17

	 }	
 
%%
%% Bass Clef
%% 

bass = \relative a {
			a4 r8 c4 r8 f4 r8 | % 1
			e4 r8 c4 r8 a4 r8 | % 2
			e'8 [ b c ] e [ a, b ] e [ g, a ] | % 3
			e'8 [ fis, g ] e8. [ g16 fis e ] cis'8 [ bes a ] | % 4
			d8 [ e, f ] d8. [ f16 e d ] b'8 [ aes g ] | % 5
			c8 [ gis a ] b [ fis g ] a [ e fis ]  | % 6
			g8 [ dis e ] cis'4 r8 a4 r8 | % 7
			f8 [ cis d ] gis4 r8 e4 r8  | % 8
			a4 r8 b4 r8 c4 r8 | % 9
			d,4. r4 r8 r4 r8 | % 10
			b8 [ c16 b a b ] c8 [ d16 c b c ] d8 [ e16 d c d ] | % 11
			e4. r4 r8 r4 r8 | % 12
			a8 [ e f ] a [ d, e ] a [ cis, d ] | % 13
			a'8 [ b, c ] a8. [ c16 b a ] dis8 [ c b ] | % 14
			e4 r8 r4 r8 a16 [ gis fis e fis gis ]  | % 15
			a16 c,16 [ e a c ] r16 r4 d,8 e4 e,8 | % 16
			a4 r8 r4 r8 a4 r8 | % 17

}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key c \major \time 9/8 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key c \major \time 9/8 \bass }
    >>
    \layout{  }
    \midi { }

}
