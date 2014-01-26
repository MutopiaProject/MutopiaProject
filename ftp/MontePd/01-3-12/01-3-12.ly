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
	title = "12. Volentier canterei de vostri honori"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Pietro Barignano"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1914"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c1"
      \key f \major
      \time 4/4
      r4 bes'4.
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key f \major
	\tempo 4 = 60	
	r8 bes8. a16 g8 f8. g16 a g a bes c8 g c c bes8. c16 d8. c32 bes a16 bes c4 b8 c2 b4 r r8 a4 a8 a4 g8 g
	
	f16 e d e f g a g f8 d e f g4 d8 d'4 d8 d4 c8 c bes16 a g a bes c d c bes8 f bes c d c16 bes a8 g16 f g4 g r
	
	r8 d' a a c8. bes32 a g8 g bes bes a8. bes16 c bes a g f8 c f4 e r1 r8 g d'4. c8 c4. bes8 bes a f4. g8 e4 e r8 g d'4. c8	
	c4. bes8 bes a g f e4 d r8 d'8. d16 g,8 a4 bes8 a8. a16 g8 e4 fis a2 d bes4 a bes4. a8 g2 fis8 d' c8. bes16 a8 g a4. a8 f4 d
	
	bes'2 a4 r8 bes8 bes8. a32 g a4. f8 g4 r8 bes bes8. a32 g a4. f8 g4 r8 a b! \hide b c16 bes? a g f8 g4 f e8 f4 r8 f f bes8. bes16 g8 bes a bes a
	
	g4. fis8 r4 r8 f8. f16 d8 g a d, a' g c, f4 e r2 d'4 c8 a b! c d8. c32 bes? a4 c \set suggestAccidentals = ##t bes8 \set suggestAccidentals = ##f g a bes c8. bes32 a g4 r c bes a2 g \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Vo -- len -- tier can --  _ _ _ _ _ _ te -- rei de' vo -- _ _ _ _ _ _ _ stri~ho -- no -- ri,
	S'io spe -- ras -- si con l'ar -- _ _ _ _ _ _ _ _ co del mio~in -- ge -- gno
	S'io spe -- ras -- si con l'ar -- _ _ _ _ _ _ _ _ co del mio in -- ge -- _ _ _ _ _ gno
	Ir sol vi -- cin, __ _ _ _ non che toc -- car -- _ _ _ _ _ _ ne~il se -- gno.
	Ma don -- d'hav -- reb -- b'il mio vo -- ler le brac -- cia
	Ma don -- d'ha -- vreb -- b'il mio vo -- ler le brac -- cia
	A ti -- rar tan -- to, A ti -- rar tan -- to, se'l spa -- tio~è si lun -- _ _ go,
	ch'io pur à pe -- na col pen -- sier vi giun -- go:
	Pe -- rò __ _ _ _ me -- glio~è
	"<Pe" -- rò __ _ _ _ me -- "glio~è>"
	Che'l cor v'in -- chi -- _ _ _ _ ni,~e tac -- _ cia,
	Che vo -- len -- do far sa -- tio~il gran de -- si -- re
	Sen -- za po -- ter com -- pi -- ta -- men -- te di -- re,
	For -- se l'ha -- vre -- ste voi __ _ _ _
	"<For" -- se l'ha -- vre -- ste "voi>" __ _ _ _
	Ma -- do -- na~à sde -- _ gno.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key f \major
      \time 4/4
      r1 r4 f'4.
    }
  >>
