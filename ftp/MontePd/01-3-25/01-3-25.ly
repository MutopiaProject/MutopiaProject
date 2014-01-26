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
	title = "25. Quel desir, c'hebbi in sù la vista prima"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Angelo Di Costanza"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1927"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "petrucci-g"
      \key c \major
      \time 4/4
      e''2.
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	e4. e8 a,4 e'8. f16 g8 g f f e4 d8 d g, a b4 cis r8 e4 e8 a,4 e'8. f16 g8 g f f e4 d r
	
	e8 e16 e e8 e f c d c b4 a c2 a4 c b r8 e8 c4 e d8 g f f e e d e f e d4 d8 d d d
	
	e8 c f8. e16 d8 c b4 a r r r8 f'8 e8. d16 c8 d b4 a r r8 f'8 e8. d16 c8 d b e c c d4 d8 d4 d8 d4 e8 fis
	
	g4 e2 d 4 c b4. a16 g a2 b8 g' f e d4. c8 f8. e16 d8 e a,4. \set suggestAccidentals = ##t gis8 \set suggestAccidentals = ##f a8. g?16 fis8 g4 fis8 g g' f e d4. c8 f8. e16	
	d8 g, a c b b c8. b16 a8 b a4 b r8 g g g c4. a8 c d e e, g a b c b4 a2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Quel de -- sir, c'heb -- bi~in sù la vi -- sta pri -- ma la vi -- sta pri -- ma
	Quel de -- sir, c'heb -- bi~in sù la vi -- sta pri -- ma
	Quan -- do nei tuoi be -- gli~oc -- chi~a -- mor m'ap -- par -- se, 
	Sem -- pre sta -- rà
	Sem -- pre sta -- rà 
	"<Sem" -- pre sta -- "rà>" de la mia men -- te~in ci -- ma,
	Fin che'l mio cor -- po ven -- ga~à cen -- er far -- se;
	Che nul -- la~al mon -- do prez -- za,
	Che nul -- la~al mon -- do prez -- z'e nul -- la sti -- ma
	Quan -- to ben sen -- za te po -- tria tro -- var  -- _ _ _ se;
	Tua fu da l'ho -- ra,~e tua sa -- rà mia vi -- ta~e tua sa -- rà mia vi -- ta
	Tua fu da l'ho -- ra,~e tua sa -- rà
	Tua fu da l'ho -- ra,~e tua sa -- rà mia vi -- ta
	In -- fin al dì de l'ul -- ti -- ma de l'ul -- ti -- ma par -- ti -- ta.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key c \major
      \time 4/4
      r1 r4 a'2
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef treble
	\time 4/4
	\key c \major

	r2 r8 a4 a8 e4 a8. b16 c8 c b4 b8  a4 \set suggestAccidentals = ##t gis8 \set suggestAccidentals = ##f a4 r b8. b16 c4. b8 b4 c8 d4 c8 b b16 b b8 b
	
	c4. g8 a16 b c a b8 a4 gis8 a4 e2 fis4 a gis r8 \set suggestAccidentals = ##t gis! 
\set suggestAccidentals = ##f  a4 c b8 b a b c b b a16 g a b c4 b4 b8 a b c a
	
	a8. c16 b8 a gis4 a8 f e8. d16 c8 c'4 b8 c4 r8 a g8. f16 e8 a4 gis8 a a c8. b16 a8 a g g a c b2. b4 r4 r8 c4 c8	
	c4 f,8 g a4 d,8 e8. d16 g4 fis16 e \set suggestAccidentals = ##t fis!4 \set suggestAccidentals = ##f g8 g a c b4 a2 r8 g a c b b c8. b16 a8 b a4 b8 g a c b4 a2	
	r8 c4 a \set suggestAccidentals = ##t gis!8 \set suggestAccidentals = ##f e4 fis8 \set suggestAccidentals = ##t g!4 fis!8 \set suggestAccidentals = ##f g4 r r8 e e e a4 r8 d,8 g a b c \set suggestAccidentals = ##t gis \set suggestAccidentals = ##f a4 \set suggestAccidentals = ##t gis!8 \set suggestAccidentals = ##f a2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Quel de -- sir, c'heb -- bi~in sù la vi -- sta pri -- _ ma 
	c'heb -- bi~in sù la vi -- sta pri -- ma
	Quan -- do nei tuoi be -- gli~oc -- chi~a -- mor __ _ _ _ _ m'ap -- par -- se, 
	Sem -- pre sta -- rà
	Sem -- pre sta -- rà de la mia men -- te~in ci -- _ _ _ _ _ ma,
	Fin che'l mio cor -- po ven -- ga~à ce -- ner far -- se;
	Che nul -- la~al mon -- do prez -- za,
	"<Che" nul -- la~al mon -- do prez -- "za,>"
	Che nul -- la~al mon -- do prez -- z'e nul -- la sti -- ma
	Quan -- to ben sen -- za te po -- tria tro -- var -- _ _ _ se;
	Tua fu da l'ho -- ra,
	"<Tua" fu da l'ho -- "ra,>~e" tua sa -- rà mia vi -- ta
	Tua fu da l'ho -- ra e tua sa -- rà mia vi -- _ ta
	In -- fin al dì de l'ul -- ti -- ma par -- ti -- _ _ ta.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r\longa e'2.
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r1 r e4. e8 a,4 e'8. f16 g8 g f f e2 a, r1 r a2 d4 a e'2 r4 c g' d a'8 g g e d c g'4	
	g8 g fis g c, \set suggestAccidentals = ##t f! \set suggestAccidentals = ##f d8. c16 g'8 a e4 a,8 a' g8. f16 e8 f d4 c r8 f e8. d16 c8 d b4 a8 d a' e f d
	
	e c f a g4 g8 g4 g8 g4 c,8 d e4 a,2 bes4 f \[g2 d'\] g,4 r r8 g' f e d4. c8 f8. e16 d8 e a,4 d2 r4 r r8 g
	
	f8 e d4. c8 f8. e16 d8 e a,4 d2 r8 g, g g c4. a8 c d e f e1 a,2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Quel de -- sir, c'heb -- bi~in sù la vi -- sta pri -- ma 
	Sem -- pre sta -- rà 
	Sem -- pre sta -- rà de la mia men -- te~in -- ci -- ma,
	Fin che'l mio cor -- po ven -- ga~à ce -- ner far -- se;
	Che nul -- la~al mon -- do prez -- za,
	"<Che" nul -- la~al mon -- do prez -- "za,>"
	Che nul -- la~al mon -- do prez -- z'e nul -- la sti -- ma
	Quan -- to ben sen -- za te po -- tria tro -- var -- _ se;
	Tua fu da l'ho -- ra,~e tua sa -- rà mia vi -- ta
	Tua fu da l'ho -- ra,~e tua sa -- rà mia vi -- ta
	In -- fin al dì de l'ul -- ti -- ma par -- ti -- ta.
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
			tempoWholesPerMinute = #(ly:make-moment 70 4)
		}
     }
}

