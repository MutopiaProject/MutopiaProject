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
	title = "5. Vostro fui, vostro son, e sarò vostro"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Bernardo Tasso"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1907"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "petrucci-g"
      \key c \major
      \time 2/2
      g''1.
    }
  >>
>>

	cantusMusic =  \relative c''' {
	\clef treble
	\time 2/2
	\key c \major
	\tempo 2 = 60	
	g2. e4 d2 r4 e2 d4 e d8 c b4 g'2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g f?8 e d2 r4 e2 d4 g, c4. b16 a b8 c d4 e d2 d r4 g4	
	g4. f8 e4 d c b a g g'4. f8 e d c4. b8 b a16 g a2 b r r4 g'4. e8 f4 e c e d e f g f8 e d b e4 d2	
	r4 g e4. d8 c4 b c c d e f2 e4 d8 c d2 r r4 g, c4. c8 f4 e f e8 d f4 e c d e2 d r4 e4. e8 e4 f2	
	e4 a,2 f'4 e8 d d2 \set suggestAccidentals = ##t cis4 \set suggestAccidentals = ##f d2 r4 d d e4. e8 e4 f e2 d c4 b2 a4 b b c4. c8 b4 a2 b4 g'4. f8 e4 d c b2 a4 e'
	
	fis4 g e8 d c b a4 b c b e d8 c b4 d g4. f8 e4 d8 c d2 e1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Vo -- stro fui, vo -- stro son, __ _ _ _
	"<Vo" -- stro "son,>" __ _ _ _ e sa -- rò vo -- _ _ _ _ _ _ _ stro,
	Fin che ve -- drò que -- sto~ae -- r'e que -- sto cie -- _ _ _ _ _ _ _ _ _ lo;
	Vi -- li pri -- ma sa -- ran le per -- le,~e l'o -- _ _ _ _ _ stro:
	Ne -- gre,~e ar -- den -- ti fian le ne -- vi,~e'l ge -- lo __ _ _ _,
	Che'l tem -- po spen -- ga mai __ _ _ _ que -- st'ar -- dor no -- stro
	Per can -- giar cli -- ma,~ò va -- ri -- ar di pe -- _ lo;
	An -- zi cre -- sce -- rà sem -- pre~il mio bel fo -- co
	An -- zi cre -- sce -- rà sem -- pre il __ _ _ mio bel fo -- co
	Quan -- to~an -- drò più __ _ _ _ _ can -- gian -- do~e -- ta -- _ _ _ te,~e lo -- _ _ _ _ _ co. 
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c1"
      \key c \major
      \time 2/2
      r1 r2 c''1
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef treble
	\time 2/2
	\key c \major

	r2 r4 c2 b4 g2 a4 b c b8 a g a b g a2 r4 c2 b4 g2 a4 b c e2 d4 b c2 b4 r g g4. a8	
	b4 c g g a b c8 d e4. d8 c4. b8 a4. g8 g2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g b4. c8 a4 b c b8 g a b c2. b4 r2 g4 a b c2 b8 a b4 c
	
	r4 c, e4. f8 g4 a g g a b c8 g c4. b16 a b4 g2 r4 c4 a2. g4 a b c c f,2 c4 c'2 b4 g4. g8 g4 a2 b4	
	c2. a4 g4. f8 e2 d4 a' a b4. b8 b2 c c,4 r d g a4. a8 g4 f e r2 r4 e'2 d c b4. a8 a2 \set suggestAccidentals = ##t gis4 \set suggestAccidentals = ##f a a2 b4 c a8 e
	
	fis4 g e8 f? g a b4 a gis a e8 f g? a b4 c2 b4 c1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Vo -- stro fui, vo -- stro son, __ _ _ _ _ _ _ _
	"<Vo" -- stro fui, vo -- stro "son,>" e sa -- rò vo -- stro,
	Fin che ve -- drò que -- sto~ae -- r'e que -- sto cie -- _ _ _ _ _ _ _ _ _ lo;
	Vi -- li pri -- ma sa -- ran le per -- le,~e l'o -- stro: le per -- le,~e l'o -- _ _ _ stro:
	Ne -- gre,~e ar -- den -- ti fian le ne -- vi,~e'l ge -- _ _ _ _ _ lo,
	Che'l tem -- po spen -- ga mai que -- st'ar -- dor no -- stro
	Per can -- giar cli -- ma,~ò va -- ri -- ar di pe -- lo;
	An -- zi cre -- sce -- rà sem -- pre
	An -- zi cre -- sce -- rà sem -- pre il mio bel fo -- _ _ _ co
	Quan -- to~an -- drò più
	"<Quan" -- to an -- drò __ _ _ _ "più>" can -- gian -- do~e -- ta -- _ _ _ _ te,~e lo -- co.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 2/2
      r1 c'2.
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 2/2
	\key c \major
	
	r2 c4. c8 g'2 r4 c,4. c8 g'4 r g2 e4 d2 e4 f g2 r4 e fis g e4. \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g1. g2 r2 r4 c, c4. b8 a4 g
	
	c2. c4 c c d1 g,4 g'4. e8 f4 e c e d e f g2 c,4 d e f g2 g4 g e4. f8 g4 a g2 e4 f2 e4 d2 c
	
	r4 g c4. c8 f4 e f2. c4 f g a2. g8 f g2 g r4 c,4. c8 c4 d2 e4 f2 f,4 g g a2 d r g g4 a4. a8 g4 f2	
	e1 r4 g g a4. a8 g4 f2 e1 g4 a e2 a,4 a d g, c c d g, c8 d e f g4 a e f c8 d e f g4 a g2 c,1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Vo -- stro fui,
	"<Vo" -- stro "fui,>"
	Vo -- stro fui, vo -- stro son, e sa -- rò vo -- _ _ stro,
	Fin che ve -- drò que -- sto~ae -- r'e que -- sto cie -- lo;
	Vi -- li pri -- ma sa -- ran le per -- le,~e l'o -- stro: le per -- le,~e l'o -- stro:
	Ne -- gre,~e ar -- den -- ti fian le ne -- vi,~e'l ge -- lo,
	Che'l tem -- po spen -- ga mai que -- st~ar -- dor no -- _ _ _ stro
	Per can -- giar cli -- ma,~ò va -- ri -- ar di pe -- lo;
	An -- zi cre -- sce -- rà sem -- pre
	"<An" -- zi cre -- sce -- rà sem -- "pre>~il" mio bel fo -- co
	Quan -- to~an -- drò più
	"<Quan" -- to an -- drò __ _ _ _ "più>" can -- gian -- do~e -- ta -- _ _ _ _ te,~e lo -- co.
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

