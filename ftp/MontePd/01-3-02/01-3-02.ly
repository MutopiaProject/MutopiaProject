\version "2.12.3"
#(set-global-staff-size 18)

\paper
{
   %#(set-default-paper-size "letter")
   #(define fonts (make-pango-font-tree "DejaVu Serif"
                                        "DejaVu Sans"
                                        "DejaVu Sans Mono"
                                       (/ 16 20)))

% THESE ARE THE UCALGARY THESIS REQUIREMENTS
   top-margin = 1 \in
   bottom-margin = 1.22 \in
   left-margin = 1.40 \in
   right-margin = 0.850 \in
   line-width = 6.25 \in
}

hide = { 
  \once \override Accidental #'stencil = #ly:text-interface::print
  \once \override  Accidental #'text = \markup { }
}

incipit =
#(define-music-function (parser location incipit-music) (ly:music?)
  #{
    \once \override Staff.InstrumentName #'self-alignment-X = #RIGHT
    \once \override Staff.InstrumentName #'self-alignment-Y = #UP
    \once \override Staff.InstrumentName #'Y-offset = #4
    \once \override Staff.InstrumentName #'padding = #0.3
    \once \override Staff.InstrumentName #'stencil = 
    #(lambda (grob)
       (let* ((instrument-name (ly:grob-property grob 'long-text))
              (layout (ly:output-def-clone (ly:grob-layout grob)))
              (music (make-music 'SequentialMusic
                      'elements (list (make-music 'ContextSpeccedMusic
                                        'context-type 'MensuralStaff
                                        'element (make-music 'PropertySet
                                                   'symbol 'instrumentName
                                                   'value instrument-name))
                                      $incipit-music)))
              (score (ly:make-score music))
              (mm (ly:output-def-lookup layout 'mm))
              (indent (ly:output-def-lookup layout 'indent))
              (width (ly:output-def-lookup layout 'incipit-width))
              (incipit-width (if (number? width)
                                 (* width mm)
                                 (* indent 0.5))))
         (ly:output-def-set-variable! layout 'indent (- indent incipit-width))
         (ly:output-def-set-variable! layout 'line-width indent)
         (ly:output-def-set-variable! layout 'ragged-right #f)
         (ly:output-def-set-variable! layout 'ragged-last #f)
         (ly:output-def-set-variable! layout 'system-count 1)
         (ly:score-add-output-def! score layout)
         (set! (ly:grob-property grob 'long-text)
               (markup #:score score))
         (ly:system-start-text::print grob)))
  #})

%%%%%%%%%%%%%%%%%%%%%%%%%

global = {
  \set Score.skipBars = ##t
  \override Staff.BarLine #'transparent = ##t
  #(set-accidental-style 'forget)
}

\header {
	title = "2. O beata colei, ch'al fin puo dire"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Lodovico Martelli"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1904"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c1"
      \key f \major
      \time 2/2
      r\breve r2 f'1
    }
  >>
>>

	cantusMusic =  \relative c' {
	\clef treble
	\time 2/2
	\key f \major
	\tempo 2 = 60
	r1 r4 f2 g4 a2 bes4 c d d2 c4 bes2 a4 g fis4. \hide fis8 g4 a g2 a4 c g4. g8 g4 a

	f2 r2 r4 g a4. g8 a4 bes g a g f e2 d4 a'4. a8 bes4 a g a1 bes2. a4 f'8 e d c bes a

	g4 c2. bes4 a1 r4 d4 c bes \set suggestAccidentals = ##t ees4. \set suggestAccidentals = ##f d8 c4 bes a g c2 b4 \hide b c d g, f bes a8 g f d f g

	a2 r2 r4 c4 f,4. g8 a bes c bes a4 g a d, r4 f4 e8 c f2 e g4. g8 g4 a bes c2. d4
	c2 cis4 d2 \set suggestAccidentals = ##t cis!4 \set suggestAccidentals = ##f d2 r4 a4 f4. f8 bes4 a g2. f4 bes g bes a r2 r4 d4 bes4. bes8 \set suggestAccidentals = ##t ees4 \set suggestAccidentals = ##f d c bes r

	f4 g bes a2 g4 d e f g f r2 g2 bes r4 f4 g a bes a8 g f g a4. bes8 c4. bes8 a g

	c4 bes a2 g1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."	
}

	cantusLyrics = \lyricmode{
	O be -- a -- ta co -- lei,
	"<O" be -- a -- ta co -- "lei,>" ch'al fin puo di -- re,
	Io ten -- ni~un sen -- za cor
	Io ten -- ni~un sen -- za cor mol -- t'an -- ni~in vi -- ta.
	Io gli fei par -- er dol -- ce~o -- gni mar -- _ _ _ _ _ _ ti -- _ re
	Ne l'e -- tà sua più bel -- la,~e più fio -- ri -- ta;
	Ne gli la -- sciai pro -- var __  _ _ _ _ _ _ _ gli sde -- _ _ _ _ _ _ gni,~e l'i -- re
	gli sde -- gni,~e l'i -- re
	Del ti -- mor, ch'à mo -- rir gli~a -- man -- ti~in vi -- _ ta;
	E quel, ch'à l'un fu ca -- ro,~à l'al -- tro piac -- que;
	E quel, ch'à l'un fu ca -- ro, à l'al -- tro piac -- que;
	Per -- ch'io sua tut -- ta, e ei
	e ei mio tut -- _ _ _ _ _ _ _ _ _ _ _ to nac -- que.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key f \major
      \time 2/2
      r\longa r2 d'1
    }
  >>
>>

	altusMusic = \relative c' {
	\clef treble
	\time 2/2
	\key f \major
	
	r1 r1 r4 d2 e4 f2 g4 a d,4. bes8 c2 a4 d4. e8 f2 e4 f a e4. d8 e4 f d d g4. f8
	g4 c, f2. d4 e2. d2 \set suggestAccidentals = ##t cis4 \set suggestAccidentals = ##f d2 r2 r1 r4 d4.  d8 ees4 d c d f g bes2 a4. g8 g2 fis2
	a2 g g4 g bes a d, e8 f g2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g2 r1 r1 r2 r4 fis4 g a d, c f e8 d e4 c' f,4. g8
	a8 bes c bes a4 f g2 g4 e4. d8 e4 f g a g a2. g8 f e4 d e2 d4 a' f4. f8 bes4 a g

	c4 bes g bes a r4 g4 f4. f8 bes4 a g f r4 f4 g bes a8 f g a bes c bes4. a8 g2 fis4 r2 r4
	a4 bes a g f r2 r4 bes,4 d2 r2 r4 c4 d e f e8 d c d e4 f g2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g1\fermata

	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	altusLyrics = \lyricmode{
	O be -- a -- ta co -- lei, ch'al fin puo di -- _ _ _ re,
	Io ten -- ni~un sen -- za cor
	Io ten -- ni~un sen -- za cor mol -- t'an -- ni~in vi -- ta.
	Io gli fei pa -- rer dol -- ce~o -- gni mar -- ti -- _ _ re
	Ne l'e -- tà sua più bel -- la,~e più fio -- ri -- _ ta;
	Ne gli la -- sciai pro -- var __ _ _ _ gli sde -- _ _ _ _ _ _ gni,~e l'i -- re
	Del ti -- mor, ch'à mo -- rir gli~a -- man  -- _ _ _ ti~in vi -- ta;
	E quel, ch'à l'un fu ca -- ro,~à l'al -- tro piac -- que;
	E quel, ch'à l'un fu ca -- ro, à l'al -- tro piac -- _ _ _ _ _ _ _ _ que;
	Per -- ch'io sua tut -- ta, e ei e ei mio tut -- _ _ _ _ _ to nac -- _ que.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key f \major
      \time 2/2
      d'1.
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 2/2
	\key f \major
	
	d2. c4 bes2 a4 g d'2 r2 bes2. a4 g2 f4 ees d4. d8 bes'4 f c'2 f,4 f c'4. bes8 c4 f, bes bes c4. 

	d8 ees4 \hide ees d2. g,4 c2. d4 a2 d, r4 d'4. d8 ees4 d c d2 g, f bes, \[ees f\] d1 r4 d'4 c bes

	\set suggestAccidentals = ##t ees4. \set suggestAccidentals = ##f d8 c4 g a bes c4. bes8 a2 g r4 b c d g, f bes a8 g f4 f' e d c f, bes a8 g

	f8 g a bes c2 r4 bes4 f8 g a bes c4 d c2 c4 c4. b8 c4 f,2. e4 f2. g4 a bes a2 d, r4
	d'4 d4. d8 ees4 c ees4. \hide ees8 d4. f8 ees2 d r4 d4 bes4. bes8 \set suggestAccidentals = ##t ees4 \set suggestAccidentals = ##f d c bes r2 r4 d4 ees4. d8 c4
	d4 g,2. d'4 r4 d4 e d c bes r4 g4 bes2 r4 f4 g a bes a8 g f g a4. bes8 c bes a4 g d'2 g,1\fermata

	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	bassusLyrics = \lyricmode{
	O be -- a -- ta co -- lei,
	"<O" be -- a -- ta co -- "lei,>" ch'al fin puo di -- re,
	Io ten -- ni~un sen -- za cor
	Io ten -- ni~un sen -- za cor mol -- ti~e mol -- t'an -- ni
	Io gli fei par -- er dol -- ce~o -- gni mar -- ti -- _ re
	Ne l'e -- tà sua più bel -- la,~e più fio -- ri -- _ _ ta;
	Ne gli la -- sciai pro -- var __ _ _ _ 
	Ne gli la -- sciai pro -- var __ _ _ _ _ _ _ _ gli sde -- _ _ _ _ gni,~e l'i -- re
	Del ti -- mor, ch'à mo -- rir gli~a -- man -- ti~in vi -- ta;
	E quel, ch'à l'un fu ca -- ro,~à l'al -- tro piac -- que;
	E quel, ch'à l'un fu ca -- ro, à l'al -- _ _ tro piac -- que;
	Per -- ch'io sua tut -- ta e ei e ei mio tut -- _ _ _ _ _ _ _ _ _ to nac -- que.
}


\score {
	<<
		\new StaffGroup = choirStaff <<
			\new Voice = "cantus" <<
				\global
				\set Staff.autoBeaming = ##f
				\set Staff.instrumentName = "Canto"
				%\set Staff.shortInstrumentName = "C"
				\set Staff.midiInstrument = "acoustic guitar (nylon)"
									\incipit \cantusIncipit
													\cantusMusic
							>>
							\new Lyrics \lyricsto "cantus" \cantusLyrics
			
			\new Voice = "altus" <<
				\global
				\set Staff.autoBeaming = ##f
				\set Staff.instrumentName = "Alto"
				%\set Staff.shortInstrumentName = "A"
				\set Staff.midiInstrument = "harpsichord"
									\incipit \altusIncipit
													\altusMusic
							>>
							\new Lyrics \lyricsto "altus" \altusLyrics
			
			\new Voice = "bassus" <<
				\set Staff.autoBeaming = ##f
				\set Staff.instrumentName = "Basso"
				%\set Staff.shortInstrumentName = "B"
				\set Staff.midiInstrument = "acoustic bass"
									\incipit \bassusIncipit
													\bassusMusic
							>>
		>>
					\new Lyrics \lyricsto "bassus" \bassusLyrics
				%% Keep the bass lyrics outside of the staff group to avoid bar lines
		%% between the lyrics.
	>>

	\layout {
		\context {
			\Score
			%% no bar lines in staves
			\override BarLine #'transparent = ##t
			%\remove "Bar_number_engraver"
		}
		%% the next three instructions keep the lyrics between the bar lines
		\context {
			\Lyrics
			\consists "Bar_engraver" 
			\override BarLine #'transparent = ##t
			\override LyricSpace #'minimum-distance = #2.0
		} 
		\context {
			\StaffGroup
			\consists "Separating_line_group_engraver"
		}
		\context {
			\Voice
			%% no slurs
			\override Slur #'transparent = ##t
			%% Comment in the below "\remove" command to allow line
			%% breaking also at those bar lines where a note overlaps
			%% into the next measure.  The command is commented out in this
			%% short example score, but especially for large scores, you
			%% will typically yield better line breaking and thus improve
			%% overall spacing if you comment in the following command.
			\remove "Forbid_line_break_engraver"
			\consists Ambitus_engraver
		}
		indent=6\cm
		incipit-width = 4\cm
	}

	\midi {
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 60 2)
		}
     }
}

