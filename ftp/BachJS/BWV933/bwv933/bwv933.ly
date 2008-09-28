\version "2.11.57"

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
        subtitle = "\"Sechs kleine Präludien\""
        piece = "Bwv 933"
        mutopiatitle = "Praeludium Nr. 1"
        composer = "Johann Sebastian Bach (165-1750)"
        mutopiacomposer = "BachJS"
        opus = "BWV 933"
        date = "1717-1723?"
        mutopiainstrument = "Clavier"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "Hajo Dezelski"
		maintainerWeb = "http://www.roxele.de/"
        maintainerEmail = "dl1sdz (at) gmail.com"
 footer = "Mutopia-2008/09/28-1537"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
	}

     sopranoOne =   \relative e' {
		 \repeat volta 2 { 
			 e4 r8 f8 g4 r8 c8 | % 1
			 f,8 \mordent[ f ] d' [ f,] f [ e ] r4 | % 2
			 d4 \mordent r8 e8 f4 r8 f8 | % 3
			 e8 [ g ] g16 [ f g a ] \appoggiatura e8 d4-\prall-\turn r16 g16 [ b d ] | % 4
			 e16 [ d c b ] a [ g fis e ] fis [ d fis a ] fis [ d fis a ] | % 5
			 d16 [ c b a ] g [ fis e d ] e [ c e g ] e [ c e g ] | % 6
			 c16 [ b a g ] fis [ g a fis ] d [ e fis g ] a [ b c a ] | % 7
			 d8 [ g,] b16 [ a g fis ] g [ d b8 ] r4 | % 8
		 }
		 \repeat volta 2 {
			 b'4 r8 c8 d4 r8 e8 | % 9
			 f8 [ f ] f [ e ] d [ c ] r4 | % 10
			 <c g'>4 r8 bes8 a4 \mordent r8 a'8 | % 11
			 b8 [ c ] f, [ e ] \appoggiatura f16 e8 [ d ] r16 g,16 [ b d ] | % 12
			 g16 [ f e d ] c [ bes a g ] a [ f a c ] a [ f a c ] | % 13
			 f16 [ e d c ] b [ a g f ] g [ f g d'] g, [ f g d'] | % 14
			 e16 [ d c b ] a [ g f e ] d [ f a c ] b [ g b d ] | % 15
			 g8 [c, ] e16 [ d c b ] c [ g e c ] r4 | % 16
		 }
	 }

	 sopranoTwo =   \relative g {
		 \repeat volta 2 { 
			 <g c>4-\mordent  s8 d'8 <c e>4 \mordent s8 e8 | % 1
			 d8 [ d ] r8 d8 d [ c ] s4 | % 2
			 b4 s8 c8 d4 s8 d8  | % 3
			 c8 [ e ] c [ c ] \appoggiatura c8 b4 s4  | % 4
			 s1 | % 5
			 s1 | % 6
			 s1 | % 7
			 s1 | % 8
		 }
		 \repeat volta 2 {
			 <d g>4-\mordent s8 a'8 <g b >4 \mordent s8 c8 | % 9
			 d8 [ d] d [ c ] b [ a ] s4 | % 10
			 g4 s8 g8 f4 s8 c'8 | % 11
			 f8 [ e ] d [ c ] c [ b ] s4 | % 12
			 s1 | % 13
			 s1 | % 14
			 s1 | % 15
			 s1 | % 16
		 }
		 
	 }

  soprano = << \sopranoOne \\ \sopranoTwo>>

%%
%% Bass Clef
%% 

bass = \relative c, {
		 \repeat volta 2 { 
			 r16 c16 [ e g ] c4 r16 c,16 [ e g ] c4  | % 1
			 r16 c16 [ d c ] b [ d g, b ] c [ c, e g ] c [ d e f ] | % 2
			 g16 [ g, b d ] g4 r16 g,16 [ b d ] g4 | % 3
			 r16 g,16 [ c e ] e,8 [ f ] g16 [ g' d b ] g8 [ g'] | % 4
			 c,8 [ g' c, a'] d, [ a' c, a'] | % 5
			 b,8 [ a' b, g'] c, [ g' b, g'] | % 6
			 a, [ g' a, g'] fis [ a fis d ] | % 7
			 b8 [ e c d ] g8 r16 g16 g,4 | % 8
		 }
		 \repeat volta 2 {
			 r16 g16 [ b d ] g4 r16 g,16 [ b d ] g4 | % 9
			 r16 a16 [ b a ] gis16 [ b e, g ] a [ a, c e ] a [ b c d ] | % 10
			 e16 [ e, g c ] e4  r16 f,16 [ a c ] f [ e f e ] | % 11
			 d16 [c d c ] b [ g c e] g [ fis g d ] b [ d g, b ] | % 12
			 e,8 [ c' e, c'] f, [ c' e, c'] | % 13
			 d,8 [ b' c, a'] b,8 [ f' e d ] | % 14
			 c8 [ e f a ] f [ d g f ] | % 15
			 e8 [ a f g ] c,4 c, | % 16
		 }

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
