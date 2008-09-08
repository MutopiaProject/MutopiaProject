\version "2.10.10"

\header {
	title = "Adagio"
	subtitle = "from Symphony No. 5 in F"
	subsubtitle = "Opus 42-1"
	composer = "Charles-Marie Widor"
	mutopiatitle = "Adagio"
	mutopiacomposer = "WidorC"
	mutopiaopus = "O 42-1"
	mutopiainstrument = "Organ"
	source = "Maison J. Maho and J. Hamelle, Paris, 1880"
	style = "Romantic"
	copyright = "Creative Commons Attribution-ShareAlike 3.0"
	maintainer = "Bart Golsteijn"
	maintainerEmail = "bartgolsteijn@hotmail.com"
	lastupdated = "2006/October/13"
 footer = "Mutopia-2008/09/08-1201"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\markup{ \column{ \line{ \bold{R.} "Gambe et Voix Céleste"} 
			          \line{ \bold{G.} "Fonds de 8', 16'"} 
				  \line{ \bold{Ped.} "Flute 4'"}}}

staffChurchOrgan = <<
	\new PianoStaff {
		\set PianoStaff.midiInstrument = #"church organ"
%		#(set-accidental-style 'piano)
		<<
			\time 4/4
			\context Staff = "RH" {  % Right hand 
				\clef treble
				\key c \major
				\relative c' {
					<< {c'8^\markup { \bold "Adagio (" \tiny \note #"8" #1.0 "= 63)"} b a4 b8 c d4 | g,8 a16 b c8 b16 a g8 a fis g16 fis | f4 e8 c'~ c16 d b a a8 g | } \\
					{\once \override TextScript #'extra-offset = #'( -6.0 . 1.5 ) e4_\markup{\vcenter {\bold{R} \fontsize #10 "{"}} \p f8 d16 e f4. g16 f | e2. d4 | d c8 d16 c e4 d |}
					>> 
					<< {d16 c b d c d e8~ e fis16 g fis g32 a b16 g | c8 b a4 b8 c d4~ | d16 b c b a4 b8 c d4~ |} \\
					   {b,16 a g8~ g e16 g a4 c8 b16 g'32 f | e4 f8 d16 e f4. g16 f | e4. d16 e f4. g16 f |}
					>> 
					<< {d'8[ c] f c4 bes16 c bes8 a | e'[ d] g d4 \stemDown fis,4 g8 | \stemUp b'8 b a gis16 r f8 e d c~ |} \\
					   {e,8 g f4 g8 e4 f8 | fis a g4 a8 \stemUp c16[ d] c8 b~ | \stemDown b4 d b4. a16 g! |}
					>> 
					<< {c8 bes16. a32 a8 gis16 a e8 e f e^\markup{\italic{rit.}} | es^\markup{\italic{a tempo}} as bes as~ as ges16 as ges8 f~ | f es16 es des'8 as~ as16 as ges as f4 | } \\
					   {f4 e8 d16 c b!8 gis16 d' c4~ | c des es4. des8 | c4 des8 f es4. d16 c |}
					>> 
					<< {bes'4 g^\markup{\italic{cresc.}} c as | d2.~ d16 d \appoggiatura{fis} e d | d8 d g d~ d e16 d c8 b16 a | d8 d4 c8 b16 a b8 a ais |} \\
					   {bes,8 f'4 es8 c g'4 f8 | d a' bes a16 bes f8 b fis\> c'\! | b4 \p g a4. fis8 | g4 fis g fis8 e | }
					>> 
					<< {b'8 b c b r c16 fis, fis8 e | a a bes a r8 bes16 e, e8 d | g8 g4^\markup{\italic{cresc.}} as8[ a] a4 b8 |} \\
					   {dis,4 e dis4. e16 d | cis4 d cis4. d16 c | b8 d c es16 d c es f ges f8 as16 ges |}
					>> 
					<< {b16 b c d~ d c d es~ es d es f~ f b,8 g16~ | g8 g~ g16 f a c g4. \appoggiatura{b16} a16 g | g8~[ \times 2/3 {g16 a b]} c8 b16 a g4~ g16 g \appoggiatura{b} a g } \\
					   {f8 es16 as g8 f16 bes as8 \< g16 c b as g f \! | e8 \f d c4 d8. e16 e f8. | e2 d8 c16 d b4 |}
					>> 
					<< {g'8 g4 g8~ g16 a bes c c4~ | c2~ c8 c, \appoggiatura{e} d[ c16 d] | g,8 g a b c d e f | g1~ | g16 a bes b c2.~ |} \\
					   {c,4 b bes g16 e' d e | c8 c4 c r8 r4 | s2 c2~ | c8 b a b g a8.[ c16] b8 | c4. e8 g c,8.[ g'16] f8 | }
					>> 
					<< {c'16 a bes b c2.~ | c8 g'4.~ g8 c,4.~ | c2 <c, e>4 <c e> | <c e>1 \fermata} | \\
					{e4. d16 c g'8 c,8.[ g'16] \appoggiatura{a8} f8 | e4. e16 f g4~ g16 g f16. e32 | e2 s2 | }
					>> 
				}
			}
			\context Staff = "LH" {  % Left hand 			
				\clef bass
				\key c \major
				\relative c {
					<< {g'4 c d8 c b4 | c2 g8 c4 b8 | c16 b a g g4. c8 c[ b] |} \\
					   {c,1~ | c2 e8 c g4 | g1~ |}
					>> 
					<< {r2 r4 r8 r16 g' | g4 c d8 c b4 | c8^\markup{\italic{poco cresc.}} g f16 e f e d8 d'16 c b4 |} \\
					   {g,2.~ g8. a32 b | c1~ | c1~ |}
					>> 
					<< {bes'4. a16 bes c2~ | c4. b16 c d2~ | d8 d f e d e16 f f8 e~ |} \\
					   {c,8 e d4 e8 c f8. e16 | d8 fis e4 fis8\< d g8. fis16\! | f4_\markup{\italic{cresc.}} e gis a |}
					>> 
					<< {e'8 d c b16 a gis8 e e8. f16 | ges4 f as4.. bes16 | as g as8 as2 as4~ |} \\
					   {d,4 e4. d16 b a8.\f\> r16\! | r8 \pp as4 as16 bes c4 des | ges4 f8 des16 bes c8 as4 bes16 c |}
					>> 
					<< {as'8 g16 f es8 bes'4 as16 g f8 c'~ | c c bes16 c d4 d d8~ | d b c4 c2 | b4 d2 r4 |} \\
					   {d,4 es8 d16 es e4 f8 e16 f | fis8 eis16 fis g8 fis16 g gis8 fisis16 gis a8 gis16 a | d,1~ | d2.~ d8 c |}
					>> 
					<< {r16 c' b fis a8 g a16 g fis a g4 | r16 bes a e g8 f g16 f e g f4 | r16 es f d es8 c16 d es8 c' d f,16 es |} \\
					   {b2.~ b8 bes | a2.~ a8 as | g1~ |}
					>> 
					<< {d'8 g16 f es8 as16 g f8 bes16 as g f es d | c8 b a4 b8 c d4 | c~ c16 c e a f8 e d4 |} \\
					   {g,1 | c,1~ | c4~ c16 c'8.~\noBeam c2~ |} % TODO
					>> 
					<< {e4 g2. | f4 e es d | c g'2.~ | g1~ | g4. \stemDown g8 bes4 a |} \\
					   {c,4 d e2 | c1 | g1~ | g1~ | g4 r4 r2 |} \\
					   {s1 | s1 | s1 | d'4~ d16 c d g, d'8 c8.[ d16] f8 | e4. s8 s2}
					>> 
					g4. f16 e bes'4 a | g16 a bes b c4~ c8 c4. | c2 <g, c e g>4 <g c e g> | <g c e g>1 \fermata \bar "|."
				}
			}
		>>
	}
	\new Staff {  % Pedal 	
%		#(set-accidental-style 'modern)
		\set Staff.midiInstrument = #"church organ"
		\clef bass
		\key c \major
		\relative c {
			R1 | c8^"Ped Solo" b a4 b8 c d4 | g,8 a16 b c8 b16 a g8[ a] fis g16 fis |
			f4 e8 c'~ c16 d b a a8 g16 r | R1 | R1 |
			R1 | R1 | R1 |
			R1 | R1 | R1 |
			R1 | R1 | g'8 fis e4 fis8 g a4 | b a g d8 r |
			R1 | R1 | R1 |
			R1 | R1 | << {c'8 b a4 b8 c d4 |} \\ {R1 |} >> 
			<< {e4^\markup{Ped. \bold{R}} d c bes | a g fis f | e es8 d c b a4 |} \\ {c,4 d e2 | f4 g as2 | g4 r r2 |} >> g4^\markup{Ped. \bold{R G}} f e8 es d4 |
			<< {s1 | s1 | r4 r8 c''8 bes4 as | g1~ | g} \\ {c,,1~ | c~ | c~ | c2 c4 c c1 \fermata } >>  
		}
	}
>>

\score {
	<<
		\staffChurchOrgan
	>>
	
	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 60 4)
		}
	}

	\layout  {
	}
}

\paper {
}


