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
	title = "23. Ove lontan da la mia fida luce (prima parte)"
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
 footer = "Mutopia-2014/01/26-1925"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "petrucci-g"
      \key f \major
      \time 4/4
      c''2
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key f \major
	\tempo 4 = 60	
	c4 c8 d e4. c8 d e f4 e d c r r8 c d8. c16 d8 e f f4 e e8 d2 e8 e e e
	
	e8 e f4 c d8 c16 bes a8 g16 f e8. f16 g8 a g4 f c'8 bes16 a g8 g f d g4 a bes8 a16 g f8 f' e c bes a
	
	g4 a r8 c c c d4 e r d c8 f e4 e c c8 e d4. g8 c,2 bes4 a g a2 b4 d4. c8 f4 d8 c d16 c d e
	
	f16 e d c bes8. a16 g8 f g4 a r8 f'8 d4 e f8 c d8. d16 c8 bes a4 g8 c d4 e f r8 f, bes8. bes16 a8 g16 f g8. a16	
	bes8 a g4 g8 c f4 e r8 c d e f d f4 e r r8 f, g a bes d c bes c4 d r8 g,8 c4 bes r r8 d f4 e
	
	r8 c d e f4 e d c d2 e2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	O -- ve lon -- tan da la mia fi -- da lu -- ce
	Que -- st'oc -- chi vol -- ge -- rò, que -- st'oc -- ch las -- so
	Ch'a -- vez -- zi~a si bel lu -- me~a cia -- _ _ _ _ _ _ _ _ scun pas -- so
	Vol -- gon -- si pur o -- v'el -- la~in -- fiam -- ma
	Vol -- gon -- si pur o -- v'el -- la~in -- fiam -- ma~e lu -- ce? in -- fiam -- ma~e lu -- ce?
	Ec -- co ch'io par -- to,
	"<Ec" -- co ch'io par -- "to,>~e'l" mio do -- lor m'è du -- ce,
	Che par -- ten -- do mia gio -- _ _ _ _ _ _ _ _ ia~in -- die -- tro las -- so:
	E son co -- m'huom de pro -- pri lu -- mi cas -- so;
	E son co -- m'huom de pro -- pri lu -- _ _ _ _ _ mi cas -- so;
	Poi ch'el -- la o -- v'io men vo
	Poi ch'el -- la o -- v'io men vo non mi con -- du -- ce
	Poi ch'el -- la 
	"<Poi" ch'el -- "la>" o -- v'io men vo non mi con -- du -- ce
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key f \major
      \time 4/4
      r2 f'2
    }
  >>
>>

	altusMusic = \relative c' {
	\clef treble
	\time 4/4
	\key f \major

	r4 f4 g8 g a4. g8 a bes c c, d4 e8 f d8. c16 d8 e f4 bes a8 a g c, c'2 \set suggestAccidentals = ##t b4 \set suggestAccidentals = ##f c2 r8 a
	
	a8 a a a bes4 f g e8 f4 e8 f2 r4 a8 g16 f e8 g f d g4 a r2 g8 f16 e d8 a' g e a c b4 c
	
	r4 f, f8 a g4 g r8 a g c b4. c8 a2 g4 f g2 fis4 g r g a8 bes4 a8 r bes a16 g f e d8 d e f4 e8	
	f8 c' a4 b c8 g a8. a16 g8 f e16 f g4 fis8 r a4 bes c d8. c16 bes a g8 d f8. f16 e8 d16 c d8 f e4 e r8 f
	
	g4 f8 f bes4 a r8 f g a bes4 r8 a g f g16 a bes g a8 bes4 a8 bes a bes4 a r8 f g a bes4 r r8 g a4 g
	
	r8 f g a bes4 r8 c \set suggestAccidentals = ##t b! \set suggestAccidentals = ##f a b!4 c2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	O -- ve lon -- tan da la mia fi -- da lu -- ce
	Que -- st'oc -- chi vol -- ge -- rò, que -- st'oc -- chi las -- _ _ _ so
	Ch'a -- vez -- zi~a si bel lu -- me~a cia -- scun pas -- _ so
	Vol -- gon -- si pur o -- v'el -- la~in -- fiam -- ma
	Vol -- gon -- si pur o -- v'el -- la~in -- fiam -- ma~e lu -- ce?
	Ec -- co ch'io par -- to,
	"<Ec" -- co ch'io par -- "to,>~e'l" mio do -- lor m'è du -- ce,
	Che par -- ten -- do mia gio -- _ _ _ _ ia~in -- die -- tro las -- so:
	E son co -- m'huom de pro -- pri lu -- mi cas -- _ _ so;
	E son co -- m'huom __ _ _ _ _ de pro -- pri lu -- _ _ _ mi cas -- so;
	Poi ch'el -- la
	"<Poi" ch'el -- "la>" o -- v'io men vo non mi con -- du -- _ _ _ _ _ _ ce
	Poi ch'el -- la o -- v'io men vo
	Poi ch'el -- la o -- v'io men vo non mi con -- du -- ce.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key f \major
      \time 4/4
      r1 c'2
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key f \major
	
	r2 c4 c8 a f' e d d c a bes4 a8 f f'8. e16 d8 c bes4 g d'8 f c2 g' r1 r2 r4 r8 c,
	
	%this first bes is a notated sharp/natural
	c8 c c c d4 a bes8 c d4 c r g'8 f16 e d8 d c a d4 e f c8 g' f a g4 c, bes2 a8 f c'4 c r8 f e c
	
	g'4. e8 f2 g4 d ees d2 g,8 g'4 f8 ees4 d r8 f bes,16 a bes c d8. e16 f8 bes, c d c4 f,2 r2 r8 f' bes,4 c d r8 a'8	
	fis8 g4 a8. g16 f e d4 r8 g,8 d'8. d16 c8 bes16 a g8 f c'4 c8 a d4 c r g d'2 c4 d8 e f4 r r8 bes, f' g f4	
	bes,8 d g4 f r8 d e f g g, d'4 c r4 r8 g d'4 c d8 e f a g fis g4 c,2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	O -- ve lon -- tan da la mia fi -- da lu -- ce
	Que -- st'oc -- chi vol -- ge -- rò, que -- st'oc -- chi las -- so
	Ch'a -- vez -- zi~a si bel lu -- me~a cia -- scun pas -- so
	Vol -- gon -- si pur o -- v'el -- la~in -- fiam -- ma~e lu -- ce? in -- fiam -- ma~e lu -- ce?
	Ec -- co ch'io par -- to,
	"<Ec" -- co ch'io par -- "to,>~e'l" mio do -- lor m'è du -- ce,
	Che par -- ten -- do mia gio -- _ _ _ _ _ _ ia~in -- die -- tro las -- so:
	E son co -- m'huom
	E son co -- m'huom __ _ _ _ _ de pro -- pri lu -- _ _ _ mi cas -- so;
	Poi ch'el -- la
	"<Poi" ch'el -- "la>~o" -- v'io men vo non mi con -- du -- ce
	Poi ch'el -- la o -- v'io men vo
	Poi ch'el -- la
	"<Poi" ch'el -- "la>~o" -- v'io men vo non mi con -- du -- ce.
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

