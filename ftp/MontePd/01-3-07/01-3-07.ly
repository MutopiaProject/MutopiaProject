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
	title = "7. Mentr'ameranno i nudi pesci l'onde"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Luigi Alamanni"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1909"
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
      g'1
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 2/2
	\key c \major
	\tempo 2 = 60
	g2 b4. c8 d4 d, g4. g8 f4 f e2 d r2 r1 r2 r4 a'4 b4. c8 d4 a c4. c8 b4 b a2 g r4
	d'4. c8 c4 b g a2 r4 e4 a g8 f e4 d e2 d r2 r4 d'4 c4. b8 a4 bes a8 b? c d e4 d8 c b4
	b4 cis d b4. a16 b c8 b b a16 g a2 b r4 g4 g g c8 d e d c b a2 b4 g4. f8 e4 d e2 c4 c'2 b4
	r4 g4 c4. a8 b4 c a a c4. a8 b4 c a2. a4 b8 c d c16 b a4 b c g r4 g e8 f g f16 e

	d4 g f2 e r4 g4. g8 g4 f2 e r4 d4 d'8 c b a g4 c2 a4 g d'4. c8 c2 b4 r1 r2 r4 d4. d8
	c4 b a g e d c g'8 a b g a b c2 b4 r4 d4. b8 c4 b2 g4 a b c2 a4 e'4. c8 d4 c a8 b4
	c8 b4 a b g r2 r4 g4. e8 f4 e d g a b c b a8 g a2 b1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."	
}

	cantusLyrics = \lyricmode{
	Men -- tre~a -- me -- ran -- no~i nu -- di pe -- sci l'on -- de,
	Men -- tre~a -- me -- ran -- no~i nu -- di pe -- sci l'on -- de,
	L'al -- te sel -- ve~i Le -- on, gli~ar -- men -- _ _ _ ti~i pra -- ti,
	L'al -- pi~i di -- pin -- ti fior, __ _ _ _ _ _ _ _ gli~Au -- gei le fron -- _ _ _ _ _ _ _ _ de,
	L'al -- ma Fe -- ni -- _ _ _ _ _ _ ce gli~A -- _ _ ra -- bi~o -- do -- ra -- ti,
	A -- mor, ch'à gen -- til cor
	A -- mor, ch'à gen -- til cor mai non __ _ _ _ _ _ s'a -- scon -- de
	mai non __ _ _ _ _ _ s'a -- scon -- de
	Dol -- ci sem -- bian -- ti, e sti -- _ _ _ _ li~al -- ti~e or -- na -- _ _ ti,
	Men -- tre~il ciel vol -- ge -- rà le not -- ti,~e~i gior -- _ _ _ _ _ _ ni.
	Scal -- de -- rò l'al -- ma ne vo -- stri~oc -- chi 
	Scal -- de -- rò l'al -- ma ne vo -- stri~oc -- chi~a -- dor -- ni
	Scal -- de -- rò l'al -- ma ne vo -- stri~oc -- chi~a -- dor -- _ _ _ ni.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 2/2
      r\breve r2 g2
    }
  >>
