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
	title = "10. Io so, che non m'inganna sogno, od ombra (seconda parte)"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Petronio Barbati"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1912"
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
      r2 r4 d'4
    }
  >>
>>

	cantusMusic =  \relative c' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	r4 r8 d8 a'8. b16 c8 a b c d4 c r4 r8 e,8 a8. b16 c8 a b c d8. c32 b a8 f e8. d16	
	e16 f g a b c d4 c8 a a16 b c4 a e8 e16 f g8 e c'4 b8 a4 g16 f e8 a g4 f8 a8. a16	
	a8 g a d,4 e8 c'8. c16 c8 bes \hide bes a4 g8 a4 g f8. e16 e8. d16 d4 \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d4 r8 a'8 a8. b16	
	cis8 \hide cis8 d4 r8 a8 a8. b16 cis8 \hide cis d a g f e4 d8 a'4 a8 a4 a8 f bes4 a8 c4 a
	
	g8 a4 d2 e8. d32 c b4 r2 g1 a4. g8 a b c4 b r4 r4 r8 d,8 e f g2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g4 r8 e8 fis g
	
	a2 gis4 r8 a8 d16 c b a g8 c8. b16 a8 g8. f16 e4 fis1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Io so, che non m'in -- gan -- na so -- gno,
	Io so, che non m'in -- gan -- na so -- _ _ _ gn'od om -- _ _ _ _ _ _ _ _ bra
	Ec -- co~io l'ab -- brac -- cio:
	"<Ec" -- co~io l'ab -- brac -- "cio:>~et" io son pur__ _ _ _ io stes -- so
	Chie -- de -- rò pur mer -- ce -- de
	"<Chie" -- de -- rò pur mer -- ce -- "de>~hor" che mi li -- _ _ _ _ _ ce.
	So che non m'av -- ver -- rà,
	"<So" che non m'av -- ver -- "rà,>" co -- me si di -- ce,
	Tra la spi -- ga~e la man qual mu -- ro~è mes -- so.
	Ohi -- me __ _ _ _
	Ohi -- me ch'è pur il so -- gno: ch'è pur il so -- _ gno:
	ch'è pur il so -- gno: e vi -- _ _ _ a si __ _ _ sgom -- _ _ bra.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key c \major
      \time 4/4
      d'2
    }
  >>
>>

	altusMusic = \relative c' {
	\clef treble
	\time 4/4
	\key c \major
	
	d4 a'8. g16 f8 d e f g f16 e d8 f e4 a, r2 r4 r8 e'8 a8. b16 c8 a b c g8. f32 e d8 f
	
	e4 d a'8 a16 b c2 b4 a g8 f4 e16 d g8 f4 e8 f4 r8 e8. e16 e8 f g a4 e r4 r8 c'8. c16 c8	
	bes8 \hide bes a4 g8 a4 g8 f e r8 a a8. g16 f8 f e a g f e4 d r4 r2 r4 r8 f4 f8 f4 e8 a
	
	g4 f8 e4 e8 d4 e b'2 c8 c, d e f4 e \set suggestAccidentals = ##t d2 \set suggestAccidentals = ##f e4 r8 e8 f4 r4 c2 d4. c8 d e f4 e2 a
	
	b4. g8 a b c2 b4 c16 b a g f8 g4 a8. g16 f8 e16 d d4 cis8 d1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Io so, che non m'in -- gan -- na so -- _ _ _ gno,~od om -- bra
	Io so, che non m'in -- gan -- na so -- _ _ _ gn'od om -- bra
	Ec -- co~io l'ab -- brac -- cio:~et io son pur __ _ _ _ io stes -- so
	Chie -- de -- rò pur mer -- ce -- de
	"<Chie" -- de -- rò pur mer -- ce -- "de>~hor" che mi li -- ce.
	So che non m'av -- ver -- rà, co -- me si di -- ce,
	Tra la spi -- ga~e la man qual mu -- ro~e mes -- so.
	Ohi -- me ch'è pur il so -- gno:
	Ohi -- me
	"<Ohi" -- "me>"
	Ohi -- me ch'è pur il so -- gno:
	Ohi -- me ch'è pur il so -- gno:~e vi -- _ _ _ a si sgom -- _ _ _ _ _ _ bra.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 4/4
      r1 d2
    }
  >>
>>

	bassusMusic = \relative c {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r2 d4 a' r4 r8 d,8 a'8. b16 c8 a b c d8. c32 b a8 f e4 d r4 r8 c8. d16 e f g8 d a'4	
	d,4 r4 f8 f16 g a4 g f g8 d'4 d8 c2 f,4 r8 c'8. c16 c8 bes \hide bes a2 g4 r8 c8. c16 c8 d e f4	
	c4 d8 bes a4 d, r4 r8 a'8 a4 r8 d,8 a'8. g16 f8 f e8 e' d c b16 c d4 cis8 r8 d4 d8 d4 cis8 d
	
	g,4 d'8 a4 \hide c8 bes4 a g2 c4 r8 g8 a b c2 b4 c2 f,4 c'8. c16 c8 b a4 g8 g4 a8 b c4 b8	
	c4 c d2 r4 e4 d a e'2 a,4 r8 g8 c16 b a g f4 g a d,1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	bassusLyrics = \lyricmode{
	Io so,
	Io so, che non m'in -- gan -- na so -- _ _ _ gno,~od om -- bra
	so -- _ _ _ _ gno,~od om -- bra
	Ec -- co~io l'ab -- brac -- cio:~et io son pur io stes -- so
	Chie -- de -- rò pur mer -- ce -- de
	"<Chie" -- de -- rò pur mer -- ce -- "de>~hor" che mi li -- ce.
	So che
	"<So" "che>" non m'av -- ver -- rà, co -- me si di -- _ _ ce,
	Tra la spi -- ga~e la man qual mu -- ro~è mes -- so.
	Ohi -- me ch'è pur il so -- _ gno:
	Ohi -- me ch'è pur il so -- gno: ch'è pur il so -- _ gno:
	Ohi -- me ch'è pur il so -- gno: e vi -- _ _ _ a si sgom -- bra.
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

