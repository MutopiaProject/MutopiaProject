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
        title = "Praeludium Nr. 5"
        subtitle = "\"Sechs kleine Präludien\""
        piece = "Bwv 937"
        mutopiatitle = "Praeludium Nr. 5"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 937"
        date = "1717-1723?"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2008/11/05-1591"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
	}

     sopranoOne =   \relative b' {
		 \repeat volta 2 { 
			 r8 b8 [ e b ] cis [ a fis b ]  | % 1
			 e,8 [ fis16 gis ] a8 [ gis ] fis [ b a gis ] | % 2
			 fis16 [ b ais b ] dis, [ b' ais b ] e, [ b' cis b ] ais [ gis fis e ] | % 3
			 dis16 [ b' ais b ] gis [ b fis b ] e, [ b' dis, b' ] cis, [ b' b, b' ] | % 4
			 ais8 cis [ fis cis ] dis [ bis gis fis' ]  | % 5
			 e16 [ a gis a ] fis [ a gis a ] dis, [ a' b a ] gis [ fis e dis ]  | % 6
			 e8 b [ e b ] cis [ a fis b ]  | % 7
			 e,8 [ fis16 gis ] a8 [ gis ] fis [ b a gis ] | % 8
			 fis8 [ e16 fis ] gis8 [ fis ] e [ e' ] dis16 [ cis dis e ] | % 9
			 fis16 [ e gis fis ] e [ dis cis-\prall b ] b2 | % 10
			  }
			  
		 \repeat volta 2 {

			 r16 fis16 [ e fis ] dis [ fis b gis ] a [ fis e fis ] dis [ fis a fis ] | % 11
			 gis8 [ fis16 gis ] e8 [ b' ] gis [ b e, gis ] | % 12
			 a8 [ cis ] a'4 ~ a16 [ b, a b ] gis'4 ~ | % 13
			 gis8 [ cis, fis cis ] d [ b gis eis' ] | % 14
			 fis16 [ cis b cis ] a [ cis fis dis ] e [ cis b cis ] ais [ cis e cis ] | % 15
			 dis8 [ cis16 dis ] b8 [ fis' ] dis [ fis b, dis ]  | % 16
			 e16 [ b a b ] gis [ b d b ] cis [ a gis a ] fis [ a cis a ] | % 17
			 b16 [ gis fis gis ] fis [ gis b gis ] a [ fis e fis ] dis [ fis a fis ] | % 18
			 gis8 [ fis16 gis ] a16 [ gis fis e ] cis'8 [ dis-\turn ] e4 ~ | % 19
			 e4 dis4 e2 | % 20
		 }
	 }

	 sopranoTwo =   \relative fis' {
		 \repeat volta 2 { 
			 s1*9 | % 1
			 s2 r16 fis16 [ dis b ~] b4 | % 10
		 }
		 \repeat volta 2 {
			 s1*8 | % 11
			 s2. e'8 [ b ] | % 19
			 cis8 [ a ] fis [ b ] gis2 | % 20
		 }
		 
	 }

  soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bass = \relative e {
		 \repeat volta 2 { 
			 e16 [ e' dis e ] gis, [ e' dis e ] a, [ e' fis e ] dis [ cis b a ] | % 1
			 gis16 [ e' dis e ] cis [ e b e ] a, [ e' gis, e' ] fis, [ e' e, e' ] | % 2
			 dis8 fis, [ b fis ] gis [ e cis fis ] | % 3
			 b,8 [ cis16 dis ] e8 [ dis ] cis [ fis e dis ] | % 4
			 cis16 [ fis e fis ] dis [ fis e fis ] bis, [ fis' gis fis ] e [ dis cis bis ]  | % 5
			 cis8 e [ a e ] fis [ dis b a' ]  | % 6
			 gis16 [ e dis e ] cis [ e dis e ] a, [ e' fis e ] dis [ cis b a ] | % 7
			 gis16 [ e' dis e ] cis [ e b e ] a, [ e' gis, e' ] fis, [ e' e, e' ] | % 8
			 b16 [ dis cis dis ] e [ b fis' b, ] gis' [ b, ais' b, ] b'8 [ gis ] | % 9
			 dis8 [ b fis' fis, ] b4 b, | % 10
		}
			  
		 \repeat volta 2 {

			 b'8 [ fis' b fis ] dis [ fis b, dis ] | % 11
			 e16 [ b' a b ] gis [ b e cis ] d [ b a b ] gis [ b d b ] | % 12
			 cis16 [ a gis a ] gis [ a cis a ] b [ gis fis gis ] eis [ gis b gis ] | % 13
			 a16 [ fis eis fis ] d [ fis eis fis ] b, [ fis' e fis ] cis [ cis' b cis ] | % 14
			 a8 cis8 [ fis cis ] ais [ cis fis, ais ] | % 15
			 b16 [ fis e fis ] dis [ fis b gis ] a [ fis e fis ] dis [ fis a fis ] | % 16
			 gis8 b8 [ e gis, ] a [ cis dis fis, ] | % 17
			 gis8 [ b cis e, ] fis [ a b dis, ]  | % 18
			 e16 [ b' e dis ] cis [ b a gis ] a [ gis fis a ] gis [ e' dis e ] | % 19
			 a,16 [ e' dis e ] b8 [ b, ] e16 [ e, gis b ] e4 | % 20
		 }

}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key e \major \time 4/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key e \major \time 4/4 \bass }
    >>
    \layout{  }
    \midi { }

}
