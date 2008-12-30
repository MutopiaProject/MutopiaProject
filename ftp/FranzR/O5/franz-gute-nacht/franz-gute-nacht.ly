\version "2.10.0"

\paper {
	ragged-last-bottom = ##f
	head-separation = 0\in
	print-page-number = ##t
	system-count = 6
}

\header {
	title = "Gute Nacht!"
	composer = "Robert Franz (1815–1862)"
	opus = "Op. 5, No. 7."
	poet = "Joseph von Eichendorff (1788–1857)"
	copyright = "Public Domain"
	
	%mutopia-specific headers:
	mutopiatitle = "Gute Nacht!"
	mutopiacomposer = "FranzR"
	mutopiapoet = "Joseph von Eichendorff (1788-1857)"
	mutopiaopus = "O 5"
	mutopiainstrument = "Voice and Piano"
	date = "19th century"
	source = "The University Society, 1904"
	style = "Romantic"
	copyright = "Public Domain"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2006/Dec/06"
 footer = "Mutopia-2006/12/18-585"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


sopNotes = {
	\key d \minor
	\time 6/8
	\clef treble
	\autoBeamOff
	\once \override Score.RehearsalMark #'extra-offset = #'(6.0 . 2.0)
	\mark \markup {\large \bold "Andante."}
	R2. | r4. r4 a'8^\p | a'4 a'8 a'8. a'16 a'8 |
	bes'8 bes'8 r8 r4 bes'16 bes'16 | a'8. e'16 e'8 e'8([ f'8]) g'8 | f'4 r8 r4 a'8 |
	a'4 a'8 a'8. a'16 a'8 | c''8-> c''8\staccatissimo r8 r4 a'16 b'16 | c''4^\< c''8 b'4 c''8\! |
	
	d''4. ~ d''4 a'16 b'16 | c''4 c''8 b'4 c''8 | a'4 r8 r4 a'8 |
	g'!8. g'16 g'8 g'8. g'16 g'8 | bes'8-> bes'8 r8 r4 bes'8 | bes'8.^\< bes'16 bes'8 bes'4 bes'8\! |
	des''4.^\> ~ des''4\! cis''8 | d''!8.->^\< d''16 d''8 d''4 d''8\! | e''4^\mf^\>( bes'8) bes'4\! bes'16^\p bes'16 |
	a'4. a'4 a'8 | a'4.^\markup{\italic "dim."} a'4. | a'4. ~ a'4 r8 \bar "|."
}

rhNotes = {
	\key d \minor
	\time 6/8
	\clef treble
	<a d' f'>4 <a d' f'>8 <a d' f'>4 <a d' f'>8 | <a d' f'>4 <a d' f'>8 <a d' f'>4 <a d' f'>8 | <a d' f'>4 <a d' f'>8 <a d' f'>4 <a d' f'>8 |
	<bes e' g'>4 <bes e' g'>8 <bes e' g'>4 <bes e' g'>8 | <a e' g'>4 <a e' g'>8 <a e' g'>4 <a e' g'>8 | <a d' f'>4 <a d' f'>8 <a d' f'>4 <a d' f'>8 |
	<a d' f'>4 <a d' f'>8 <a d' f'>4 <a d' f'>8 | <c' fis' a'>4 <c' fis' a'>8 <c' fis' a'>4 <c' fis' a'>8 | <e' a'>4 <e' a'>8 <e' gis'>4 <e' gis'>8 |
	
	<d' a'>4 <d' a'>8 <d' a'>4 <dis' a'>8 | <e' a'>4 <e' a'>8 <d'! e' gis'>4 <d' e' gis'>8 | <c' e' a'>4 <c' e' a'>8 <c' e' a'>4 <c' e' a'>8 |
	<bes! e' g'!>4 <bes e' g'>8 <bes e' g'>4 <bes e' g'>8 | <bes e' g'>4 <bes e' g'>8 <bes e' g'>4 <bes e' g'>8 | <bes d' g'>4 <bes d' g'>8 <bes d' g'>4 <bes d' g'>8 |
	<bes des' g'>4 <bes des' g'>8 <bes des' g'>4 <bes des' g'>8 | <bes d'! g'>4 <bes d' g'>8 <bes d' g'>4 <bes d' g'>8 | <bes e'! g'>4 <bes e' g'>8 <bes e' g'>4 <bes e' g'>8 |
	<a e' g'>4 <a e' g'>8 <a e' fis'>4 <a d' fis'>8 | <a d' f'!>4^\markup{\italic "rit."} <a d' f'>8 <g d' e'>4 <g cis' e'>8 | <fis d'>4. ~ <fis d'>4 r8 |
}

lhNotes = {
	\key d \minor
	\time 6/8
	\clef bass
	<d, d>4\sustainDown <d, d>8 <d, d>4 <d, d>8 | <d, d>4 <d, d>8 <d, d>4 <d, d>8 | <d, d>4 <d, d>8 <d, d>4 <d, d>8\sustainUp |
	<d, d>4\sustainDown <d, d>8 <d, d>4 <d, d>8\sustainUp | <cis, cis>4\sustainDown <cis, cis>8 <cis, cis>4 <cis, cis>8\sustainUp | <d, d>4\sustainDown <d, d>8 <d, d>4 <d, d>8 |
	<d, d>4 <d, d>8 <d, d>4 <d, d>8\sustainUp | <dis, dis>4\sustainDown <dis,! dis!>8 <dis, dis>4 <dis, dis>8\sustainUp | <e, e>4\sustainDown <e, e>8\sustainUp <e, e>4\sustainDown <e, e>8\sustainUp |
	
	<f, f>4\sustainDown <f, f>8 <f, f>4 <f, f>8\sustainUp | <e, e>4\sustainDown <e, e>8\sustainUp <e,, e,>4\sustainDown <e,, e,>8\sustainUp | <a,, a,>4\sustainDown <a,, a,>8 <a,, a,>4 <a,, a,>8\sustainUp |
	<c, c>4\sustainDown <c, c>8 <c, c>4 <c, c>8\sustainUp | <cis, cis>4\sustainDown <cis, cis>8 <cis, cis>4 <cis, cis>8\sustainUp | <d, d>4\sustainDown <d, d>8 <d, d>4 <d, d>8\sustainUp |
	<ees, ees>4\sustainDown <ees, ees>8 <ees, ees>4 <ees, ees>8\sustainUp | <d, d>4\sustainDown <d, d>8 <d, d>4 <d, d>8\sustainUp | <c, c>4\sustainDown <c, c>8 <c, c>4 <c, c>8\sustainUp |
	<cis, cis>4\sustainDown <cis, cis>8\sustainUp <d, d>4\sustainDown <d, d>8\sustainUp | <a,, a,>4\sustainDown <a,, a,>8\sustainUp <a,, a,>4\sustainDown <a,, a,>8\sustainUp | <d, a,>4. ~  <d, a,>4 r8 |
}

dynamics = {
	s2.-\markup{\italic "sempre " \dynamic "pp"} | s2.*2
	s2.*3
	s2.*2 | s4. s4\< s8\!

	s4\> s8\! s4. | s2. | s2\< s8 s8\! |
	s2. | s2. | s2\< s8 s8\! |
	s2\> s8\! s8 | s2\< s8 s8\! | s8\mf s4\> s4\! s8\p |
	s2. | s4 s8-\markup{\italic "dim."}
}

text = \lyricmode {
	Die Höh’n und Wäl -- der schon stei -- gen
	im -- mer tie -- fer in’s A -- bend -- gold,
	ein Vög -- lein fragt in den Zwei -- gen:
	ob es Lieb -- chen grü -- ßen soll’, __
	ob es Lieb -- chen grü -- ßen soll’?
	
	O Vög -- lein, du hast dich be -- tro -- gen,
	sie woh -- net nicht mehr im Tal; __
	schwing’ auf dich zum Him -- mels -- bo -- gen,
	grüß’ sie dro -- ben zum letz -- ten Mal. __
}

\score {
	<<
		\context Staff = melStaff {
			\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
			\context Voice = mel { \sopNotes }
		}
		\lyricsto mel \new Lyrics \text

		\context PianoStaff <<
			\context Staff = rightHand {
				\context Voice = rh { \rhNotes }
			}
			\context Dynamics = dynamics \dynamics
			\context Staff = leftHand
			{
				\context Voice = lh { \lhNotes }
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
			\override TextScript #'extra-offset = #'(0 . 0.5)
			\override DynamicText #'extra-offset = #'(0 . 1.5)
			\override Hairpin #'extra-offset = #'(0 . 1.5)
     
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
			\override SeparationItem #'padding = #0.6
		}
	}
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 162 8)
      }
    }


}
