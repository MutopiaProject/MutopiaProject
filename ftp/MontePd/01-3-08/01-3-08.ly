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
	title = "8. Vago monte, fiorite ombrose piagge"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Gandolfo Porrino"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1910"
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
      a'2.
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 2/2
	\key c \major
	\tempo 2 = 60
	a4. b8 c4 g r4 d'4 c4. b8 a4 g f2 e4 e'2 d c4 d4. c8 b4 a b2. b4 c2 b r8 a8	
	g8 e f g a4 g a c b4. a8 g f e f g2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g2 r2 r4 e4 g4. g8 a4 c b c2 e d c
	
	b4 c1 r4 a4 g e f4. e8 d4 cis d8 e f g a2. gis4 a2 gis2 r4 b4 a4. b8 gis4 a b4.
		
	cis8 d a d4 cis r8 a a f e4 e c g'2 a g4 b c2. b4 e d4. c8 d4 b4. a16 g a4 b
	
	\[a2 d2.\] cis4 r4 cis!4 \hide cis \hide cis d2 e4 b cis2 d e4 e f8 e d c b2 a4 a b2 c a4 b2 a \set suggestAccidentals = ##t gis4 \set suggestAccidentals = ##f a1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."	
}

	cantusLyrics = \lyricmode{
	Va -- go mon -- te, fio -- ri -- te~om -- bro -- se piag -- ge,
	La -- go d'o -- gn'al -- tro più lu -- cen -- te,~e chia -- ro,
	Gai uc -- cel -- let -- ti,~a -- dor -- ni
	Nin -- fe,~e sag -- _ _ _ _ _ _ _ ge,
	Ch'u -- di -- to~ha -- ve -- te~il mio la -- men -- to~a -- ma -- _ ro
	Se mai for -- tu -- na~il mio bel sol __ _ _ _ _ qui trag -- ge,
	Che de la lu -- ce sua m'è tan -- to~a -- va -- ro m'è tan -- to~a -- va -- ro,
	L'an -- go -- scie mie
	"<L'an" -- go -- scie "mie>" dir -- le vi piac -- _ _ _ cia, co -- _ me
	Mor -- te~o -- gn'hor chia -- mo, e lei so -- la per no -- _ _ _ _ me 
	e lei so -- la per no -- _ me.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 2/2
      r1 e'2.
    }
  >>
>>

	altusMusic = \relative c' {
	\clef "treble_8"
	\time 2/2
	\key c \major
	
	r2 e4. f8 g4 d r2 r4 b4 c d e g f2 e4 a2 g fis4 g4. f?8 e4 d e a2 gis4 a r4 r2 r8 g8	
	f8 d e f g4 g, c2 b4 a2 g r4 b4 c4. c8 d4 e a,2 gis4 a4. b8 c4. a8 f'2 e4 d2 e4 a g e
	
	f4. e8 d4 cis d a' g e f4. e8 d4 cis d e2 d4 e2 r2 r r4 a4 gis4. a8 fis4 g e f e8 d
	
	cis4 cis! f2 e d4 e g f e a g4. e8 fis4 g8 e a4. g8 g4 fis g4. f8 f2 e8 d f4 e r4 e4 e e
	
	a2. gis4 r4 e4 fis g2 a4. a8 a2 \set suggestAccidentals = ##t gis4 \set suggestAccidentals = ##f a d,2 e f d c4 b2 a1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	altusLyrics = \lyricmode{
	Va -- go mon -- te, fio -- ri -- te~om -- bro -- se piag -- ge,
	La -- go d'o -- gn'al -- tro più lu -- cen -- te,~e chia -- ro,
	Gai uc -- cel -- let -- ti,~a -- dor -- ni Nin -- fe,~e sag -- ge,
	Ch'u -- di -- to~ha -- ve -- te~il mio la -- men -- _ _ _ _ to~a -- ma -- ro
	se mai for -- tu -- na~il mio bel sol
	"<se" mai for -- tu -- na~il mio bel "sol>" qui trag -- ge,
	Che de la lu -- ce sua m'è tan -- to~a -- va -- ro,
	L'an -- go -- scie mie
	"<L'an" -- go -- scie "mie>" dir -- le vi piac -- _ _ _ _ cia, co -- _ _ _ _ _ me
	Mor -- te~o -- gn'hor chia -- mo, e lei so -- la per no -- _ me e lei so -- la per no -- me.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 2/2
      r2 a2.
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 2/2
	\key c \major
	
	r4 a4. b8 c4 g2 r4 e4 f g a b c2 a a b4. c8 d4 d g,8 f e f g4 g c,4. d8 e2 a4 r8	
	e'8 d b c d e4 d a e' d e r1 r4 e,4 g4. g8 a4 c b c2 e4. d8 c b a2 f g1 c, r4 d4 g a
	
	d,4 f g a d,4. e8 f g a g f4 e f2 e4 e' d4. e8 cis4 d e f e4. a,8 d8. c16 b4 a1. e2 f e a
	
	r4 b4 c b e d4. b8 e4 d g, d'4. c8 bes2 a a4. a8 a2 f' e r2 r4 b4 c2 d e4 e, fis2 g a
	
	d, e1 a1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	bassusLyrics = \lyricmode{
	Va -- go mon -- te, fio -- ri -- te~om -- bro -- se piag -- ge,
	La -- go d'o -- gn'al -- tro più __ _ _ _ _ lu -- cen -- te,~e chia -- ro,
	Gai uc -- cel -- let -- ti,~a -- dor -- ni Nin -- fe,~e sag -- ge,
	Ch'u -- di -- to~ha -- ve -- te~il mio la -- men -- _ _ _ _ to~a -- ma -- ro
	se mai for -- tu -- na~il mio bel sol __ _ _ _ _ _ _ qui trag -- ge,
	Che de la lu -- ce sua m'è tan -- to~a -- va -- _ _ ro,
	L'an -- go -- scie mie
	"<L'an" -- go -- scie "mie>" dir -- le vi piac -- cia, co -- _ _ me
	Mor -- te~o -- gn'hor chia -- mo, e lei so -- la "<e" lei so -- "la>" per no -- me.
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

