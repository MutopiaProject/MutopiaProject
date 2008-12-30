\version "2.10.0"

#(set-global-staff-size 18)

\paper {
	top-margin = 0.25\in
	bottom-margin = 0.25\in
	print-page-number = ##t
	ragged-last-bottom = ##f
	head-separation = 0\in
	system-count = 11
}

\header {
	title = "Als die alte Mutter"
	composer = "Antonín Dvořák (1841 – 1904)"
	opus = "Op. 55, No. 4."
	copyright = "Public Domain"

	%mutopia-specific headers:
	mutopiatitle = "Als die alte Mutter"
	mutopiacomposer = "DvorakA"
	mutopiapoet = ""
	mutopiaopus = "O 55"
	mutopiainstrument = "Voice and Piano"
	date = "1880"
	source = "The University Society, 1904"
	style = "Romantic"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2006/Dec/06"
 footer = "Mutopia-2006/12/18-584"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


pedSempre = \markup {\musicglyph #"pedal.Ped" \italic " sempre"}

sopNotes = \relative c'' {
	\oneVoice
	R2*4
	R2*4
	\set Staff.timeSignatureFraction = #'(2 . 4)
	d4 cis8([ b]) | d4 cis8([ b]) | d8( g4 g,8) | g4 r4 |
	cis4 b8([ a]) | \pageBreak cis4 b8([ a]) | cis8( fis4 fis,8) | fis4 r4 |
	
	b4 b | cis8([ d]) e([ fis]) | g4.( cis,8) | cis4. r8 |
	d4. d8 | cis4 b | a2 | a4 r4 |
	R2*4
	d4 cis8([ b]) | d4 cis8([ b]) | \times 2/3 {d16([ e fis]} g4 g,8) | g4 r4 |
	
	cis4 b8([ a]) | cis4 b8([ a]) | \times 2/3 {cis16([ d e]} fis4 fis,8) | fis4 r4 |
	b4^\< b | cis8([ d]) e([ fis])\! | g2( | fis4) e | dis4. dis8 |
	fis4( e8[ d!]) | cis4 cis | e8([ cis]) b([ g!]) | \grace {fis16([ g]} a2) | a4 r4 |
	R2*4
}
sopDynamics = {
	\oneVoice
	s2*4
	s2*4
	s4^\p s4^\markup{\hspace #0.3 \italic "mezza voce"} s2*3
	s2*4

	s2^\<   s4. s8\!    s16^\f s8.^\> s8 s8\!   s2
	s2^\> s4. s8\!  s2^\p  s2
	s2*4
	s2^\p s2*3
	
	s2*4
	s2 s4. s8 s2*2 s16^\f s8^\< s4 s8\!
	s2 s2^\markup{ \italic "dim."} s2 s2^\pp s2
}

text = \lyricmode {
	Als die __ al -- te __ Mut -- ter
	mich noch __ lehr -- te __ sin -- gen,
	Trä -- nen in __ den __ Wim -- pern
	gar so oft ihr hin -- gen.
	
	Jetzt, wo __ ich die __ Klei -- nen
	sel -- ber __ üb’ im __ San -- ge,
	rie -- selt’s in __ den Bart __ oft,
	rie -- selt’s oft __ von der brau -- nen Wan -- ge.
}

dynamics = {
	s2.\mf s2. s2. s2.-\markup{"dim."}
	s2. s2. s2.\pp s2.
	s2.\pp s2. s2. s2.
	s2. s2.   s8  \once \override Hairpin #'Y-extent = #'(1 . 3.5)  s4\> s4.  s4. s4 s8\!
	
	s2.\< s4. s4 s8\!   s2.\f   s2.-\markup{"dim."}
	s2.\>   s4. s4 s8\!   s2.\p   s2.
	s2. s2.   s2.\>   s4. s4 s8\!
	s2.\pp s2. s2. s2.
	
	s2. s2. s2. s2.
	s8\< s4 s4 s8\!   s2.-\markup{"cresc."}  s2. s2.   s8\f s4\< s4 s8\!
	s2. s2.-\markup{"dim."} s2. s2.\pp s2.
	s2.\<   s4. s4 s8\!  s2.-\markup{"morendo"} s2.
}

rhOne = {
	\time 6/8 \clef treble \key d \major
	\set tieWaitForNote = ##t
	\oneVoice
	%Page 1 Line 1
	\once \override Score.RehearsalMark #'extra-offset = #'(6.0 . 4.0) \mark \markup {\large \bold "Andante con moto." }
	r8 <g' cis'' g''>4^>( \grace{fis''16[ g'']} <fis' cis'' fis''>4 <e' cis'' e''>8-) |
	r8 <g' cis'' g''>4^>( \grace{fis''16[ g'']} <fis' cis'' fis''>4 <e' cis'' e''>8-) |
	d''4.( \grace{cis''16[ d'']} cis''4 b'8) |
	d''4.( \grace{cis''16[ d'']} cis''4 b'8) |

	%Page 1 Line 2
	cis''4.( \grace{b'16[ cis'']} b'4 a'8) |
	cis''4.( \grace{b'16[ cis'']} b'4 a'8) |
	b'4.( \grace{a'16[ b']} a'4 g'8) |
	fis'2. | 

	%Page 1 Line 3
	\voiceOne
	fis'2. | fis'2. | b'2. | a'2. | 
	%Page 1 Line 4
	g'2. | g'2. | fis'2. | fis'2. | 
	
	%Page 2 Line 1
	\oneVoice
	r8 <d' fis' b' d''>4 ~ <d' fis' b' d''>8 <d' fis' b' d''>4 |
	r8 <fis' b' d'' fis''>4 <e' cis'' e''>4 <d' b' d''>8 |
	r8 <e' g'! cis''>4 ~ <e' g' cis''>8 <e' g' cis''>4 |
	r8 <g' cis'' g''>4 ~  <g' cis'' g''>8 <g' cis'' g''>4 |
	%Page 2 Line 2
	r8 <fis' b' d'' fis''>4 ~ <fis' b' d'' fis''>8 <fis' b' d'' fis''>4 |
	r8 <d' g' b' d''>4 ~ <d' g' b' d''>8 <e' b' cis'' e''>4 |
	<fis' a' d'' fis''>4.\arpeggio( \grace{e''16[ fis'']} e''4 d''8) |
	<fis' a' d'' fis''>4.\arpeggio( \grace{e''16[ fis'']} e''4 d''8) | 
	%Page 2 Line 3
	\voiceOne
	s4. d''4. | d''4. d''4. |
	\oneVoice
	fis'2.^> ~ | fis'2. | 
	%Page 2 Line 4
	\voiceOne
	fis'2. | fis'2. | b'4. \oneVoice s4. | \voiceOne a'4. \oneVoice s4. |
	
	%Page 3 Line 1
	g'2. | g'2. | fis'4. s4. | fis'4. s4. |
	%Page 3 Line 2
	\oneVoice
	r8 <d' fis' b' d''>4 ~ <d' fis' b' d''>8 <d' fis' b' d''>4 |
	r8 <fis' d'' fis''>4 <e' cis'' e''>4 <d' b' d''>8 |
	r8 <g' cis'' g''>4 \grace{\stemDown g''16[ cis''' ~ g''] ~} <cis'' g'' cis'''>4. |
	r8 <fis' cis'' fis''>4 \grace{\stemDown fis''16[ cis''' ~ fis''] ~ } <cis'' fis'' cis'''>4. |
	r8 <b' dis'' b''>4 \grace{\stemDown dis''16[ a'' ~ dis''] ~ } <a' dis'' a''>4. |
	%Page 3 Line 3
	r8 <gis' d'' gis''>4 \grace{\stemDown d''16[ gis'' ~ d''] ~ } <gis' d'' gis''>4. |
	r8 <g'! cis'' g''!>4 \grace{\stemDown cis''16[ g'' ~ cis''] ~ } <g' cis'' g''>4. ~ |
	<g' cis'' g''>8 <g' cis'' g''>4 <g' b' g''>4 <g' cis'' g''>8 |
	<fis' a' d'' fis''>4.\arpeggio( \grace{e''16[ fis'']} e''4 d''8) |
	<fis' a' d'' fis''>4.\arpeggio( \grace{e''16[ fis'']} e''4 d''8) |
	%Page 3 Line 4
	\voiceOne
	s4. d''4. | d''4. d''4. |
	\oneVoice
	<fis' a'>2. | \grace{a'16([ fis']} <fis' a'>2.)^\fermata \bar "|."
}


rhTwo = {
	\set tieWaitForNote = ##t
	%Page 1 Line 1
	\oneVoice
	s2.*4
	%Page 1 Line 2
	s2.*4
	%Page 1 Line 3
	\voiceTwo
	r8 <fis a d'>4 ~ <fis a d'>8 <fis a d'>4 |
	r8 <fis b d'>4 ~ <fis b d'>8 <fis b d'>4 |
	r8 <b d' g'>4 ~ <b d' g'>8 <b d' g'>4 |
	r8 <a cis' g'>4 ~ <a cis' g'>8 <a cis' g'>4 |
	%Page 1 Line 4
	r8 <g a e'>4 ~ <g a e'>8 <g a e'>4 |
	r8 <g a e'>4 ~ <g a e'>8 <g a e'>4 |
	r8 <fis cis'>4 ~ <fis cis'>8 <fis cis'>4 |
	r8 <fis cis'>4 <fis b>4 <fis a>8 |

	%Page 2 Line 1
	\oneVoice
	s2.*4
	%Page 2 Line 2
	s2.*4
	%Page 2 Line 3
	\voiceTwo
	d''4.( \grace{ \stemDown cis''16[ d'']} cis''4 b'8) |
	cis''4.( \grace{ \stemDown b'16[ cis'']} b'4 a'16 g'16) |
	\oneVoice
	s2.*2
	%Page 2 Line 4
	\voiceTwo
	r8 <fis a d'>4 ~ <fis a d'>8 <fis a d'>4 |
	r8 <fis b d'>4 ~ <fis b d'>8 <fis b d'>4 |
	r8 <b d' g'>4 \oneVoice \grace{d''16[ g'' ~ d''] ~} \stemDown <g' d'' g''>4. \voiceTwo |
	r8 <a cis' g'>4 \oneVoice \grace{cis''16[ g'' ~ cis''] ~ } \stemDown <g' cis'' g''>4. \voiceTwo |
	
	%Page 3 Line 1
	r8 <g a e'>4 ~ <g a e'>8 <g a e'>4 |
	r8 <g a e'>4 ~ <g a e'>8 <g a e'>4 |
	r8 <fis cis'>4 \oneVoice \grace {\stemDown cis''16[ g'' ~ cis''] ~ } <fis' cis'' g''>4. \voiceTwo |
	r8 <fis cis'>4 \oneVoice \grace {\stemDown b'16[ fis'' ~ b'] ~ } <fis' b' fis''>4. |
	%Page 3 Line 2
	s2.*5
	%Page 3 Line 3
	s2.*5
	%Page 3 Line 4
	\voiceTwo
	d''4.( \grace{\stemDown cis''16[ d'']} cis''4 b'8) |
	cis''4.( \grace{\stemDown b'16[ cis'']} b'4 a'16 g'16) |
	\oneVoice
	s2.*2
}


lhOne = {
	\clef bass \time 6/8 \key d \major
	\oneVoice
	%Page 1 Line 1
	a,,8\sustainDown <e a e'>4 <a cis'>4 <g cis'>8 |
	a,,8\sustainDown <e a e'>4 <a cis'>4 <g cis'>8 |
	b,,8\sustainDown <fis b d'>4 ~ <fis b d'>8 <fis b d'>4 |
	b,,8\sustainDown <fis b d'>4 ~ <fis b d'>8 <fis b d'>4 |
	%Page 1 Line 2
	g,,8\sustainDown <d g b>4 ~ <d g b>8 <d g b>4 |
	g,,8\sustainDown <d g b>4 ~ <d g b>8 <d g b>4 |
	b,,8\sustainDown <fis b d'>4 ~ <fis b d'>8 <fis b d'>4 ~ |
	<fis b d'>8 <fis b d'>4 ~ <fis b d'>8 <fis b d'>4\sustainUp |
	%Page 1 Line 3
	\voiceOne
	d8\rest <a, d>4 ~ <a, d>8 <a, d>4 |
	d8\rest <b, d>4 ~ <b, d>8 <b, d>4 |
	d8\rest <a, e>4 ~ <a, e>8 <a, e>4 |
	d8\rest <a, e>4 ~ <a, e>8 <a, e>4 |
	%Page 1 Line 4
	d8\rest <a, cis>4 ~ <a, cis>8 <a, cis>4 |
	d8\rest <a, cis>4 ~ <a, cis>8 <a, cis>4 |
	d8\rest <d, a, d>4 ~ <d, a, d>8 <d, a, d>4 |
	d8\rest <a, d>4 <a, d>4 <a, d>8 |

	%Page 2 Line 1
	\oneVoice
	g,,!8\sustainDown <d fis b>4 ~ <d fis b>8 <d fis b>4 |
	gis,,8_\pedSempre <e d'>4 <e cis'>4 <e b>8 |
	<cis, cis>8 <e a cis'>4 ~ <e a cis'>8 <e a cis'>4 |
	<ais,, ais,>8 <e ais cis' e'>4 ~ <e ais cis' e'>8 <e ais cis' e'>4 |
	%Page 2 Line 2
	<b,, b,>8 <d fis b>4 ~ <d fis b>8 <d fis b>4 |
	<g,, g,>8 <d g b>4 ~ <d g b>8 <d g b>4 |
	<d,, d,>8 <a, d fis a>4 ~ <a, d fis a>8 <a, d fis a>4 |
	d,8 <a, d fis a>4 ~  <a, d fis a>8 <a, d fis a>4 |
	
	%Page 2 Line 3
	b,,8 <d fis b>4 ~ <d fis b>8 <d fis b>4 |
	g,,8 <d g b>4 ~ <d g b>8 <d g b>4 |
	b,,8 <d fis b>4 ~ <d fis b>8 <d fis b>4 ~ |
	<d fis b>8 <d fis b>4 ~ <d fis b>8 <d fis b>4 |
	%Page 2 Line 4
	\voiceOne
	d8\rest <a, d>4 ~ <a, d>8 <a, d>4 |
	d8\rest <b, d>4 ~ <b, d>8 <b, d>4 |
	d8\rest <b, g>4 ~ <b, g>8 <b, g>4 |
	d8\rest <a, e>4 ~ <a, e>8 <a, e>4 |
	
	%Page 3 Line 1
	d8\rest <a, e>4 ~ <a, e>8 <a, e>4 |
	d8\rest <a, cis e>4 ~ <a, cis e>8 <a, cis e>4 |
	\oneVoice
	d,,8 <d, a, d>4 ~ <d, a, d>8 <d, a, d>4 |
	\voiceOne
	d8\rest <a, d>4 ~ <a, d>8 <a, d>4 |
	%Page 3 Line 2
	\oneVoice
	g,,8 <d fis b>4 ~ <d fis b>8 <d fis b>4 |
	gis,,8 <e d'>4 <e cis'>4 <e b>8 |
	<a,, a,>8 <e a e'>4 ~ <e a e'>8 <e a e'>4 |
	<ais,, ais,>8 <e cis' e'>4 ~ <e cis' e'>8 <e cis' e'>4 |
	<b,, b,>8 <fis a dis'>4 ~ <fis a dis'>8 <fis a dis'>4 |
	%Page 3 Line 3
	<e,, e,>8 <b, e b>4 ~ <b, e b>8 <b, e b>4 |
	a,,8 s4. s4 |
	s8 \voiceOne cis'4 d'4 e'8 |
	\oneVoice
	d,,8 <a, d fis a>4 ~ <a, d fis a>8 <a, d fis a>4 |
	d,,8 <a, d fis a>4 ~  <a, d fis a>8 <a, d fis a>4 |

	%Page 3 Line 4
	b,,8 <d fis b>4 ~ <d fis b>8 <d fis b>4 |
	g,,8 <d g b>4 ~ <d g b>8 <d g b>4 |
	d,,8 <a, d fis a>4 ~ <a, d fis a>8 <a, d fis a>4 ~ |
	<a, d fis a>8 <a, d fis a>4 ~ <a, d fis a>8 <a, d fis a>4\fermata | 
}

lhTwo = {
	\oneVoice
	%Page 1 Line 1
	s2.*4
	%Page 1 Line 2
	s2.*4
	%Page 1 Line 3
	\voiceTwo
	d,2.\sustainDown | b,,2.\sustainDown |
	e,2._\pedSempre | e,2. |
	%Page 1 Line 4
	cis,2. | a,,2. | d,,2. | d,2. |
	
	\oneVoice
	%Page 2 Line 1
	s2.*4
	%Page 2 Line 2
	s2.*4
	%Page 2 Line 3
	s2.*4
	%Page 2 Line 4
	\voiceTwo
	d,2. | d,2. | e,2. | e,2. |
	
	%Page 3 Line 1
	a,,2. | a,,2. | \oneVoice s2. | \voiceTwo d,2. |
	%Page 3 Line 2
	\oneVoice
	s2.*5
	%Page 3 Line 3
	s2. | s8 <a, e b>4 ~ <a, e b>8 <a, e b>4 ~ | <a, e b>8 \voiceTwo <a, e cis'>4 ~ <a, e>4. |
	%Page 3 Line 4
	s2.*4
}

\score {
	<<
		\context Staff = melStaff {
			\time 6/8
			\clef treble
			\key d \major
			\override Staff.TimeSignature #'break-visibility = #end-of-line-invisible
			
			\compressMusic #'(3 . 2)
			{
				<<
					\context Voice = mel { \sopNotes }
					\context Voice = melDyn { \sopDynamics }
				>>
			}
			\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
		}
		\lyricsto mel \new Lyrics \text

		\context PianoStaff <<
			\context Staff = rightHand {
				\time 6/8
				\clef treble
				\key d \major
				\override Staff.TimeSignature #'break-visibility = #end-of-line-invisible
				<<
					\context Voice = rhA { \rhOne }
					\context Voice = rhB { \rhTwo }
				>>
			}
			\context Dynamics = dynamics \dynamics
			\context Staff = leftHand
			{
				\time 6/8
				\clef bass
				\key d \major
				\override Staff.TimeSignature #'break-visibility = #end-of-line-invisible
				<<
					\context Voice = lhA { \lhOne }
					\context Voice = lhB { \lhTwo }
				>>
			}
		>>
	>>
	\layout {
		\context {
			\Score
			\override VerticalAxisGroup #'remove-first = ##t
		}
		\context {
			\RemoveEmptyStaffContext
		}
		\context {
			\type "Engraver_group"
			\name Dynamics
			\consists "Output_property_engraver"
     
			\override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
			\consists "Script_engraver"
			\consists "Dynamic_engraver"
			\consists "Text_engraver"
     
			\override TextScript #'font-shape = #'italic
			\override TextScript #'extra-offset = #'(0 . 2.0)
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
			\override SeparationItem #'padding = #0.5	
		}
	}
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 8)
      }
    }


}
