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
	title = "19. Poi c'hor è dolce ogni passato scempio"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Ercole Bentivoglio"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1921"
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
      d''2
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	d4 b8 e d4 g,8 c4 b8 c4 d e16 d c b a b c b d c b a g a b g a4 b r r r8 e d8. e16 f8 d
	
	e2 f4 g2 f4 e2 d8 d b8. d16 c8 a b4 r8 b c d b4 a8 d g,8. b16 a8 a g b c d b a16 g a4 b r8 d
	
	e8 f g2 fis4 r8 d e8. d16 c8 b a4 g r r8 g a b c g' f8. e16 d8 c4 b8 c4 d4. d8 d4. d8 c4 b e a,2 b a b4 r
	
	r8 g'8 e4. g8 f d e8. f16 e8 d cis4 \hide cis8 \hide cis d8. b16 \set suggestAccidentals = ##t cis!8 \set suggestAccidentals = ##f d e4 r8 b c8. a16 b8 c a8. d16 c8 a b g g4. f8 e4 d8 d'
	
	b8 c d4 r r r8 a b b c a d4 e r2 r8 d b c d4 r8 a b b c a d c16 b a4 b8 b c c d e c4 b2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Poi c'hor è dol -- ce~o -- gni pas -- sa -- to scem -- _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ pio,
	E dol -- ce~il ri -- mem -- brar gl'an -- ti -- chi stra -- ti,
	Poi che più di so -- spir l'a -- ria non em -- pio
	Poi che più di so -- spir l'a -- ria non em -- _ _ _ pio
	Be -- ni -- gni fa -- ti, e poi che se -- te sa -- ti
	Be -- ni -- gni fa -- ti,~e poi che se -- te sa -- ti
	De le la -- gri -- me mie, del mar -- tir em -- pio,
	Tem -- po~è c'hu -- mi -- le -- men -- te vi rin -- gra -- ti:
	E che rin -- gra -- ti~A -- mor,
	"<E" che rin -- gra -- ti~A -- "mor,>" rin -- gra -- ti~A -- mor, che'l cor mi svel -- se,
	E diel -- lo~a lei, che tra le bel -- le sciel -- se
	E diel -- lo~a lei, che tra le bel -- le sciel -- _ _ _ se
	"<che" tra le bel -- le sciel -- "se.>"
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c1"
      \key c \major
      \time 4/4
      r1 r4 g'4
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef treble
	\time 4/4
	\key c \major

	r2 r8 g8 e a g4 c,8 c'4 b8 c4. g8 a g16 f e d g4 \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g b a8. b16 c8 a b e, g8. g16 a8 b
	
	c8. b32 a g4 d' e2 d \set suggestAccidentals = ##t cis4 \set suggestAccidentals = ##f d8 d, e8. d16 e8 f g4 r8 g8 a4 r8 g8 a b c b c d b4 a8 a g g fis4 g8. a16 b4	
	r8 a b c d c16 b a4 g r8 g a b c4. b8 a8. g16 f8 e d4 c r4 r2 r4 b'!4 a b4. b8 a4 gis a e fis2 g \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g
	
	r8 g e4 r8 c' b g a b g16 f g a g8 f e4 e r r8 b' g8. e16 fis8 g e4 r8 e f8. d16 e8 f d e d e4 d \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d4 r8 a'8	
	fis8 g a4 r8 e fis \hide fis g16 f? e f g8 c b4 c8. b16 a4 r8 g e f g4 r2 r8 g e f g e fis \hide fis g4 e8 a8. g16 g4 \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Poi c'hor è dol -- ce~o -- gni pas -- sa -- to scem -- _ _ _ _ _ _ pio,
	E dol -- ce~il ri -- mem -- brar
	"<E" dol -- ce~il ri -- mem -- "brar>" __ _ _ _ gl'an -- ti -- chi stra -- ti,
	Poi che più di so -- spir
	Poi che più di so -- spir l'a -- ria non em -- pio l'a -- ria non em -- _ _ pio
	Be -- ni -- gni fa -- _ _ _ ti,
	Be -- ni -- gni fa -- ti,~e poi che se -- te sa -- ti
	De le la -- gri -- me mie, del mar -- tir em -- _ pio,
	Tem -- po~è c'hu -- mi -- le -- men -- te vi __ _ _ _ _ rin -- gra -- ti:
	E che rin -- gra -- ti~A -- mor,
	"<E" che rin -- gra -- ti~A -- "mor,>" che'l cor mi svel -- _ se,
	E diel -- lo~a lei, che tra le bel -- _ _ _ _ le sciel -- _ _ se
	E diel -- lo~a lei,
	"<E" diel -- lo~a "lei,>" che tra le bel -- le sciel -- _ _ _ se.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r\breve r4 g'4
    }
  >>
>>

	bassusMusic = \relative c'' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r1 r8 g e a g4 c,8 f4 e8 f g8. f16 e8 d4 g,8 g d'8. d16 e8 f g4. f16 e d4 c2 bes4 g a1 d4 r
	
	r4 r8 g8 e8. g16 f8 d e4 r8 g e8. g16 f8 d e g f d e4 d r8 g,8 g'4. f8 e4 d2 r1 r4 r8 c d e f4. e8 a8. g16 f8 e d4	
	c g' fis g4. g8 a4 e4 cis2 d e4 cis d g,8 g' e4 r r8 a g e f g c,4. d8 a4 a r r8 g'8 e8. c16 d8 e
	
	a,4 r8 a8 d8. b16 c8 d g,8 c b c d4 a r2 r4 r8 d b c d4 r8 g e f g4 r8 e fis fis g16 f? e f g8 d e4	
	d8 g e f g4 r8 d b c d4 r8 g, a a b c a4 g2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Poi c'hor è dol -- ce~o -- gni pas -- sa -- _ _ to scem -- pio,
	E dol -- ce~il ri -- mem -- brar __ _ _ _ gl'an -- ti -- chi stra -- ti,
	Poi che più di so -- spir
	"<Poi" che più di so -- "spir>" l'a -- ria non em -- pio
	Be -- ni -- gni fa -- ti,
	Be -- ni -- gni fa -- ti,~e poi che se -- te sa -- ti
	De le la -- gri -- me mie, del mar -- tir em -- _ pio,
	Tem -- po~è c'hu -- mi -- le -- men -- te vi rin -- gra -- ti:
	E che rin -- gra -- ti~A -- mor,
	"<E" che rin -- gra -- ti~A -- "mor,>" ch'el cor mi svel -- se,
	E diel -- lo~a lei,
	E diel -- lo~a lei, che tra le bel -- _ _ _ _ le sciel -- se
	E diel -- lo~a lei,
	"<E" diel -- lo~a "lei,>" che tra le bel -- le sciel -- se.
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

