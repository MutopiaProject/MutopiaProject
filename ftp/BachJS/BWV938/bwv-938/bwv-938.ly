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
        title = "Praeludium Nr. 6"
        subtitle = "\"Sechs kleine Präludien\""
        piece = "Bwv 938"
        mutopiatitle = "Praeludium Nr. 6"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 938"
        date = "1717-1723?"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2008/11/06-1592"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
	}

     soprano =   \relative e' {
		 \repeat volta 2 { 
			r16 e16 [ g b g e ] | % 1
			e'8 [ b e ] | % 2
			dis16 [ b dis fis dis b ] | % 3
			b'8 [ fis b ] | % 4
			g16 [ fis e d c b ] | % 5
			a16 [ c e g fis e ] | % 6
			fis16 [ e d c b a ] | % 7
			g16 [ b d f e d ] | % 8
			e8 [ fis-\mordent g ] | % 9
			d4-\mordent r8 | % 10
			g8 [ fis-\prall g ] | % 11
			a16 [ b c8 ] r8  | % 12
			b8 [ a-\prall g ] | % 13
			a8 [ c, b ]  | % 14
			g'8 [ fis-\prall e ] | % 15
			fis8 [ a, g ] | % 16
			e'8-\mordent [ fis16 e d cis ] | % 17
			fis8 [ g16 fis e d ] | % 18
			cis16 [ e d cis b ais ] | % 19
		 }
			\alternative {
				{ b4. \mordent }
				{ b4. \mordent  }
			} | % 20
			

		
		 \repeat volta 2 {
			r16 dis,16 [ fis a fis dis ] | % 21
			c'8 [ b a ~ ] | % 22
			a16 [ gis b d b gis ] | % 23
			f'8 [ e d ~ ] | % 24
			d16 [ c b a a'8 ~ ] | % 25
			a16 [ f g a d,8 ~ ] | % 26
			d16 [ b a g g'8 ~ ] | % 27
			g16 [ e f g c,8 ~ ] | % 28
			c16 [ f b, e a, d ] | % 29
			g,16 [ c f, b e, a ] | % 30
			gis16 [ a c b a gis ] | % 31
			a4-\mordent r8 | % 32
			r16 e16 [ a gis a c ] | % 33
			fis,16 [ c' e, c' d, c' ] | % 34
			b16 [ d, g fis g b ] | % 35
			e,16 [ b' d, b' c, b' ] | % 36
			a16 [ g fis a e a ] | % 37
			dis,16 [ a' e a fis a ] | % 38
			g16 [ b e dis e fis ] | % 39
			dis16 [ b cis dis e fis ] | % 40
			g16 [ fis g e a e ] | % 41
			fis16 [ c b a g b ] | % 42
			e16 [ d e c fis c ] | % 43
			d16 [ a g fis e g ] | % 44
			c16 [ e, dis e fis g ] | % 45
			a16 [ b c a fis'8 ~ ] | % 46
			fis16 [ b, e g fis dis ]  | % 47
		 }
			\alternative {
				{ e4.-\mordent } 
				{ e4.-\mordent }
			}  \bar "|." % 48
			 
	 }


%%
%% Bass Clef
%% 

bass = \relative e {
		 \repeat volta 2 { 
			e8-\mordent [ e, ] r8 | % 1
			r16 e'16 [ g b g e ] | % 2
			b'8-\mordent [ b, ] r8 | % 3
			r16 b'16 [ dis fis cis b ]  | % 4
			e8 [ g e ] | % 5
			c8 [ a c ] | % 6
			d8 [ fis d ] | % 7
			b8 [ g b ] | % 8
			c16 [ b a c g c ] | % 9
			fis,16 [ c' e, c' d, c' ] | % 10
			b16 [ c a c g c ] | % 11
			fis,16 [ c' e, c' d, c' ] | % 12
			g16 [ b fis b e, b' ] | % 13
			fis16 [ b e, b' dis, b' ] | % 14
			e,16 [ b' d, b' cis, b' ] | % 15
			d,16 [ b' cis, b' b, b' ] | % 16
			cis,16 [ b' d, b' e, b' ] | % 17
			d,16 [ b' e, b' fis b ] | % 18
			g8 [ e fis ] | % 19
		 }
			\alternative {
				{ b,16 [ dis fis a g fis ] }
				{ b,8 [ fis' b ] } 
			} | % 20

		 
		 \repeat volta 2 {
			b8-\mordent [ b, ] r8 | % 21
			r16 b16 [ dis fis dis b ] | % 22
			e8-\mordent [ e, ] r8 | % 23
			r16 e'16 [ gis b gis e ] | % 24
			a16 [ a, b c d e ]  | % 25
			f16 [ d e f g a ] | % 26
			b16 [ g a b c d ] | % 27
			e16 [ c d e f g ] \clef treble | % 28
			a8 [ g f ] | % 29
			e8 [ d c ] \clef bass | % 30
			d8 [ e e, ] | % 31
			a16 [ f e d c b ]  | % 32
			a8 [ b c ]  | % 33
			d8 [ e fis ] | % 34
			g,8 [ a b ] | % 35
			c8 [ d e ] | % 36
			fis,8 [ g a ] | % 37
			b8 [ cis dis ]  | % 38
			e8 [ c a ] | % 39
			b8 r16 b'16 [ cis dis ]  | % 40
			e8 [ d c ] | % 41
			d8 [ fis, e ]  | % 42
			c'8 [ b a ] | % 43
			b8 [ d, c ]  | % 44
			a'8 [ b16 a g fis ] | % 45
			e16 [ dis e dis cis b ] | % 46
			e8 [ g, b ] | % 47
		 }
			\alternative {
				{ e,16 [ b' e fis g a ] } 
				{ e,4.  }
			} \bar "|." % 48
			 
}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key g \major \time 3/8 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key g \major \time 3/8 \bass }
    >>
    \layout{  }
    \midi { }

}
