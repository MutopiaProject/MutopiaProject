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
	title = "1. Amor, che sol dei cor leggiadri ha cura"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Unknown"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1903"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c1"
      \key c \major
      \time 2/2
      r2 a'2
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 2/2
	\key c \major
	\tempo 2 = 60	
	r4 a4 c2 r4 a4 g f e a, a'8 g a b c4 f, e8 d16 c d8 e f4. g8 a2. g8 f
	
	g2 g r4 c4 c4. b8 a4 g g e fis g e2 d4 a'4. b8 c4 b a a2 r4 f4. g8 a4 g f c'
	
	a4 g c b a2 \set suggestAccidentals = ##t gis4 \set suggestAccidentals = ##f a e c'4. c8 c4 c d2. cis4 r4 b4 g4. g8 g4 c2 a gis4 r4	
	g4 a8 b c b a g f g a2 bes g a4 a c2 r4 a4 g f e a2 g4 c2 b4 a r4 b4 c2 r4	
	a4 g f e a c f, e d cis4 e4. e8 d2 \set suggestAccidentals = ##t cis4 \set suggestAccidentals = ##f d d'4. d8 d4 c bes a2 r4 a4 e2 c'2	
	b4 a8 g a b c2 b4 c2 r4 a4 g f e d cis4. d8 e2 r4 g4 a b c d e8 d c b a4. g16 f e4 c'4	
	bes8 a a2 g4 f e r4 a4 a a b2. b4 r2 r4 a4 a a b2. b4 c4. b8 a4 g f4. e16 d e2 d1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."	
}

	cantusLyrics = \lyricmode{
	A -- mor, che sol dei cor leg -- gia -- _ _ _ _ dri~ha cu -- _ _ _ _ _ _ _ _ _ _ ra,
	Ne mai scal -- dar de -- gno -- si~al -- ma vil -- la -- na:
	Di sa -- lir vi -- vo~al ciel
	"<Di" sa -- lir vi -- vo~al "ciel>" l'huo -- mo~as -- si -- cu -- _ _ ra
	Con ot -- ti -- mo ri -- po -- so,
	Con ot -- ti -- mo ri -- po -- so, e lo -- _ _ _ _ _ _ _ _ de~hu -- ma -- na,
	A -- mor o -- gni vir -- tù sem -- pli -- ce,~e pu -- ra
	A -- mor o -- gni vir -- tù
	A -- mor o -- gni vir -- tù sem -- pli -- ce,~e pu -- ra
	O -- gni bel -- lez -- za vil, ca -- du -- ca,~e va -- _ _ _ _ _ _ na;
	E ne ri -- pe -- te pur __ _ _
	E ne ri -- pe -- te pur __ _ _ _ _ _ _ _ ch'io mi di -- stem -- _ _ pre,
	Che'n voi rad -- dop -- pia
	"<Che'n" voi rad -- dop -- "pia>" la mia vi -- ta sem -- _ _ _ pre?
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key c \major
      \time 2/2
      r1 r2 a'2
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef treble
	\time 2/2
	\key c \major
	
	r2 r4 a c2 r4 a g f e a, a'8 g a b c4 g a4. g8 f e d c d e f2 e8 d e4 c'
	
	c4. b8 a4 g f c d e4. d8 d2 \set suggestAccidentals = ##t cis!4 \set suggestAccidentals = ##f d4. c?16 b a2 r4 d4. e8 f4 e d a' c4. b8 a4 g f
	
	e a g c b2 a4 c a4. a8 a4 a f e8 d f4 e d2 e4. e8 e4 g a4. b8 c4 b b2 r4 e,4 f8 g a g f4 e
	
	d8 e f2 e4 f2 r4 a c2 r4 a4 g f e1 r4 a2 g4 f e2 d4 e4 a c2 r4 a4 g f e cis4. \hide cis8 d4 e2 d1 r4	
	d4. d8 d4 e fis g a e a g8 f e d \[c2 d\] c2 r4 f4 e d cis d e a g4. f8 e4. d8 e2 r2	
	g2 c4. b8 a4 g2 f4. e8 d2 cis8 b \set suggestAccidentals = ##t cis!2 \set suggestAccidentals = ##f r4 d d d e2. e4 r4 e4 fis2. \hide fis4 g2. g4 c,8 d e4. d8 d2 \set suggestAccidentals = ##t cis4 \set suggestAccidentals = ##f  d1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	altusLyrics = \lyricmode{
	A -- mor, che sol dei cor leg -- gia -- _ _ _ _ dri~ha cu -- _ _ _ _ _ _ _ _ _ _ ra,
	Ne mai scal -- dar de -- gno -- si~al -- ma vil -- _ _ la -- na: __ _ _ _
	Di sa -- lir vi -- vo~al ciel
	"<Di" sa -- lir vi -- vo~al "ciel>" l'huo -- mo~as -- si -- cu -- ra
	Con ot -- ti -- mo ri -- po -- _ _ _ so,
	Con ot -- ti -- mo ri -- po -- _ _ _ so, e lo -- _ _ _ _ de~hu -- ma -- _ _ _ na,
	A -- mor o -- gni vir -- tù sem -- pli -- ce,~e pu -- _ ra
	A -- mor o -- gni vir -- tù sem -- pli -- ce,~e pu -- ra
	O -- gni bel -- lez -- za vil, ca -- du -- ca,~e va -- _ _ _ _ _ na;
	E ne ri -- pe -- te pur
	E ne ri -- pe -- te pur ch'io mi __ _ _ di -- stem -- _ _ _ _ pre,
	Che'n voi rad -- dop -- pia
	"<Che'n" voi rad -- dop -- "pia>" la mia vi -- ta sem -- _ pre?
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 2/2
      r\breve r1 r2 a2
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 2/2
	\key c \major
	
	r1 r2 r4 a c1 r4 d4 c bes a d, d'8 c d e f4 d c2 c4 a f' e f c d e b c
	
	d8. c16 bes4 a2 r2 r r4 f'4. e8 d4 c bes a a8 b c4 d e f8 f, c'4. d8 e4 c d e a,4 a
	
	f4. f8 f4 f b2 a r4 g4 c4. c8 c4 c f2 e1 r4 a,4 d8 e f e d4 c bes2 c r1 r1 r4 a c2 r4	
	a4 g f e e a2 r4 f'4 e d c f,4. f8 f4 g2 a1. r1 r4 g4. f8 f4 e d c1 e2 f4 a g2 c,4 f
	
	f8 g a b c4 d a bes a2 r4 e'4 e8 d c b a4 g c b c2 f,2 c'2 d bes a1 r2 r4	
	g4 g g a2. a4 r4 d4 d d e2. e,4 f g a bes a2 d,1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	bassusLyrics = \lyricmode{
	A -- mor, che sol dei cor leg -- gia -- _ _ _ _ dri~ha cu -- ra,
	Ne mai scal -- dar de -- gno -- si~al -- ma vil -- la -- _ _ na:
	Di sa -- lir vi -- vo~al ciel
	"<Di" sa -- lir vi -- vo~al "ciel>" l'huo -- mo~as -- _ _ si -- cu -- _ ra
	Con ot -- ti -- mo ri -- po -- so,
	Con ot -- ti -- mo ri -- po -- so, e lo -- _ _ _ _ de~hu -- ma -- na
	A -- mor o -- gni vir -- tù
	A -- mor o -- gni vir -- tù sem -- pli -- ce,~e pu -- ra
	O -- gni bel -- lez -- za vil, ca -- du -- ca,~e va -- na;
	E ne __ _ _ _ _ ri -- pe -- te pur
	E ne __ _ _ _ _ ri -- pe -- te pur ch'io mi di -- stem -- pre,
	Che'n voi rad -- dop -- pia
	"<Che'n" voi rad -- dop -- "pia>" la mia vi -- ta sem -- pre?
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

