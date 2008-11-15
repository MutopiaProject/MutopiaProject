% Created on Mon Oct 13 17:48:35 PDT 2008
\version "2.11.63"

\header {
	title = "Duetto I"
	composer = "J.S. Bach"
	opus = "BWV802"
        mutopiatitle = "Duetto I"
        mutopiacomposer = "BachJS"
        mutopiainstrument = "Harpsichord"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition / Ernst Naumann 1890"
        copyright = "Creative Commons Attribution-ShareAlike 3.0"
        maintainer = "H. Gillis"
        maintainerEmail = "canoeguy2005 - yahoo.ca"
	
 footer = "Mutopia-2008/11/15-1596"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } }
}

\include "english.ly"


staffHarpsichord = \new PianoStaff {
	\set PianoStaff.midiInstrument = #"harpsichord"
	\set PianoStaff.instrumentName = #""
		\time 3/8
					\override Score.MetronomeMark #'stencil = ##f
			\tempo 8 = 60 
			<<
		\context Staff = "RH" {  % Right hand 
			\clef treble
			\key e \minor
			\relative c' {e32 fs g a b cs ds e ds cs b a|%Page1
				g32 fs e16 r16 c'16 b as| 
				as32 b b,16 r16 bf' a gs| 
				gs32 a a,16 r32 a' c e a g fs e|
				ds [fs g16~] g32 [e as,16~] as32 a! fs' a,|
				a [fs g c] c [as b fs'] e [d e a,]|
				d32 cs b16 r8 r8 |
				r8 b8 b'|
				as a, a'|
				gs g, g'|
				fs gs as |
				b r8 b,~|
				b32 [gs a d] d [b c b'] a [g a ds,]|
				g8 r8 g,~|
				g32 [e fs b] b [g a g'] fs [e fs b,]|
				
				%page2
				e8 r8 e,~|
				e32 [cs ds g] g [e fs e'] ds [cs ds a]|%bar17
				g fs e16 r8 r8 |
				e32 fs g a b cs ds e ds cs b a |
				g fs e fs g a b c b a g fs|
				e fs g a b cs ds e ds cs b a|
				g fs e16 r16 c'' b as|
				as32 b b,16 r16 bf' a gs|
				gs32 a a,16 r32 a c e a g fs e|
				ds fs g16~ g32 e as,16~ as32 a fs' a,|
				gs [b c16~] c32 [a ds,16~] ds32 [e b' d]|
				cs [e f16~] f32 [d gs,16~] gs32 [g e' g,]|%bar27
				fs a bf16~ bf32 g cs,16~ cs32 d a' c|
				b a g a b c d e fs g fs e |
				d c b a g8 g'8|
				fs f, f'|
				
				%page3
				e8 ef, ef'|
				d e! fs |
				g, fs e|
				d32 e fs g a b cs d cs b a g|
				fs e d16 r16 bf' a gs|
				gs32 a a,16 r16 af'16 g fs|
				fs32 g g,16 r32 g'32 bf d g f e d|
				cs [e f16~] f32 [d gs,16~] gs32 g e' g,|%bar39
				g [e f bf] bf [gs a g'] f [e f b,]|
				e8 r8 e,~|
				e32 [cs d a'] a [fs gs e'] d [c d gs,]|
				c8 r8 c,~|
				c32 [as b fs'] fs [ds e c'] b [as b e,]|
				as8 r8 r8 |
				b32 cs d e fs gs as b as gs fs e|
				
				%page4
				d cs b cs d e fs g fs e d cs |%bar47
				b cs d e fs gs as b as gs fs e|
				d cs b cs d e fs g fs e d cs|
				b8 b' b,|
				as a'! a,|
				gs g'! g,|
				fs gs as |
				b cs ds |
				e, fs gs |
				a b cs |
				d32 c! b a gs fs! e ds e fs gs a|%bar57
				b c d16 r8 r32 d32 c b|
				a b c d e fs g a g fs e ds |
				c'a b16 r8 r32 a,32 g fs|%bar60
				e fs g a b cs ds e ds cs b a|
				g fs e16 r16 c'16 b as|
				as32 b b,16 r16 bf' a gs| 
				gs32 a a,16 r32 a' c e a g fs e|
				ds [fs g16~] g32 [e as,16~] as32 a fs' a,|
				g fs e fs g a b cs ds e ds cs|
				b a g fs e8 e'|
				ds d,! d'|
				cs c,! c' | 
				b cs ds~|
				d32 [as b16~] b32 [ds e16~] e32 ds a'16~ |
				a32 g fs e fs8 ds-\turn|
				e4.\fermata
				\bar "|."

			}
		}
		\context Staff = "LH" {  % Left hand 			
			\clef bass
			\key e \minor
			\relative c {r4.|
				r8 e,8 e'|
				ds8 d,! d'|
				cs8 c, c'|
				b cs ds |%bar5
				e d cs|
				b32 cs d e fs gs as b as gs fs e|
				d cs b16 r16 g'16 fs es|
				es32 fs fs,16 r16 f'16 e! ds|
				ds32 e e,16 r32 e'32 g b e d cs b|%bar10
				as32 [cs d16~] d32 [b es,16~] es32 e c' e,|
				e32 [cs d g] g [e fs e'] d [cs d gs,]|
				c!8 r8 c,~|
				c32 [a b fs'] fs [ds e c'] b a b e, |
				a8 r8 a,~|%bar15
				
				%page2
				a32 [fs g c] c [a b a'] g fs g cs,|%bar16
				fs8 r8 b,8|
				e32 fs g a b cs ds e ds cs b a|
				g fs e fs g a b c b a g fs |
				e fs g a b cs ds e ds cs b a|%bar20
				g fs e fs g a b c b a g fs|
				e8 e' e,
				|ds d'! d,|
				cs c'! c,|
				b cs ds|%bar25
				e fs gs|
				a, b cs |d e fs|
				g,32 a b c d e fs g fs e d c
				|b c a16 r16 ef'16 d cs
				| cs32 d d,16 r16 df'16 c b|%bar30
				
				%Page 3
				b32 c c,16 r32 c'32 ef g c bf a g|
				fs! [a bf16~] bf32 [g cs,16~] cs32 c a' c,|
				c [a b e] e [cs d a'] g [fs g cs,]|
				fs32 e d e fs g a b cs d cs b|
				a g fs e d8 d'8|%bar35
				cs c,! c'|
				b!8 bf, bf'|
				a b! cs |
				d r8 d,8~|
				d32 [b c f] f [ds e d'] c [b c fs,]|%bar40
				b8 r8 b,~ |
				b32 [gs a d] d [b c b'] a [g a ds,]|
				g8 r8 g,~|
				g32 [es fs b] b [gs as fs'] e [d e as,!]|
				d cs b16 r8 r8|%bar45
				
				%page4
				b32 cs d e fs gs as b as gs fs e|
				d cs b cs d e fs g fs e d cs |
				b cs d e fs gs as b as gs fs e| 
				d cs b16 r16 g'16 fs es|
				es32 fs fs,16 r16 f'! e ds|%bar50
				ds32 e e,16 r32 e' g b e d cs b|
				as [cs d16~] d32 [b es,16~] es32 e cs' e,|
				ds [fs g16~] g32 [e as,16~] as32 b fs' a|
				gs32 [b c16~] c32 [a ds,16~] ds32 d b' d,|
				cs [e f16~] f32 [d gs,16~] gs32 a e' g| %bar55
				f e d16 r8 r32 d e f!| 
				e d c b a gs fs e fs gs a b|
				c d e16 r8 r32 a b c|
				ds, fs g a b cs ds e ds cs b a|
				g fs e fs g a b cs ds e ds cs |%bar60
				b a g fs e8 e'|
				ds d,! d'|
				cs c,! c'|
				b cs ds |
				e,32 fs g a b cs ds e ds cs b a |%bar65
				g fs e16 r16 c'16 b as|
				as32 b b,16 r16 bf' a gs|
				gs32 a a,16 r32 a c e a g fs e|
				ds [fs g16~] g32 [e as,16~] as32 a fs' a,|
				gs8 g fs |%bar70
				e16 c' a8 b|
				e,4.\fermata
				\bar "|."

			}
		}
	>>
}



\score {
	<<
		\staffHarpsichord
	>>
	
	\midi {
	}

	\layout  {
		page-count=3
	}
}

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
}


