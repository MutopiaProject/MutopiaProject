\version "2.10.0"
#(set-global-staff-size 18)
\paper {
	ragged-last-bottom = ##f
	top-margin = 0.25\in
	bottom-margin = 0.25\in
	print-page-number = ##t
	head-separation = 0\in
	system-count = 11
}

\header {
	title = "L’Esclave"
	subtitle = "The Captive"
	composer = "Edouard Lalo (1823–1892)"
	poet = "Théophile Gautier (1811–1872)"
	arranger = " "
	opus = " "
	copyright = "Public Domain"

	%mutopia-specific headers:
	mutopiatitle = "L'Esclave"
	mutopiacomposer = "LaloE"
	mutopiapoet = "T. Gautier (1811-1872)"
	mutopiaopus = ""
	mutopiainstrument = "Voice and Piano"
	date = "1872"
	source = "The University Society, 1904"
	style = "Romantic"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2006/Dec/06"
 footer = "Mutopia-2006/12/18-587"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

sopMusic = {
	\clef treble
	\time 9/8
	\key d \major
	\autoBeamOff

	\once \override Score.RehearsalMark #'extra-offset = #'(10.0 . 1.0)
	\mark \markup { \large \bold "Andante non troppo." }

	R1*9/8 | R1*9/8 | R1*9/8 |
	r4. r4.^\fermata r4 a'8^\p | a'4( f'8) e'4. ~ e'8 a'8 bes'8 | a'8 a'8 f'8 e'4. e'8 r8 e'8 |
	f'4. ~ f'8 f'8 f'8 f'8^\pp f'8 g'8 | a'4.( g'4. ~ g'8) r8 g'8 | g'4 c''8^\pp c''2. ~ |
	
	c''4 r8 bes'4.^\pp bes'4 bes'8 | bes'4.( a'2. ~ | a'4) r8 r4. r4. |
	r4 b'!8^\p cis''!8^\markup{\italic "cresc."} d''8 e''8 fis''!8 e''8 d''8 | d''2.^\mf d''4.^\> | d''4\!^\p b'!8 a'4. a'8 r8 a'8^\markup{\italic "cresc."} |
	d''4 b'8 a'4 a'8 a'4 fis''8 | fis''4. ~ fis''8 r4 r4.\fermata | R1*9/8 |
	r4. r4. r4 a'8^\p | a'4^\markup{\italic "a tempo"} f'8 e'2.^\markup{\hspace #2.0 \italic "sans repirer"} | a'8 a'8 f'8 e'4. e'4 r8 |
	
	f'4 f'8 f'4. ~ f'8 f'8^\pp g'8 | a'4 a'8 g'4. ~ g'8 r8. g'16 | g'4^\markup{\italic "cresc."} c''8 c''2. ~ |
	c''4.^\f ~ c''8 r8 bes'8^\f bes'4 bes'8 | bes'4.( a'2. ~ | a'8) r4 r4. r4. |
	r4 b'!8^\p cis''!8^\markup{\italic "poco cresc."} d''8 e''8 fis''!8 e''8 d''8 | d''2. d''8 r8. d''16^\p | d''4 b'8 a'4. ~ a'4^\markup{\italic "dim."} a'8 |
	d''4 b'8 a'2. ~ | a'8 r4 a'4.^\pp a'4 a'8 | a'2.^\fermata r4. \bar "|."
}

text = \lyricmode {
	Cap -- ti -- ve __ et peut -- être ou -- bli -- é -- e,
	je songe __ à mes jeu -- nes a -- mours, __
	à mes beaux jours! __
	À mes beaux jours! __
	Et par la fe -- nê -- tre gril -- lé -- e
	je re -- gar -- de l’oi -- seau joy -- eux
	fen -- dant les cieux. __
	Au -- près de lui, belle Es -- pé -- ran -- ce,
	por -- te moi __ sur tes ai -- les d’or, __
	s’il m’aime en -- cor! __ S’il m’aime en -- cor! __
	Et pour en -- dor -- mir ma souf -- fran -- ce,
	sus -- pends mon â -- me sur son cœur __
	comme u -- ne fleur!
}

rhOne = {
	\clef treble
	\time 9/8
	\key d \major
	\voiceOne
	a''4.( bes''4. e'''4. | a''4. bes''4. e'''4.) | a''4. \times 6/4 { g''8([ f''8 e''8 d''8]) } |
	d''4. \once\override Script #'extra-offset = #'(0 . 0.25) cis''2.\fermata |
		\oneVoice <d' f' a'>8 <d' f' a'>8 <d' f' a'>8 <cis' g' a'>8 <cis' g' a'>8 <cis' g' a'>8 <cis' g' a'>8 <cis' g' a'>8 <cis' g' a'>8 |
		<d' f' a'>8 <d' f' a'>8 <d' f' a'>8 <cis' g' a'>8 <cis' g' a'>8 <cis' g' a'>8 <cis' g' a'>8 <cis' g' a'>8 <cis' g' a'>8 |
	<f' a'>8 <f' a'>8 <f' a'>8 <f' a'>8 <f' a'>8 <f' a'>8 <bes' f'' bes''>8 <bes' f'' bes''>8 <bes' f'' bes''>8 |
		<a' f'' a''>8 <a' f'' a''>8 <a' f'' a''>8 <c'' e'' g''>8 <c'' e'' g''>8 <c'' e'' g''>8 <b'! e'' g''>8 <b' e'' g''>8 <b' e'' g''>8 |
		<c'' g'' c'''>8 <c'' g'' c'''>8 <c'' g'' c'''>8 <c'' g'' c'''>8 <c'' g'' c'''>8 <c'' g'' c'''>8 <c'' f'' c'''>8 <c'' f'' c'''>8 <c'' f'' c'''>8 |
	
	<f' bes' d'' f''>8 <f' bes' d'' f''>8 <f' bes' d'' f''>8 <e' bes' d'' e''>8 <e' bes' d'' e''>8 <e' bes' d'' e''>8 <e' bes' d'' e''>8 <e' bes' d'' e''>8 <e' bes' d'' e''>8 |
		<g' bes' cis''! e''>8 <g' bes' cis'' e''>8 <g' bes' cis'' e''>8 <g' a' cis'' e''>8 <g' a' cis'' e''>8 <g' a' cis'' e''>8 <g' a' cis'' e''>8 <g' a' cis'' e''>8 <g' a' cis'' e''>8 |
		<fis'! d''>4( <g' b'!>8 <g' a'>2.) |
	<fis' d''>4( <g' b'>8 <g' a'>4.) <fis' c'' d''>8 <g' c'' d'' e''>8 <a' c'' d'' fis''>8 |
		<c'' d'' a''>8 <c'' d'' a''>8 <c'' d'' a''>8 <b' d'' g''>8 <b' d'' g''>8 <b' d'' g''>8 <bes' d'' e''>8 <bes' d'' e''>8 <bes' d'' e''>8 |
		<fis'' d'''>4( <g'' b''!>8 <g'' a''>2.) |
	<fis' d''>4( <g' b'>8 <g' a'>4.) <cis'' a''>4^^ a''8 |
		<d'' a'' d'''>4.^^ <a'' fis''' a'''>4. <fis'' a''>4^\fermata r8 |
		\voiceOne a''4.( bes''4. e'''4.) |
	a''4.( bes''4. e'''4.) | \oneVoice
		<d'' f'' a''>8 <d'' f'' a''>8 <d'' f'' a''>8 <cis'' g'' a''>8 <cis'' g'' a''>8 <cis'' g'' a''>8 <cis'' g'' a''>8 <cis'' g'' a''>8 <cis'' g'' a''>8 |
		<d'' f'' a''>8 <d'' f'' a''>8 <d'' f'' a''>8 <cis'' g'' a''>8 <cis'' g'' a''>8 <cis'' g'' a''>8 <cis'' g'' a''>8 <cis'' g'' a''>8 <cis'' g'' a''>8 |
	
	<d'' f'' a''>8 <d'' f'' a''>8 <d'' f'' a''>8 <d'' f'' a''>8 <d'' f'' a''>8 <d'' f'' a''>8 <bes' f'' bes''>8 <bes' f'' bes''>8 <bes' f'' bes''>8 |
		<a' f'' a''>8 <a' f'' a''>8 <a' f'' a''>8 <c'' e'' g''>8 <c'' e'' g''>8 <c'' e'' g''>8 <b'! e'' g''>8 <b' e'' g''>8 <b' e'' g''>8 |
		<c'' g'' c'''>8 <c'' g'' c'''>8 <c'' g'' c'''>8 <c'' g'' c'''>8 <c'' g'' c'''>8 <c'' g'' c'''>8 <c'' f'' c'''>8 <c'' f'' c'''>8 <c'' f'' c'''>8 |
	<f' bes' d'' f''>8 <f' bes' d'' f''>8 <f' bes' d'' f''>8 <e' bes' d'' e''>8 <e' bes' d'' e''>8 <e' bes' d'' e''>8 <e' bes' d'' e''>8 <e' bes' d'' e''>8 <e' bes' d'' e''>8 |
		<g' bes' cis''! e''>8-^ <g' bes' cis'' e''>8 <g' bes' cis'' e''>8 <g' a' cis'' e''>8 <g' a' cis'' e''>8 <g' a' cis'' e''>8 <g' a' cis'' e''>8 <g' a' cis'' e''>8 <g' a' cis'' e''>8 |
		<fis'! d''>4^^( <g' b'!>8 <g' a'>2.) |
	<fis' d''>4( <g' b'>8 <g' a'>4.) <fis' c'' d''>8 <g' c'' d'' e''>8 <a' c'' d'' fis''>8 |
		<c'' d'' a''>8 <c'' d'' a''>8 <c'' d'' a''>8 <b' d'' g''>8 <b' d'' g''>8 <b' d'' g''>8 <bes' d'' e''>8 <bes' d'' e''>8 <bes' d'' e''>8 |
		<fis'' d'''>4( <g'' b''!>8 <g'' a''>2.) |
	<fis' d''>4( <g' b'>8 <g' a'>2.) | <g' a' e''>2. ~ <g' a' e''>4 r8 | <a' fis'' a''>4. <fis' a'>2.^\fermata |
}

rhTwo = {
	\clef treble
	\time 9/8
	\key d \major
	\voiceTwo \tieNeutral
	f''4. g''2. | f''4. g''2. | a'4. bes'4. b'4. |
	<a' g''>2.\arpeggio^\fermata ~ <a' g''>4. | s2. s4. | s2. s4. |
	s2. s4. | s2. s4. | s2. s4. |
	
	s2. s4. | s2. s4. | s2. s4. |
	s2. s4. | s2. s4. | s2. s4. |
	s2. s4. | s2. s4. | f''4. g''2. |
	f''4. g''2. | 
}

lhOne = {
	\clef treble
	\time 9/8
	\key d \major
	\voiceOne
	a'2. ~ a'4. | a'2. ~  a'4. | \clef bass \oneVoice <f d'>4. <g e'>4. <gis f'>4. |
	\voiceOne f'4. e'2.^\fermata | \oneVoice <d a>2._\markup{\italic "sourdine"} ~ <d a>4. | <d a>2. ~ <d a>4. | \clef treble
	d'2. <d' f'>4. | <c' f'>4. <c' g'>2. | \voiceOne bes'4.( a'2.) | \clef bass
	
	\oneVoice <c g c'>2. <c, c>4. | <a,, a,>2. ~ <a,, a,>4. | \voiceOne e'4\rest d'8( cis'!2.) |
	e'4\rest d'8( cis'4.) \oneVoice d4. | g,2. g,4. | \voiceOne \clef treble r4 d''8( cis''2.) |
	b'4\rest d'8( cis'4.) \oneVoice <g' a'>4 b'8\rest | \clef bass s8 \clef treble a'8 d''8 ~  d''4. ~ d''4^\fermata b'8\rest | \voiceOne a'8 a'8 a'8 a'4( bes'8 a'4.) |
	a'8 a'8 a'8 a'4( bes'8 a'4.) | \oneVoice <d' a'>2. ~ <d' a'>4. | <d' a'>2. ~ <d' a'>4. |
	
	<d' a'>2. <d' f'>4. | <c' f'>4. <c' g'>2. | \voiceOne bes'4.( a'2.) |
	\oneVoice \clef bass <c g c'>2.^^ <c, c>4. | <a,, a,>2.^^ ~ <a,, a,>4. | \voiceOne e'4\rest d'8( cis'!2.) |
	e'4\rest d'8( cis'4.) \oneVoice d4. | g,2. ~ g,4. | \voiceOne \clef treble r4 d''8( cis''2.) | \clef bass
	e'4\rest d'8( cis'2.) | \oneVoice R1*9/8 | <d a>2. ~ <d a>4.^\fermata |
}

lhTwo = {
	\clef treble
	\time 9/8
	\key d \major
	\voiceTwo
	d'4.( cis'2.) | d'4.( cis'2.) | s2. s4. |
	a2._\fermata ~ a4. | s2. s4. | s2. s4. |
	s2. s4. | s2. s4. | c'2. ~ c'4. |
	
	s2. s4. | s2. s4. | a8 a8 a8 a8 a8 a8 a8 a8 a8 |
	a8 a8 a8 a8 a8 a8 s4. | s2. s4. | a'8 a'8 a'8 a'8 a'8 a'8 a'8 a'8 a'8 |
	a8 a8 a8 a8 a8 a8 s4. | <d a fis'>8\arpeggio s4 s2. | d'4.( cis'2.) |
	d'4.( cis'2.) | s2. s4. | s2. s4. |
	
	s2. s4. | s2. s4. | c'2. ~ c'4. |
	s2. s4. | s2. s4. | a8 a8 a8 a8 a8 a8 a8 a8 a8 |
	a8 a8 a8 a8 a8 a8 s4. | s2. s4. | a'8 a'8 a'8 a'8 a'8 a'8 a'8 a'8 a'8 |
	a8 a8 a8 a8 a8 a8 a8 a8 a8 |
}

dynamics = {
	s2.\mf s4. | s2.-\markup{\italic "dim."} s4. | s2.\p s4. |
	s2. s4. | s2. s4. | s2. s4. |
	s2. s4.\pp | s2. s4. | s2. s4. |
	
	\once\override DynamicText #'extra-offset = #'(0 . 1.75)
	s2.\pp s4. | s2. s4. | s2. s4. |
	s4. s2.-\markup{\italic "cresc."} | s2.\mf s4\> s8\! | s2.\pp s4. |
	s2.-\markup{\italic "cresc."} s4. | s4. s4.\f s4.\p | s2.\p s4.-\markup{\italic "dim."} |
	s4. s2.-\markup{\italic "rit."} | s2.\p s4. | s2. s4. |
	
	s2. s4.\pp | s4. s4.\< s4 s8\! | s2.-\markup{\italic "cresc."} s4. |
	s2. s4. | s2. s4. | s4. s8 s4-\markup{\italic "dim."} s4. |
	s4.\p s2.-\markup{\italic "poco cresc."} | s2.\> s4 s8\! | s2.\pp s4. |
	s2. s4. | s2.\ppp s4. | s2.\ppp s4. |
}

\score {
	<<
		\context Staff = melStaff {
			\context Voice = mel { \sopMusic }
		}
		\lyricsto mel \new Lyrics \text

		\context PianoStaff <<
			\context Staff = rightHand {
				<<
					\context Voice = rhA { \rhOne }
					\context Voice = rhB { \rhTwo }
				>>
			}
			\context Dynamics = dynamics \dynamics
			\context Staff = leftHand
			{
				<<
					\context Voice = lhA { \lhOne }
					\context Voice = lhB { \lhTwo }
				>>
			}
		>>
	>>
	\layout {
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
			\override VerticalAlignment #'forced-distance = #5.7
		}
		\context {
			\Staff
			\override SeparationItem #'padding = #0.3
		}
	}
	
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 8)
      }
    }


}
