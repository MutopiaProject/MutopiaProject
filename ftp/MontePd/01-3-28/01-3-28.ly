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
	title = "28. Ardo, sospiro, & piango, & sì mi piace (prima parte)"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Remigio (Fiorentino) Nannini"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1930"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c1"
      \key c \major
      \time 4/4
      d''1
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	d2 c4 r8 g8 c4 b a2 g4 g e r8 d g4. e4 d cis8 r a' b c d8. c32 b a4 g r8 d'8 c4 b8 c4 b8	
	g4 fis8 g e4 d8 d'4 c b a g \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g4 r8 a b4 r8 a b c d2 cis4 d r8 d,8 e4 r8 d e f g2 f4 e4. e8 a4. b8 c4 b2	
	r8 g g g c16 b c d e4 a, d2 r4 d, c f e2 d8 d' b b c8. b16 a8 a g4 g8 c8. b16 a8. g16 g4 \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g4 r1 r4 e4	
	fis4 g2 fis4 g a2 g4 a8 b c2 b4 r8 d c b a4 g8 a4 a8 g a b2 c8 g g8. f16 e8 d e8. f16 g8 g a4	
	b8 d d cis d4 r r8 d d8. c16 b8 a b8. c16 d8 d, g4 fis2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Ar -- do, so -- spi -- ro,~e pian -- go,
	Ar -- do, so -- spi -- ro,~e pian -- go, e si mi pia -- _ _ _ ce
	"<e" si mi pia -- "ce>"
	Pas -- sar la vi -- ta~in si soa -- _ vi pe -- _ ne,
	Co -- sì Co -- sì gra -- di -- to~e'l duol
	Co -- sì Co -- sì gra -- di -- to~e'l duol che'l cor so -- ste -- ne
	Che l'al -- ma go -- _ _ _ _ de,~e pur s'af -- flig -- ge,~e sfa -- ce;
	E da si de -- gna~et ho -- no -- ra -- ta fa -- _ _ _ _ _ ce
	Tan -- t'a -- ma -- ra dol -- cez -- za~al cor mi vie -- ne,
	Che la mia guer -- ra,~e l'a -- spre mie ca -- te -- ne,
	Ap -- rez -- zo più, che li -- ber -- ta -- te,~e pa -- ce;
	Ap -- prez -- zo più,
	"<Ap" -- prez -- zo "più,>" che li -- ber -- ta -- te,~e pa -- ce;
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r2 g'1
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef "treble_8"
	\time 4/4
	\key c \major

	r4 g2 e4 r8 c g'2 fis4 r2 g2 e4 r8 c f4 e d g r2 r4 r8 d e f g8. f32 e d4 c r r8 g' fis g e4	
	d e8 c b b a4 g8 d' e4 r8 d e fis g4 \set suggestAccidentals = ##t f!4 \set suggestAccidentals = ##f e2 r r8 a,8 b4 r8 a b cis d4 d a2 r8 e' fis g e8 d16 c d2 d4	
	r4 r8 c c c f16 e f g a8 d, g2 f4 e d2 cis4 d r8 g e e f8. e16 d8 d e4. f8 d c r4 d2 e4 f2 e4 a,
	
	d4 c8 b c2 d c4 d e d8 c e4 d2 r4 r8 d e e f e e e fis g g,4 c r r8 g'8 g8. f16 e8 d e8. f16	
	g8 d e4 d8 d d8. c16 b8 a b8. c16 d4 g,8 b8. c16 d4 \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Ar -- do, so -- spi -- ro,
	Ar -- do, so -- spi -- ro,~e pian -- go, e si mi pia -- _ _ _ ce
	Pas -- sar la vi -- ta~in si soa -- _ vi pe -- ne,
	Co -- sì Co -- sì gra -- di -- to~e'l duol
	Co -- sì Co -- sì gra -- di -- to~e'l duol che'l cor so -- ste -- _ _ _ ne
	Che l'al -- ma go -- _ _ _ _ de,~e pur s'af -- flig -- ge,~e sfa -- ce;
	E da si de -- gna~et ho -- no -- ra -- ta fa -- ce
	Tan -- t'a -- ma -- ra dol -- cez -- _ _ _ za~al cor mi vie -- _ _ _ ne,
	Che la mia guer -- ra,~e l'a -- spre mie ca -- te -- ne,
	Ap -- prez -- zo più, che li -- ber -- ta -- te,~e pa -- ce;
	Ap -- prez -- zo più, che li -- ber -- ta -- te,~e pa -- _ _ _ ce;
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 4/4
      r1 r4 g4
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r2 r8 g8 c4 a r d2 b4 r8 g c4 b c2 a4 r8 a f4 e d4. a'8 b c d8. c32 b a4 g2 r8 e' d b
	
	cis4 d8 g,4 a8 fis g c,4 d2 r8 b'8 c4 r8 b c d g,4 d a'4. a8 b cis d4 cis d r8 \set suggestAccidentals = ##t c!8 \set suggestAccidentals = ##f d e b8. \set suggestAccidentals = ##t cis!16 \set suggestAccidentals = ##f d2 cis4	
	d8 cis d g, a4 g r8 g g g c16 b c d e4 a, d2 b4 c d a1 d,4 r r r8 d' b b c8. b16 a8 d b c
	
	a4 g r a2 b4 c2 b4 e, a2 g4 f2 bes4 a2 g r4 r8 g a b c4 d8 c4 c8 d e d4 c r8 c c b
	
	c4. b8 a c g bes a4 d, r8 g g fis g4. f?8 e g d f e4 d2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	So -- spi -- ro,
	Ar -- do, so -- spi -- ro,
	Ar -- do, so -- spi -- ro,~e pian -- go,~e si mi pia -- _ _ _ ce
	Pas -- sar la vi -- ta~in si soa -- _ vi pe -- ne,
	Co -- sì Co -- sì gra -- di -- to~e'l duol
	"<Co" -- sì gra -- di -- to~e'l "duol>"
	Co -- sì gra -- di -- _ _ to~e'l duol che'l cor so -- ste -- ne
	Che l'al -- ma go -- _ _ _ _ de,~e pur s'af -- flig -- ge,~e sfa -- ce;
	E da si de -- gna~et ho -- no -- ra -- ta fa -- ce
	Tan -- t'a -- ma -- ra dol -- cez -- za~al cor mi vie -- ne,
	Che la mia guer -- ra,~e l'a -- spre mie ca -- te -- ne,
	Ap -- prez -- zo più, che li -- ber -- ta -- te,~e pa -- ce;
	Ap -- prez -- zo più, che li -- ber -- ta -- te,~e pa -- ce;
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

