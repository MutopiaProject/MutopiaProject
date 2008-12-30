\version "2.10.0"

\paper {
	ragged-last-bottom = ##f
	top-margin = 0.25\in
	bottom-margin = 0.25\in
	head-separation = 0\in
	system-count = 6
}

\header {
	title = "Ich Liebe Dich"
	composer = "Edvard Grieg (1843–1907)"
	opus = "Op. 5, No. 3"
	copyright = "Public Domain"
	poet = "Hans Christian Andersen (1805–1875)"

	%mutopia-specific headers:
	mutopiatitle = "Ich liebe dich"
	mutopiacomposer = "GriegE"
	mutopiapoet = "H. C. Andersen"
	mutopiaopus = "O 5"
	mutopiainstrument = "Voice and Piano"
	date = "1864"
	source = "Oliver Ditson, 1907"
	style = "Romantic"
	maintainer = "Daniel Johnson"
	maintainerEmail = "il.basso.buffo at gmail dot com"
	lastupdated = "2006/Dec/06"
 footer = "Mutopia-2006/12/18-586"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

sopNotes = {
	\clef treble
	\time 3/4
	\key bes \major
	\autoBeamOff
	\partial 4.
	R4. | R2. | R2. | \break r4 r8 f'8^\p^\< fis'8 a'8\! |
	\repeat volta 2 {
		a'8^\> g'8\! d'8 e'8 f'!8 g'8 | f'4 ees'!4 r4 | r4 d'4^\pp ees'8 f'8 |
		g'8 d'8 bes'4.^\< g'8\! | d''8.^\f^\> g'16 g'4\! r4 | R2. |
		
		r4 r8 f'8^\p^\< fis'8 a'8\! | a'8^\> g'8\! d'8 e'8 f'!8^\< g'8\! | f'4^\> ees'!4\! r8 ees'8 |
		g'8.^\> d'16\! d'4 r8 g'8^\< | bes'8.\!^\> g'16\! g'4 r8 \once\override TextScript #'extra-offset = #'(0 . 2) bes'8^\<^\markup{\italic "cresc. sempre"} | d''8.\!^\> g'16\! g'8 g'8 a'8^\< bes'8\! |
		d''8. c''16 c''4 \once\override DynamicText #'extra-offset = #'(1.5 . 0) r8^\ff c''8^\< | \once\override TextScript #'extra-offset = #'(0 . 2) ees''8.\!^\markup{\italic "rit."}^\> ges'16\! ges'8 f'8 a'8^\< d''8 | c''8.\!^\> bes'16\! bes'4 r4 |
		R2. | R2. |
	}
	\alternative {
		{ r4 r8 f'8^\p^\< fis'8 a'8\! } { r4 r8^\fermata \bar "|." }
	}
}

% This song/poem was originally in Danish, but it is often sung in German.
% The German translation was done by F. von Holstein. The Danish original has
% only one verse; the second verse was written (in German) by Frank von der
% Stucken.
textOneGerman = \lyricmode {
	\set stanza = "1." 
	Du mein Ge -- dan -- ke, du mein Sein und Wer -- den!
	Du mei -- nes Her -- zens er -- ste Se -- lig -- keit!
	Ich lie -- be dich wie nichts auf die -- ser Er -- den,
	ich lie -- be dich, ich lie -- be dich,
	ich lie -- be dich in Zeit und E -- wig -- keit!
	Ich lie -- be dich in Zeit und E -- wig -- keit!
	\set stanza = "2."
	Ich den -- ke
}
textTwoGerman = \lyricmode {
	_ _ _ dein, kann stets nur dei -- ner den -- ken,
	nur dei -- nem Glück ist die -- ses Herz ge -- weiht;
	wie Gott auch mag des Le -- bens Schick -- sal len -- ken,
}

% English translation by Auber Forestier. Note that numerous English
% translations exist.
textOneEnglish = \lyricmode {
	\set stanza = "1."
	My thought of thoughts, my ver -- y in -- most be -- ing,
	thou on -- ly art my heart’s fe -- li -- ci -- ty!
	I love thee more than all else un -- der hea -- ven,
	I love but thee, I love but thee,
	I love but thee thro’ all e -- ter -- ni -- ty!
	I love but thee thro’ all e -- ter -- ni -- ty!
	\set stanza = "2."
	For thee a-
}
textTwoEnglish = \lyricmode {
	_ _ _ lone my ev -- ’ry thought is burn -- ing,
	hap -- py my heart if good I bring to thee!
	Where -- e’er God wills my path in life be turn -- ing,
}

% Original lyric in Danish
textOneDanish = \lyricmode {
	Min tan -- kes tan -- ke, � -- ne du er vor -- den!
	Du er mitt hjer -- tes sar -- te k�r -- lig -- hed!
	Jeg el -- sker dig som ing -- en her p� Jor -- den,
	Jeg el -- sker dig, jeg el -- sker dig,
	jeg el -- sker dig i tid og e -- vig -- hed!
	Jeg el -- sker dig i tid og e -- vig -- hed!
}

rhOne = {
	\clef bass
	\time 3/4
	\key bes \major
	\partial 4.
	\oneVoice
	f8( <e g>8 <a d'>8 | bes8 \clef treble d'8 \voiceThree a'8 g'8 e'8 f'8 | fis'8[ g'8] ~ g'8[ gis'8] a'4 | \oneVoice <d' bes'>8) <bes d'>8 <bes d'>8 <bes d'>8 <bes d'>8 <bes d'>8 |
	\repeat volta 2 {
		<bes d'>8 <bes d'>8 <bes d'>8 <bes d'>8 <a c'>8 <aes d'>8 | <g c' f'>8 <g c' f'>8 <g c' ees'>8 <g c' ees'>8 <fis a! ees'>8 <fis a ees'>8 | <f b ees'>8 <f b ees'>8 <f b d'>8 <f b d'>8 <f b d'>8 <f b d'>8 |
		<e bes! d'>8 <e bes d'>8 <e bes d'>8 <e bes d'>8 <e bes d'>8 <e bes d'>8 | bes'8\rest \stemDown <f' bes' g''>8 <f' bes' g''>8 <f' bes'>8 <f' c''>8 <f' d''>8 | \voiceOne d''8. c''16 <ees' c''>4.( f'8) |
		
		c''4\rest c''8\rest f'8 fis'8 a'8 | \oneVoice <bes d' a'>8 <bes d' g'>8 <bes d'>8 <bes d' e'>8 <bes c' f'!>8 <aes d' g'>8 | <g c' f'>8 <g c' f'>8 <g c' ees'!>8 <g c' ees'>8 <fis a! ees'>8 <fis a ees'>8 |
		<f! b ees'>8 <f b ees'>8 <f b d'>8 <f b d'>8 <f b d'>8 <f b d'>8 | <e bes! d'>8 <e bes d'>8 <e bes d'>8 <e bes d'>8 <e bes d'>8 <e bes d'>8 | \stemDown bes'8\rest <f' bes' g''>8 <f' bes' g''>8 <f' bes'>8 <f' c''>8 <f' d''>8 | \voiceOne
		bes'8\rest <ees'! g' ees''!>8 <ees' g' ees''>8 <ees' g' ees''>8 <ees' g' ees''>8 <ees' g' ees''>8 | bes'8\rest <ees' ges' bes' ees''>8 <ees' ges' bes' ees''>8 <ees' f' bes' ees''>8 <ees' f' a'! ees''>4 | bes'8\rest <bes d' f'>8 <bes d' f'>8 <bes d' f'>8 <bes d' fis'>8 <bes d' a'>8 |
		<bes d' a'>8 <bes d' g'>8 <bes d'>8 <bes d' e'>8 <a c' f'!>8 <aes d' g'>8 | <g c' f'>4\arpeggio bes'4\rest <ees! a! ees'!>4\arpeggio |
	}
	\alternative {
		{ <d f bes d'>8\arpeggio^\markup{\italic "a tempo"} <bes d'>8 <bes d'>8 <bes d'>8 <bes d'>8 <bes d'>8 | } { <d f bes d'>4\arpeggio ~ <d f bes d'>8^\fermata }
	}
}

rhTwo = {
	\voiceTwo
	s4. | r4 <bes des'>4 <a c'>4 | <b eis'>4 ees'4 ~ ees'4 | s2. |
	\repeat volta 2 {
		s2.*3
		s2.*2 | r8 ees'8 aes'8[ g'8 ges'8] ees'8 |
		
		r8 <bes d'>8 <bes d'>8 <bes d'>8 <bes d'>8 <bes d'>8 | s2.*2
		s2.*3
		s2.*3
		s2.*2
	}
	\alternative { {s2.} {s4.} }
}

rhThree = {
	\voiceOne
	s4. | s2. | s4 ees''4^> ~ ees''8 d''8
}

lhOne = {
	\clef bass
	\time 3/4
	\key bes \major
	\partial 4.
	\oneVoice
	d8\rest d8\rest <f, ees>8[ | <g, d>8] d8\rest \voiceOne s4 fes8 f8 | fis8[ g8] ~ g8[ gis8] a4 | s4 \oneVoice d8\rest f8 fis8 a8 |
	\repeat volta 2 {
		a8 g8 d8 e8 f!8 b,8 | c2. | g,2._- |
		g,2._- | c,8\sustainDown <c bes d'>8[ <c bes d'>8 <c bes d'>8 <c a c'>8\sustainUp <c g bes>8] | <f,, f,>8\sustainDown \voiceOne bes8[ fis8\sustainUp g8 aes8 a8] |
		
		\oneVoice <bes,, f,>4 d8\rest f8 fis8 a8 | a8 g8 d8 e8 f!8 b,8 | c2. |
		g,2._- | g,2._- | c,8\sustainDown <c bes d'>8[ <c bes d'>8 <c bes d'>8 <c a c'>8\sustainUp <c g bes>8] |
		f,8\sustainDown <c g bes>8[ <c g bes>8 <c g bes>8 <c g bes>8 <c g bes>8] | <f,, f,>8\sustainDown <c ges bes>8[ <c ges bes>8 <c ges bes>8]\sustainUp <c f a!>4 | <bes,, f,>8\sustainDown f8[ f8 f8 fis8\sustainUp a8] |
		a8 g8 d8 e8 f!8 b,8 | c4 d4\rest <f, c>4\arpeggio
	}
	\alternative {
		{ <bes,, f, bes,>8\arpeggio\sustainDown d8\rest d8\rest f8 fis8\sustainUp g8 } { <bes,, f, bes,>4\arpeggio ~ <bes,, f, bes,>8^\fermata }
	}
}

