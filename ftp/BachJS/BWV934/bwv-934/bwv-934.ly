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
        subtitle = "\"Sechs kleine Präludien\""
        piece = "Bwv 934"
        mutopiatitle = "Praeludium Nr. 2"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 934"
        date = "1717-1723?"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2008/10/28-1572"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
	}

     sopranoOne =   \relative c'' {
		 \repeat volta 2 { 
			 c8 [ d es g, d' f, ] | % 1
			 \appoggiatura f16 es8 [ d c es g c ] | % 2
			 f,8 [ es' d f as c, ] | % 3
			 \appoggiatura c16 b8 [ a g b d f ] | % 4
			 es8 [ c g c e c ] | % 5
			 f8 [ c g' c, as' c, ] | % 6
			 d8 [ bes f bes d bes ] | % 7
			 es8 [ bes f' bes, g' bes, ] | % 8
			 c8 [ as g as c es ] | % 9
			 bes8 [ g f g bes es ] | % 10
			 as,8 [ g f g as es ] | % 11
			 d8 [ es f d bes as ] | % 12
			 g8 [ bes es bes g bes ] | % 13
			 as8 [ es' bes es c es ] | % 14
			 bes8 [ es c es des es ] | % 15
			 c4 es as ~ | % 16
			 as4 f d' ~ | % 17
			 d4 bes g' ~ | % 18
			 g8 [ f es d c d ] | % 19
			 es2. | % 20

		 }
		 \repeat volta 2 {
			 g8 [ as bes g bes f ] | % 21
			 e8 [ d c e g bes ] | % 22
			 as8 [ f des g e c ] | % 23
			 bes8 [ g as c f a, ] | % 24
			 bes8 [ d f as g f ] | % 25
			 g8 [ es d c b f' ] | % 26
			 es8 [ d c es a, g ] | % 27
			 fis8 [ g a fis d a' ] | % 28
			 d8 [ g, fis c' bes g ] | % 29
			 c,8 [ fis g a es c ] | % 30
			 bes8 [ d fis g a, fis' ] | % 31
			 g4 bes2-\mordent ~ | % 32
			 bes8 [ des e c g' bes, ] | % 33
			 as8 [ bes c as f e ] | % 34
			 f8 [ as b g d' f, ] | % 35
			 es8 [ f g es c b ] | % 36
			 c8 [ es fis d a' c, ] | % 37
			 b8 [ d f as g b ] | % 38
			 d8 [ f es c g b ] | % 39
			 c2. | % 40
		 }
	 }

	 sopranoTwo =   \relative bes' {
		 \repeat volta 2 { 
			 s2.*19 | % 1
			 r8 bes8 g2 | % 20
		 }
		 \repeat volta 2 {
			 s2.*19 | % 1
			 r8 g8 es2 | % 20
		 }
		 
	 }

  soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bass = \relative as, {
		 \repeat volta 2 { 
			 c4 c' g  | % 1
			 as as, r4 | % 2
			 as'4 f d | % 3
			 g4 g, r4 | % 4
			 c4 c' bes | % 5
			 as4 g f | % 6
			 bes,4 bes' as | % 7
			 g4 f es | % 8
			 as4 c f, | % 9
			 g4 bes es, | % 10
			 f4 as f | % 11
			 bes4 bes, d | % 12
			 es4 es, des' | % 13
			 c4 bes as | % 14
			 g4 f es | % 15
			 as8 [ es' as g f es ] | % 16
			 d8 [ f bes as g f ] | % 17
			 g8 [ bes es des c bes ] | % 18
			 as4 bes bes, | % 19
			 es4. bes'8 es4 | % 20

		 }
		 \repeat volta 2 {
			  e,4 es' des | % 21
			  c4 e, c | % 22
			  f4 bes, c | % 23
			  f,4 f' es | % 24
			  d4 bes d | % 25
			  es4 es' d | % 26
			  c4  a c | % 27
			  d4 d, c | % 28
			  bes4 a g | % 29
			  es'4 d c | % 30
			  d4 c d | % 31
			  g,8 [ d' g bes des f, ] | % 32
			  e4 c e | % 33
			  f8 [ g ] as4 r4 | % 34
			  b,4 g b | % 35
			  c8 [ d ] es4 r4 | % 36
			  fis,4 d fis | % 37
			  g4 d' es | % 38
			  as,4 f g | % 39
			  c4. g'8 c4 | % 40
		 }

}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key es \major \time 3/4 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key es \major \time 3/4 \bass }
    >>
    \layout{  }
    \midi { }

}