>>

	altusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key f \major

	r2 r8 f8. e16 d8 c8. d16 e d e f g8 d g g f8. g16 a8 g16 f e f g4 fis8 g4 fis r1 r8 d4 d8 d4 c8 c
	
	bes16 a g a bes c d c bes8 f bes bes a4 g r8 g'8 f16 e d e f g a g f8 c f f e4 e r8 g8 d d f8. e32 d c4 r r8 d f f e f
	
	c16 d e8. d16 d4 \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d4 r8 d a'4. g8 g4. f8 f e a4 a8 g4 fis8 r4 r8 g, g'4 g8 c, g'4. f8 f e a4 a8 g4 f8 e16 d d4 \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d4	
	r8 g,8. g16 d'8 c4 bes8 f'8. f16 d8 cis4 d r f2 g f4 ees d2 c4 d r r8 g8 f8. e16 d8 c d d bes g g'2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g r r8 f f8. e32 d
	
	e8 c d4 r8 ees8 d4 d c8 g' g fis g g, a a bes16 a g f e8 a g4 f r8 d' d g8. g16 c,8 f4 d8 f4 ees d c8 d4 r2	
	r4 r8 f8. f16 d8 g a d, d c c bes4 a r g' f8 c e f g8. f32 e d8 f e c d e f8. e32 d c4 d2 c4 bes a2 g1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Vo -- len -- tier can -- _ _ _ _ _ _ te -- rei de' vo -- _ _ _ _ _ _ _ stri~ho -- no -- ri,
	S'io spe -- ras -- si con l'ar -- _ _ _ _ _ _ _ _ co del mio~in -- ge -- gno
	con l'ar -- _ _ _ _ _ _ _ _ co del mio~in -- ge -- gno
	Ir sol vi -- cin __ _ _ _,
	non che toc -- car -- ne~il se -- _ _ _ _ _ gno.
	Ma don -- d'hav -- reb -- be~il mio vo -- ler le brac -- cia
	Ma don -- de "<ma" don -- "d>'ha" -- vreb -- b'il mio vo -- ler le brac -- _ _ _ cia
	A ti -- rar tan -- to,
	A ti -- rar tan -- to,
	se'l spa -- tio~è si lun -- _ go,
	Ch'io pur à pe -- na col pen -- sier vi giun -- _ go:
	Pe -- rò __ _ _ _ me -- glio~è
	"<Pe" -- rò me -- glio~è pe -- rò me -- "glio~è>" che'l cor v'in chi -- _ _ _ _ ni,~e tac -- cia,
	Che vo -- len -- do far sa -- tio~il gran de -- si -- _ re
	Sen -- za po -- ter com -- pi -- ta -- men -- te di -- re,
	For -- se l'ha -- vre -- ste voi __ _ _ _ 
	"<For" -- se l'ha -- vre -- ste "voi>" __ _ _ _ Ma -- do -- na~à sde -- gno.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key f \major
      \time 4/4
      r\breve r4 c'4.
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key f \major
	
	r1 r8 c8. bes16 a8 g8. a16 bes a bes c d8 a d d c bes a4 g r8 d'4 d8 d4 c8 c bes16 a g a bes c d c
	
	bes8 f bes bes a4 g2 r r4 r8 d' bes16 a g a bes c d c bes8 f bes a d4 c r8 c g g bes8. a32 g f4 r8 a c c bes g d'4	
	a1 r8 g d'4. c8 c4. bes8 bes4 a f4. g8 d4 d8 d d'4. c8 c4. bes8 bes4 a f4. g8 d4 g r r8 bes8. bes16 bes8 bes4 f r8 d'8. d16 g,8	
	a4 d, d'2 bes ees,4 f g4. f8 ees2 d8 bes' a8. g16 f8 e d4 f bes2 g4 d'2 g,4 r8 ees'8 d4 d c8. bes32 a g4 r r8 f'8	
	f8. e32 d e8 c d4 r r1 r8 f,8 f bes8. bes16 g8 ees'4 d r8 d, g4. d8 ees4 d2 r8 f8. f16 d8 g a d, d' c c bes4 a
	
	r4 f g8 a bes8. c16 d8. c32 bes a4 r d c8 a bes c d8. c32 bes a4 g \set suggestAccidentals = ##t fis2 \set suggestAccidentals = ##f g4 d2 g1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Vol -- en -- tier can -- _ _ _ _ _ _ ter -- ei de' vo -- stri~ho -- no -- ri,
	s'io spe -- ras -- si con l'ar -- _ _ _ _ _ _ _ _ co del mio~in -- ge -- gno
	con l'ar -- _ _ _ _ _ _ _ _ co del mio~in -- ge -- gno
	Ir sol vi -- cin __ _ _ _,
	non che toc -- car -- ne~il se -- gno.
	Ma don -- d'ha -- vreb -- b'il mio vo -- ler le brac -- cia
	Ma don -- d'ha -- vreb -- b'il mio vo -- ler le brac -- cia
	A ti -- rar tan -- to,
	A ti -- rar tan -- to, se'l spa -- tio~è si lun -- _ _ go,
	Ch'io pur à pe -- na col pen -- sier vi giun -- go:
	Pe -- rò me -- glio~è __ _ _ _
	"<Pe" -- rò __ _ _ _ me -- "glio~è>"
	Che vo -- len -- do far sa -- tio
	il gran de -- si -- re
	Sen -- za po -- ter com -- pi -- ta -- men -- te di -- re,
	For -- se l'ha -- vre -- ste voi __ _ _ _
	"<For" -- se l'ha -- vre -- ste "voi>" __ _ _ _
	Ma -- don -- na~à sde -- gno.
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

