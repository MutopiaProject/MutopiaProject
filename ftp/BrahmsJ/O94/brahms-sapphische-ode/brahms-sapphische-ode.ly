\version "2.10.0"

%The following line is needed for correct letter-size pagination
#(set-global-staff-size 18)
\paper {
	print-page-number = ##t
	head-separation = 0\in
}

\header {
	title = "Sapphische Ode"
	composer = "Johannes Brahms (1833 – 1897)"
	poet = "Hans von Schmidt (1856 – 1923)"
	opus = "Op. 94, No. 4."

	%tagline = ""

	%mutopia-specific headers:
	mutopiatitle = "Sapphische Ode"
	mutopiacomposer = "BrahmsJ"
	mutopiapoet = "H. von Schmidt (1856-1923)"
	mutopiaopus = "O 94"
	mutopiainstrument = "Voice and Piano"
	date = "1884"
	source = "The University Society, 1904"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2006/Dec/06"
 footer = "Mutopia-2006/12/18-580"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

sopNotes = {
	\time 2/2 \key f \major \autoBeamOff
	R1^\markup{\large \bold "Zeimlich langsam"}_\markup{\italic \small "mezzo voce."} | a'4 f'4 c'4 a'4 |
	c''4 f'8 g'8 a'4 f'4 | c'4( g'4) f'4. r8 | bes'4 a'4 g'4 f'4 |
	e'4 f'8 c'8 e'4( f'8) c'8 | bes'2 a'4 r4 | r2 f''4 ees''4 |

	\time 3/2 des''4 c''4 b'4 c''8 aes'8 b'4( c''8) aes'8 | \time 2/2 g'2 g'4 r4 |
	\time 3/2 a'!1 ~  a'4 g'8 d'8 | \time 2/2 f'2\(\melisma e'4 \grace {f'16([ e']} d'8[) e'8]\)\melismaEnd | f'4 r4 r2 |
	R1*3 |
	a'4 f'4 c'4 a'4 | c''4 f'8 g'8 a'4 f'4 | c'4( g'4) f'4 r4 |

	bes'4 a'4 g'4 f'4 | e'4 f'8 c'8 gis'4( a'8) f'8 | d''2 c''4 r4 |
	r2 f''4 ees''4 | \time 3/2 des''4 c''4 b'4 c''8 aes'8 g'4( aes'8) f'8 |
	\time 2/2 d'2 c'4 r4 | \time 3/2 f'2( fis'2 a'4) g'8 d'8 | \time 2/2 f'!2\(\melisma e'4 \grace {f'16([ e']} d'8[) e'8]\)\melismaEnd |
	f'4 r4 r2 | R1 | R1^\fermataMarkup \bar "|."

}

rhNotes = {
	\time 2/2 \key f \major
	\slurUp
	r8 <f a c'>4( <f a c'>4 <f a c'>4 <f a c'>8 ~ | <f a c'>8 <f a c'>4 <f a c'>4 <f a c'>4 <f a c'>8) ~ | 
	<f a c'>8( <f a c'>4 <f a c'>4 <f a c'>4 <f a c'>8 ~ | <f a c'>8 <e bes c'>4 <e bes c'>4 <a c'>4 <f f'>8) ~ | <f f'>8( <bes f' bes'>4 <c' e' a'>4 <d' g'>4 <c' f'>8) |
	\slurNeutral
	r8 <b e'>8[ r8 <c' f'>8 r8 <gis e'>8 r8 <a f'>8] | r8 <bes f' bes'>8[ r8 <c' g' bes'>8 r8 <c' a'>8 r8 <a' c''>8] | r8 f''8-.([ r8 <f' ees'' f''>8-. r8 <f' des'' f''>8-. r8 <f' c'' ees''>8-.]) |

	\time 3/2 r8 <f' bes' des''>8-.([ r8 <f' aes' c''>8-. r8 <f' g' b'>8-. r8 <f' aes' c''>8-. r8 <f' g' b'>8-. r8 <f' aes' c''>8-.]) | \time 2/2 \slurUp r8 <b d' g'>8-.([ r8 <b d' g'>8-. r8 <c' g'>8-. r8 <c' g'>8-.]) |
	\time 3/2 r8 <a! c' f' a'!>4( <a c' f' a'>4 <a c' fis' a'>4 <a c' fis' a'>4 <a b f' a'>4 <g b f' g'>8) \slurNeutral | \time 2/2 r8 <a c' f'>4( <a c' f'>4 <g bes! e'>4 <g bes e'>8) | r8 <a f'>4( <f' a'>4 <e' a' c''>4 <ees' a' c''>8 ~ |
	<ees' a' c''>8) <d' bes'>4( <bes' d''>4 <a' d'' f''>4 <aes' d'' f''>8 ~ | <aes' d'' f''>8) <g' d'' f''>4( <f' g' d''>4 <d' f' b'>4 <b f' g'>8 ~ | <b f' g'>8 <c' e' bes'!>4 <bes e' g'>4 <g bes e'>4 <e bes c'>8) |
	\slurUp
	r8 <f a c'>4( <f a c'>4 <f a c'>4 <f a c'>8 ~ | <f a c'>8 <f a c'>4 <f a c'>4 <f a c'>4 <f a c'>8) ~ | <f a c'>8( <e bes c'>4 <e bes c'>4 <a c'>4 <f f'>8 ~ |

	<f f'>8 <bes f' bes'>4 <c' e' a'>4 <d' g'>4 <c' f'>8) | r8 <b e'>8-.([ r8 <c' f'>8-. r8 <b e' gis'>8-. r8 <c' f' a'>8-.]) | \slurNeutral r8 <d' bes'! d''>8-.[( r8 <f' bes' d''>8-. r8 <f' a' c''>8-. r8 <a' c''>8-.)] |
	r8 f''8-.([ r8 <f' ees'' f''>8-. r8 <f' des'' f''>8-. r8 <f' c'' ees''>8-.]) | \time 3/2 r8 <f' bes' des''>8-.[( r8 <f' aes' c''>8-. r8 <f' g' b'>8-. r8 <f' aes' c''>8-. r8 <b f' g'>8-. r8 <c' f' aes'>8-.)]  |
	\time 2/2 r8 <g b d'>4 <g b d'>4 <g bes c'>4 <g bes c'>8 | \time 3/2 r8 <a! c' f'>4 <a c' f'>8 r8 <a c' fis'>4 <a c' fis'>8 r8 <b d' f' a'>4 <g b f' g'>8 | \time 2/2 r8 <a c' f'>4 <a c' f'>8 r8 <g bes! e'>4 <g bes e'>8 | \clef bass
	r8 <a c' f'>4 <f a c'>4 <e a c'>4 <ees a c'>8 ~ | <ees a c'>8 <d f c'>4 <d f bes>4 <des f bes>4 <des e bes>8 ~ | <des e bes>4 <c f a>2.^\fermata |

}

lhNotesA = {
	\time 2/2 \key f \major \clef bass
	\oneVoice r2 \voiceOne c2( ~ | c2 a,2 ~ |
	a,1 | c2) \oneVoice <f, f>4( <f, e>4 | <f, d>4 <f, c>4 <f, bes,>4 <f, a,>4) |
	<f, gis,>4( <f, a,>4 <f, b,>4 <f, c>4 | <f, d>4 <f, d>4 <f, f>4) <f c'>4 | <f f'>4 <f ees'>4 <f des'>4 <f c' ees'>4 |

	\time 3/2 <f bes des'>4( <f aes c'>4 <f g b>4 <f aes c'>4 <f g b>4 <f aes c'>4) | \time 2/2 <f, f>2 <e, e>2 |
	\time 3/2 <ees, ees>2( <d, d>2 <g,, g,>2) | \time 2/2 c,2 ~ <c, c>2 ~ | \voiceOne c2( f2 ~ |
	f2 bes2) | g1 ~ | g2 c2 ~ |
	c2( a,2 ~ | a,1 | c2) \oneVoice <f, f>4( <f, e>4 |

	<f, d>4 <f, c>4 <f, bes,>4 <f, a,>4) | <f, gis,>4( <f, a,>4 <f, b,>4 <f, c>4 | <f, bes,>4 <f, d>4 <f, f>4) <f c'>4 |
	<f f'>4( <f ees'>4 <f des'>4 <f c' ees'>4) | \time 3/2 <f bes des'>4( <f aes c'>4 <f g b>4 <f aes c'>4 <f, b, f>4 <f, c f>4) |
	\time 2/2 <f, f>2( <e, e>2) | \time 3/2 <ees, ees>2( <d, d>2 <g,, g,>2) | \time 2/2 c,2 ~  <c, c>2 |
	<f, c>2 f,2 | <bes,, bes,>2 <f,, f,>2 | <f,, f,>1^\fermata |

}

lhNotesB = {
	\oneVoice
	s1 | \voiceTwo f,1 |
	a,,2 c,2 ~ | c,2 \oneVoice s2 | s1 |
	s1*3
	s1. | s1 |
	s1. | s1 | \voiceTwo f,1 |
	bes,1 | b,2( g,2 | c2 c,2) |
	f,1 | a,,2 c,2 ~ | c,2 \oneVoice s2 |
}

text = \lyricmode {
	Ro -- sen brach ich nachts mir am dunk -- len Ha -- ge;
	sü -- ßer hauch -- ten Duft sie als je am Ta -- ge,
	doch ver -- streu -- ten reich die be -- weg -- ten Ä -- ste,
	Tau, der mich nä -- ßte.
	
	Auch der Küs -- se Duft mich wie nie be -- rück -- te,
	die ich nachts vom Strauch dei -- ner Lip -- pen pflück -- te:
	doch auch dir, be -- wegt im Ge -- müt gleich je -- nen,
	tau -- ten die Trä -- nen.
}

dynamics = {
	s8\p s4. s2 s1
	s1 s1 s1
	s8 s8\> s8 s8 s8 s8 s8 s8 s8 s2. s8\! s1\pp

	s8\< s8 s8\! s8.   s16\> s8 s8 s8   s8 s8 s8 s8   s8 s8 s2 s4\!
	s8\< s4 s4 s8\! s8   s8\> s4 s8\! s8    s1    s8 s8\< s2.
	s2. s8\! s8   s8 s4\> s8 s2   s2. s4\!
	s1 s1 s1

	s1   s8 s8\< s2 s4\!  s2.\> s4\!
	s1\pp   s4\< s4 s8\! s8 s4\> s4 s8\! s8
	s2.\> s4\!   s8\< s4. s8\! s8   s8\> s4. s8\! s8   s1
	s8 s8\< s2 s4\!   s4\> s2 s4\!   s1\pp
}

\score {
	<<
		\context Staff = melStaff {
			\context Voice = mel { \sopNotes }
			\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
		}
		\lyricsto mel \new Lyrics \text

		\context PianoStaff <<
			\context Staff = rightHand {
				\rhNotes
			}
			\context Dynamics = dynamics \dynamics
			\context Staff = leftHand
			{
				<<
					\context Voice = lhA { \lhNotesA }
					\context Voice = lhB { \lhNotesB }
				>>
			}
		>>
	>>
	\layout {
		\context { \RemoveEmptyStaffContext }
		\context {
			\type "Engraver_group"
			\name Dynamics
			\alias Voice % So that \cresc works, for example.
			\consists "Output_property_engraver"
     
			\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"
     
			\override TextScript #'font-size = #2
			\override TextScript #'font-shape = #'italic
			\override DynamicText #'extra-offset = #'(0 . 2.5)
			\override Hairpin #'extra-offset = #'(0 . 2.5)
     
			\consists "Skip_event_swallow_translator"
     
			\consists "Axis_group_engraver"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
			\override VerticalAlignment #'forced-distance = #6.5
		}
		\context {
			\Staff
			\override SeparationItem #'padding = #0.3
		}
	}
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 68 4)
      }
    }


}