>>

	altusMusic = \relative c' {
	\clef "treble_8"
	\time 2/2
	\key c \major
	
	r1 r4 g4 b4. c8 d4 a c4. c8 b4 b a2 g4 d' e4. f8 g4 d f4. f8 e4 e d8 e f d e4. f8 g d

	g4. f8 f e16 d e2 d r4 e4. d8 e4 d d c g' f e8 d cis4 d2 cis!4 d4 g, a4. b8 c4 d e e

	fis g e2 e4 a4 g4. f8 e4 f d d e8 f g2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g2r2 r4 c,4 c c f8 g a g f e d4 e c2 b4 a8 b

	c8 d e4 f d2 e r2 r4 c4 f4. d8 e4 f d r8 c8 f4. d8 e4 f d g fis g c,8 d e f g4 e r4 c4
	b4 e2 d cis4 e2 d4 e2 d \set suggestAccidentals = ##t cis4 \set suggestAccidentals = ##f d2 r2 r4 e4 a8 g f e d4 d e f d2 d4 g,4. g8 a4 b c d4. g8
	f4 e d2 g,4 g'4. g8 f4 e8 d g g f4 e d2 b r2 r4 g'4. e8 f4 e c e f g a4. g8 g4 fis g2
	\set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g d4. b8 c4 b g r2 c4 d e c g' f8 e fis4 g2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g1\fermata

	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	altusLyrics = \lyricmode{
	Men -- tre~a -- me -- ran -- no~i nu -- di pe -- sci l'on -- de,
	Men -- tre~a -- me -- ran -- no~i nu -- di pe -- sci l'on -- _ _ _ _ _ _ _ _ _ _ _ _ _ de,
	L'al -- te sel -- ve~i Le -- on, gli~ar -- men -- _ _ _ ti~i pra -- ti,
	L'al -- pi~i di -- pin -- ti fior, gli~Au -- gei le fron -- de,
	L'al -- pi~i di -- pin -- ti fior, gl'au -- gei le fron -- _ de,
	L'al -- ma Fe -- ni -- _ _ _ _ _ _ ce gli~a -- ra -- bi~o -- _ _ _ _ do -- ra -- ti,
	A -- mor, ch'à gen -- til cor
	A -- mor, ch'à gen -- til cor mai non s'a -- scon -- _ _ _ _ de mai non s'a -- scon -- de
	Dol -- ci sem -- bian -- _ ti, e sti -- _ _ _ _ li~al -- ti~e or -- na -- ti,
	Men -- tre~il ciel vol -- ge -- rà le not -- ti,~e~i gior -- ni.
	"<Men" -- tre~il ciel vol -- ge -- rà le not -- ti,~e~i gior -- "ni.>"
	Scal -- de -- rò l'al -- ma ne vo -- stri~oc -- chi~a -- _ _ dor -- _ _ ni
	Scal -- de -- rò l'al -- ma ne vo -- stri~oc -- chi~a -- dor -- _ _ _ _ _ ni.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 2/2
      r\longa r2 d2
    }
  >>
>>

	bassusMusic = \relative c {
	\clef "treble_8"
	\time 2/2
	\key c \major
	
	r1 r1 r4 d4 e4. f8 g4 g c4. c8 b4 b a2 g r2 r1 r4 a4 b4. c8 d4 a c4. c8 b4 b a2 g4 g'4. f8
	f4 e c d g, a bes a2 d,4 d' c4. b8 a4 bes a2 r4 g4 a4. b8 c4 d e e, a d, g4. f8 e2 d r4
	g4 g g c8 d e d c b a4. g8 f e d4 g c,8 d e f g4 g c4. b8 a2 g4 g c2 r4 f,4 g a

	d, d a'4. f8 g4 a d, d' cis d g,8 a b c? d4 g, r4 c4 b c c,8 d e f g2 a1 c2 b4 c a1
	d,2 r4 g4 c8 b a g f2 b a4 f g2 g r4 d4. d8 e4 fis g a2 r4 d4. d8 c4 b a g e d

	c4 g'2 g4 g4. g8 a4 g e r2 r4 e'4. c8 d4 c a b c d e d2 g,4 g4. g8 a4 g c, c' d e f

	e2. d8 c d1 g,1\fermata

	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	bassusLyrics = \lyricmode{
	Men -- tre~a -- me -- ran -- no~i nu -- di pe -- sci l'on -- de,
	Men -- tre~a -- me -- ran -- no~i nu -- di pe -- sci l'on -- de,
	L'al -- te sel -- ve~i Le -- on, gli~ar -- men -- ti~i pra -- ti,
	L'al -- pi~i di -- pin -- ti fior,
	"<L'al" -- pi~i di -- pin -- ti "fior,>" gli~Au -- gei le fron -- _ _ de,
	L'al -- ma Fe -- ni -- _ _ _ _ _ _ _ _ _ _ ce gli~A -- _ _ _ _ ra -- bi~o -- do -- ra -- ti,
	A -- mor, ch'à gen -- til cor
	A -- mor, ch'à gen -- til cor mai non s'a -- scon -- _ _ _ _ de
	mai non s'a -- scon -- _ _ _ _ de
	Dol -- ci sem -- bian -- ti, e sti -- _ _ _ _ li~al -- ti~e or -- na -- ti,
	Men -- tre~il ciel vol -- ge -- rà
	"<Men" -- tre~il ciel vol -- ge -- "rà>" le not -- ti~e,~i gior -- ni
	Scal -- de -- rò l'al -- ma
	Scal -- de -- rò l'al -- ma ne vo -- stri~oc -- chi~a -- dor -- ni
	Scal -- de -- rò l'al -- ma ne vo -- stri~oc -- chi~a -- dor -- _ _ _ ni.
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

