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
	title = "15. Vissimi un tempo in dolce foco ardendo"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Vincenzo Quirino"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1917"
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
      b'2.
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	b4. b8 b4 c2 a4 a4. a8 g4 g f8. e16 f4 e4. a8 a8. b16 c8 a g c b g d'2. cis4 r8 d4 b8	
	c4 a8 a b4 g r r8 d'4 b8 c4 a8 a b4 g c8 e d16 c b a g4 a r8 b b g a b c8. b16 a8 g a8. g16 f8 e
	
	d8 cis a'2 a4 a2 a4 a8 a4 gis8 a4 r d b a b a8 d b4 a b g r8 a g8. f16 e8 e fis \hide fis g8. f?16 e4 d8 d' c8. b16	
	a8 a b a c8. b16 a4 \set suggestAccidentals = ##t gis \set suggestAccidentals = ##f r r8 a c c d e d4 c r8 a c c d e d c16 b a4. c8 b c d4 g,2. r4 r8 e8	
	f4 e8 a4 g8 r4 r2 e4 f e8 c'4 b8 a c b a gis4 a2 r4 r e2 f4 e8 a4 gis8 r a4 b8 c c4 b8 a2 gis2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Vis -- si -- mi~un tem -- po~in dol -- ce fo -- co~ar -- den -- _ _ do
	Sen -- za~al -- tra te -- ma di fu -- tu -- re pe -- ne,
	Et del lu -- me di quel -- la
	"<Et" del lu -- me di quel -- "la>~il" cor pa -- scen -- _ _ _ _ do,
	Che per sua lon -- tan -- an -- _ _ za~ho -- ra __ _ _ mi tie -- ne
	Pri -- vo d'o -- gni dol -- cez -- _ za; on -- de pian -- gen -- do on -- de pian -- gen -- do
	La vo cer -- can -- do~in -- tor -- no~à ques -- te~a -- re -- ne
	La vo cer -- can -- do~in -- tor -- no~à que -- ste~a -- re -- ne
	In -- tor -- no~à que -- sti mon -- ti,
	"<In" -- tor -- no~à que -- sti mon -- _ _ "ti,>" e so -- vra l'on -- de:
	Ne al -- tro ch'E -- cho
	"<Ne" al -- tro ch'E -- "cho>~al" mio mal mi ri -- spon -- de
	Ne al -- tro ch'E -- cho al mio mal mi ri -- spon -- de.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r1 r2 a2.
    }
  >>
>>

	altusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major

	r2 r4 a4. a8 a4 f'4. f8 e4 e d8 cis d2 cis4 r r8 e e8. f16 g8 e d g f d f4 e r g e8 f4 d8	
	r8 d e4 c r g' e8 f4 d8 r d e4. c8 g'8. f16 e8 g4 fis8 g4 r1 r8 d d cis d e f8. e16 d8 a f' e d4. cis8 r f4 e8	
	d4 d8 c b!4 a % WHAT IS THIS? r1? r2?
	r8 g'4 fis8 g4 d d8 g f8. e16 d8 d e e f8. e16 d4 c r r8 d c8. b16 a8 a e' e f8. e16 d4	
	c4 r r r8 d f f g a g16 g, c4 b8 c c f f g a g4. g8 f e16 d e8 fis g2 e4 r b c b8 e4 d8 r4	
	r4 a c b r8 e4 d8 e4 g f8 e d8. c16 b4 a r2 b4 c a8 e'4 d8 r2 r8 c4 b8 a4 d4. c8 a4 b2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Vis -- si -- mi~un tem -- po~in dol -- ce fo -- co~ar -- den -- do
	Sen -- za~al -- tra te -- ma di fu -- tu -- re pe -- ne,
	Et del lu -- me di quel -- la
	Et del lu -- me di quell -- la~il cor __ _ pa -- scen -- _ do,
	Che per sua lon -- tan -- an -- _ _ za~ho -- ra mi tie -- ne
	Pri -- vo d'o -- gni dol -- cez -- za; on -- de pian -- gen -- do
	La vo cer -- can -- do~in -- tor -- no~à que -- ste~a -- re -- ne
	La vo cer -- can -- do~in -- tor -- no~à que -- ste~a -- re -- ne
	In -- tor -- no~à que -- sti mon -- _ _ _ ti,
	"<In" -- tor -- no~à que -- sti mon -- "ti,>~e" so -- _ _ _ vra l'on -- de:
	Ne al -- tro ch'E -- cho
	Ne al -- tro ch'E -- cho~al mio mal mi ri -- spon -- _ _ de
	Ne al -- tro ch'E -- cho al mio mal mi ri -- spon -- de.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 4/4
      r1 e'2.
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r2 e4. e8 e4 f4. d8 d2 cis4 d8 a d,4 a'2 r8 a a8. b16 c8 a g c b g d'4 a2 r r4 d4. b8 c4	
	a8 a b4 g r r8 d'4 b8 c4 a8 a b g c e d4 g,2 r8 e' e c d e f8. e16 d8 a f' e d4. cis8 r4 r8 f4 e8	
	d4 d8 c b!4 a r8 g4 fis8 g4 d'4 g,8 g4 fis8 g4 d' g,8 d' c8. b16 a8 a b b c8. b16 a4 g8 g a8. g16 fis8. g16 a4	
	d,4 r8 f'8 e8. d16 c8 d e e f8. e16 d4 c r8 e, g g a e' d4 c r8 c b c d c16 b a4 e b' c b8 e4 d8 r1	
	b4 c a8 e'4 d8 r a4 b8 c8. b32 a e'4 r8 c,8 d4 e a8 a c4 b8 e4 d8 r4 r8 a4 b8 c8. b32 a e'4 a,4. g8 f1 e2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Vis -- si -- mi~un tem -- po~in dol -- ce fo -- co~ar -- den -- do
	Sen -- za~al -- tra te -- ma di fu -- tu -- re pe -- ne,
	E del lu -- me di quel -- la
	"<E" del lu -- me di quel -- "la>~il" cor pa -- scen -- do,
	Che per sua lon -- tan -- an -- _ _ za~ho -- ra mi tie -- ne
	Pri -- vo d'o -- gni dol -- cez -- za; on -- de pian -- gen -- do
	on -- de pian -- gen -- do
	La vo cer -- can -- do~in tor -- no~à que -- ste~a -- re -- ne 
	in -- tor -- no~à que -- ste~a -- re -- ne
	La vo cer -- can -- do~in -- tor -- no~à que -- ste~a -- re -- ne
	In -- tor -- no~à que -- sti mon -- ti, e so -- vra l'on -- _ _ _ de:
	Ne al -- tro ch'E -- cho
	"<Ne" al -- tro ch'E -- "cho>" al mio mal __ _ _ _  mi ri -- spon -- de
	Ne al -- tro ch'E -- cho al mio mal __ _ _ _ mi ri -- spon -- de.
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

