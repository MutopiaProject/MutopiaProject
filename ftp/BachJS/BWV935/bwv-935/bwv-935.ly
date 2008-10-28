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
        subtitle = "\"Sechs kleine Präludien\""
        piece = "Bwv 935"
        mutopiatitle = "Praeludium Nr. 3"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 935"
        date = "1717-1723?"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2008/10/28-1573"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
	}

     soprano =   \relative d' {
		 \repeat volta 2 { 
			d16 [ cis d a d f ] | % 1
			e16 [ d e a, e' g ] | % 2
			f8 [ a a ] | % 3
			a4.-\pralldown  | % 4
			a16 [ bes a f' d a ] | % 5
			bes16 [ a bes g bes d ] | % 6
			e16 [ f e c g' bes, ] | % 7
			a16 [ g a f a c ] | % 8
			d16 [ es d c d bes ] | % 9
			c16 [ d c bes c a ] | % 10
			bes16 [ c bes a bes g ] | % 11
			a16 [ bes a g a f ] | % 12
			bes8 [ g' g, ] | % 13
			a8 [ f' f, ] | % 14
			d'8 [ f bes, ] | % 15
			c8 [ f a, ] | % 16
			g16 [ a b c d e ] | % 17
			f16 [ aes g f e d ] | % 18
			e16 [ g f e d c ] | % 19
			bes16 [ d c bes a g ] | % 20
			a16 [ bes a g a f ] | % 21
			d8 g8. [ a32 bes ] | % 22
			f8 e4 \trill | % 23
			f4. | % 24

		 }
		 \repeat volta 2 {
			a'16 [ bes a c a f ] | % 25
			g16 [ a g c g e ] | % 26
			f16 [ a g f e d ] | % 27
			e16 [ d c d e f ] | % 28
			g8 [ fis16 g a fis ] | % 29
			g8 [ d es ] | % 30
			c16 [ es d c bes a ] | % 31
			bes16 [ a g a bes g ] | % 32
			a16 [ g a d bes d ] | % 33
			fis,16 [ e fis d' g, d'] | % 34
			a16 [ g a d g, d' ] | % 35
			fis,16 [ e fis d' a c ] | % 36
			bes16 [ a bes d e g ] | % 37
			a,4 a'8 | % 38
			d,16 [ f8 e16 d cis ] | % 39
			d16 [ e f e f d ] | % 40
			cis 8 a'4 ~ | % 41
			a8 [ d, c ~] | % 42
			c8 bes4 ~ | % 43
			bes16 [ a g f e cis' ] | % 44
			d16 [ e d cis d f ] | % 45
			g,8 [ cis e ~] | % 46
			e16 [ bes a g f e ] | % 47
			d4. | % 48
			 
		 }
	 }


%%
%% Bass Clef
%% 

bass = \relative c, {
		 \repeat volta 2 { 
			r1*3/8 | % 1
			r1*3/8 | % 2
			d'16 [ cis d a d f ]  | % 3
			e16 [ d e a, e' g ] | % 4
			f8 [ d f ] | % 5
			g8 [ g, ] r8 | % 6
			r8 c8 [ e ] | % 7
			f8 [ f, ] r8 | % 8
			bes'8 [ g' g, ] | % 9
			a8 [ f' f, ]  | % 10
			g8 [ e' e, ] | % 11
			f8 [ c' es ] | % 12
			d16 [ es d c d bes ] | % 13
			c16 [ d c bes c a ] | % 14
			bes16 [ c bes a bes g ] | % 15
			a16 [ bes a g a f ] | % 16
			b8 [ d f ] | % 17
			d8 [ b g ] | % 18
			c8 [ g e ] | % 19
			c8 [ d e ] | % 20
			f16 [ e f c f a ] | % 21
			bes16 [ a bes g bes d ] | % 22
			c16 [ d c bes a g ] | % 23
			<< { a4. } \\
			{r16 f16  [ c a ] f8 } 
			 >> | % 24

		 }
		 \repeat volta 2 {
			f''8 [ f, f' ] | % 25
			e8 [ a, c ] | % 26
			d8 [ b g ] | % 27
			c8 [ e, g ] | % 28
			c,16 [ d c es c a ] | % 29
			bes16 [ c bes d bes g ] | % 30
			a16 [ c bes a g fis ] | % 31
			g16 [ a bes c d e ] | % 32
			fis8 [ d g ] | % 33
			a8 [ d, bes' ] | % 34
			c8 [ d, bes' ] | % 35
			a8 [ d, fis ] | % 36
			g16 [ fis g bes g e ] | % 37
			cis16 [ b cis e cis a ] | % 38
			f8 [ g a ] | % 39
			d16 [ cis d a d f ] | % 40
			e16 [ d e a, e' g ] | % 41
			fis16 [ e fis d fis a ] | % 42
			g16 [ fis g d g bes ] | % 43
			cis,8 [ a g' ] | % 44
			f16 [ g f e f d ] | % 45
			bes'16 [ c bes a bes g ] | % 46
			f8 [ g a ] | % 47
			<< { f4.} \\
			{ r16  d16 [ a f ] d8 } 
			 >> | % 48
				 }

}


%% Merge score - Piano staff

\score {
    \context PianoStaff <<
        \set PianoStaff.instrumentName = "Clavier  "
        \set PianoStaff.midiInstrument = "harpsichord"
        \new Staff = "upper" { \clef "treble" \key f \major \time 3/8 \soprano  }
        \new Staff = "lower"  { \clef "bass" \key f \major \time 3/8 \bass }
    >>
    \layout{  }
    \midi { }

}
