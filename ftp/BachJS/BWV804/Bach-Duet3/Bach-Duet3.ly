% Created on Sat Oct 11 17:50:42 PDT 2008
\version "2.11.63"

\header {
	title = "Duetto III"
	composer = "J.S. Bach"
	subtitle = "BWV 804"
        mutopiatitle = "Duetto III"
        mutopiacomposer = "BachJS"
        mutopiainstrument = "Harpsichord"
        mutopiaopus = "BWV 804"
        style = "Baroque"
        source = "Bach-Gesellschaft Edition / Ernst Naumann 1890"
        copyright = "Public Domain"
        maintainer = "H. Gillis"
        maintainerEmail = "canoeguy2005 - yahoo.ca"
 	
 footer = "Mutopia-2008/11/21-1597"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "english.ly"


staffHarpsichord = \new PianoStaff {
	\set PianoStaff.midiInstrument = #"harpsichord"
	\set PianoStaff.instrumentName = #""
		\time 12/8
				<<
		\context Staff = "RH" {  % Right hand 
			\clef treble
			\key g \major
			\relative c'' {r4. g16 fs e d b'8 a r8 r8 g16 fs e d c'8\noBreak |b r8 r8 d16 b a g e' c d b a g c a c b a g a fs|\break
				g d e fs g a b d c b c a b g a b c d e g fs e d cs\noBreak|a' d, e fs g a b a g fs g e fs a g fs e d cs d e fs g8~|\break
				g16 e fs d cs d g,8 f'4 ~ f16 d e c b c fs,8 e'4~\noBreak|
				e16 c d b a b e, b' c a g a d, a' b g fs g c, g' a fs e fs\break|b, d e fs g a b d c b a g fs g a b c d e a g fs e d|\noBreak
				g d e fs g a b g fs g c, a' b, g' fs g a, c fs, g a b c8~\break| c8 b r8 d16 b a g e'8 d r8 r8 c16 b a g g'8|\noBreak
				fs8 r8 r8 g16 fs e d b' g a fs e d g e g fs e d e cs \break|d4.~d16 fs, g e d e c'4.~c16 e, fs d cs d|\noBreak
				%Page2
				b'4.~ b16 e, ds e fs g a8 b c~ c16 b a g fs e\break|ds16 e fs g a8~ a16 fs g e ds e b e g e ds e b e g e d e|\noBreak
				cs16 d e fs g8~ g16 e fs d cs d a d fs d cs d a d fs d c! d\break|
				b16 c d e f8~ f16 e ds e a e c' a gs a ds a fs'!8 b, a\noBreak|g16 b cs ds e fs g b a g fs e ds cs ds e fs g a fs e ds cs b|\break
				e g fs e a fs g b a g a fs g b a g fs e ds e fs b, a'8~\noBreak|a8 g r8 b,16 g fs e c'8 b r8 r8 a16 g fs e e'8|\break
				ds8 r8 r8 e16 d cs b g' e fs d cs b e cs e d cs b cs as\noBreak|b4.~ b16 as b d cs e d8 b cs\prall d gs b|\break
				d,4.~ d16 gs, a c b d c8 a b\prall c fs a\noBreak| c,4.~ c16 a b g fs g e b' c a g a fs c' d b a b|\break
				g d' e c b c a e' f d c d b8 g'4~ g16 c, f e d c \noBreak| b16 c b a g f e g f e d c b c d e f g a d c b a g |\break 
				%page3
				c16 g a b c d e g f e f d e c' b c a f g c, b c f8~\noBreak|f16 d e c b c fs8 a c~ c16 c, d b a b e,8 d'4~|\break
				d16 b c a gs a e' b c a gs a fs' c d b a b g' d e c b c\noBreak| a' g fs e d c b d c b a g fs e' d c b a g fs e d b'8|\break
				a8 r8 r8 r16 a,16 b c d e fs g a b c d g, fs e d c'8\noBreak| b r8 r8 r4. r4. d16 b a g e' c|\break
				d16 b a g c a b d c b c a b g fs e a fs g b a g a fs \noBreak|g e d c f d e g f e f d e f g a d, f e a b c e, g|\break
				fs!16 g a b e, g fs b c d fs, a g a b c fs, a g c d e g, b\noBreak|a g a b c d c b a g f'8 e r8 r8 d16 cs b a g'8|\break
				fs8 r8 r8 a16 fs e d c'8 b16 g a b e, g c, fs g a d, fs\noBreak|b,16 d e f b, d g, b c d g, b d, g a b d, g b, d e f b, d|\break
				g,8 r8 r8 e'16 d c b f'8 e r8 r8 g16 fs e d c'8\noBreak| c8\mordent r8 r8 c16 b a g e' c d b a g c a c b a g a fs \noBreak|
				g1\fermata
				\bar "|."

				
			}
		}
		\context Staff = "LH" {  % Left hand 			
			\clef bass
			\key g \major
			\relative c {g8 b d g b g d fs a d fs, d |g d b g b c b e fs g d' d,|
				g r8 r8 d16 b a g e'8 d r8 r8 c16 b a g g'8|fs8 r8 r8 g16 fs e d b' g a fs e d g e g fs e d e cs|
				d8 d' a b16 c d b g b c,8 c' g a16 b c a fs a|
				b,8 b' fs g a e fs g d e fs d|g r8 r8 g,16 fs e d b'8 a r8 r8 g16 fs e d c'8|
				b8 r8 r8 d16 b a g e' c d b a g c a c b a g a fs |g d e fs g a b d c b c a b g a b c d e g fs e d cs|
				a'16 d, e fs g a b a g fs g e fs a g fs e d cs d e fs g8~| g16 e fs d cs d b'4.~b16 d, e c b c a'4.~|
				%Page2
				a16 fs g e ds e c'4.~ c16 b a g fs e ds8 e c|b8 b'16 a g fs e8 e, fs g b a g e e'|
				a,16 b cs d e cs d8 d, e fs a g fs d d'|
				g,16 a b c d b c8 c'8 fs,! a ds, fs b,16 cs ds e fs d|e8 e, r8 e'16 ds cs b g'8 fs r8 r8 e16 ds cs b a'8|
				g8 r8 r8 b16 g fs e c' a b g fs e a fs a g fs e fs ds|e b cs ds e fs g b a g a fs g e fs g a b cs e ds cs b as|
				fs' b, cs ds e fs g fs e d e cs d8 d, g e fs fs,|b16 fs' gs as b cs d cs d b as b fs b d b as b f b d b a b|
				e,16 b' e d c b a b c a gs a e a c a gs a ef a c a gs a|d, a' d c b a g8 g, b c a c d b d|
				e c e f a, f'~ f16 e f b, a b e8 a f|g g, r8 c16 b a g e'8 d r8 r8 c16 b a g f'8|
				%page3
				e8 r8 r8 g16 e d c a' f g e d c f d f e d c d b| c8 c' g a16 b c a g fs b8 b, fs' gs16 a b gs fs e|
				a,8 a' b c a c d b d e c a | fs d r8 g16 fs e d b'8 a r8 r8 b16 d c b a g|
				fs16 e' d c b a g fs e d c'8 b r8 r8 r16 d,16 c d e fs |g a b c d e d b a g e' c d b a g c a b d c b c a|
				b g fs e a fs g b a g a fs g b a g c a b g fs e fs ds |e g f e a f g e d c d b c8 c' b c a c|
				d,8 d' cs d b d e, e' ds e c e| fs,8 e d g c,16 b a g  c g' a b c d e8 d,16 cs b a|
				d16 a' b cs d e fs8 g,16 fs e d g8 e c a d d,|g8 r8 r8 r16 d''16 e f b, d g, b c d g, b d, f g a d, f|
				b,16 d e f b, d g,8 a b c16 d e fs g a b d c b a g|fs a g fs e d g8 e c g' b, e c d d,|
				g1\fermata
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
		page-count=4
		\context {  } 
	}
}

\paper {
    page-top-space = #0.0
    %indent = 0.0
    line-width = 18.0\cm
    ragged-bottom = ##f
    ragged-last-bottom = ##f