lhTwo = {
	\voiceTwo
	s4. | s4 e4( ees4 | d4 c4 f,!4 | <bes, f>4) s2 |
	\repeat volta 2 {
		s2.*3
		s2.*2 | s8 <c f>8 ~ c4. f!8 |
		s2.*11
	}
	\alternative { {s2.} {s4.} }
}

dynamics = {
	s4.\p | s4 s2\< | s8 s8\! s4 s4\> | s8 s8\! s4.\< s8\!
	s8\> s8\! s2 | s2 s8\< s8\! | s2.\pp |
	s8 s8\< s4 s4\! | s4. s8\< s8 s8\! | s8 s8\> s4. s8\! |
	
	s4. \once\override Hairpin #'extra-offset = #'(-2 . 1.5) s4\< s8\! | \once\override Hairpin #'extra-offset = #'(2 . 1.5) s8\> s8\! s2 | s2. |
	s2. | s4 \once\override TextScript #'extra-offset = #'(-2 . 0) s2-\markup{\italic "cresc. sempre"} | s2. |
	s2. | s4.-\markup{\dynamic ff \italic "rit."} s8\> s8\! s8 | s2\mp s8\< s8\! |
	s8\> s8\! s2 | s2.-\markup{\italic "dim."} | s4. s4\< s8\! | \once\override DynamicText #'extra-offset = #'(1 . 0) s4.\pp
}
\score {
	<<
		\context Staff = melStaff {
			\context Voice = mel { \sopNotes }
		}
		\lyricsto mel \new Lyrics { \textOneGerman }
		\lyricsto mel \new Lyrics { \textTwoGerman }

		\context PianoStaff <<
			\set PianoStaff.connectArpeggios = ##t
			\context Staff = rightHand {
				<<
					\context Voice = rhA { \rhOne }
					\context Voice = rhB { \rhTwo }
					\context Voice = rhC { \rhThree }
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
     
			%\override TextScript #'font-shape = #'italic
			\override TextScript #'extra-offset = #'(0 . 1.0)
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
			\Lyrics
			\override VerticalAxisGroup #'Y-extent = #'(-1.25 . 1.25)
			\override VerticalAxisGroup #'minimum-Y-extent = ##f
		}
	}
	 
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 8)
      }
    }


}
