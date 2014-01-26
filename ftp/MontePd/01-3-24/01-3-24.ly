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
	title = "24. Così d'un Olmo sospirando a l'ombra (seconda parte)"
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
 footer = "Mutopia-2014/01/26-1926"
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
      c''4
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key f \major
	\tempo 4 = 60	
	c8 c4 d8 e4 c d8. c16 d8 f e4 e r8 f e d c a c8. c16 f8 e d4 e e4. e8 f2	
	d2 cis4 e4. e8 e4 f d2 cis8 d8. d16 d8 e f d8. c?16 d8 f e4 f r8 c d c a4 r8 e' f e c8. d16 e8 f
	
	d g, a d4 \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d4 r8 c8 d c a4 r8 e'8 f e c8. d16 e8 f d g, a d4 cis8 d4 f c8 d ees4 d8 g, c4. a8	
	g4 f f' d8 c4 bes8 a4 g c a8 d4 c b?8 c4 c bes8 bes a4 c2 r r4 c a8 d4 c b8 c c bes bes a4 c2	
	r4 a b8 \hide b c8. bes?32 a g8. f16 g4 a2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Co -- sì d'un ol -- mo so -- spi -- ran -- do~a l'om -- bra
	Co -- sì d'un ol -- mo so -- spi -- ran -- do~a l'om -- bra
	Tir -- si do -- len -- te la -- men -- tar s'u -- di -- va
	D'el -- le -- ra cin -- to le sel -- vag -- gie chio -- me:
	Et spes -- so fuor
	"<Et" spes -- so "fuor>" __ _ _ de la sam -- po -- gna~u -- sci -- va
	Et spes -- so fuor
	Et spes -- so fuor __ _ _ de la sam -- po -- gna~u -- sci -- va
	De la sua Flo -- ri
	De la sua Flo -- ri~il dol -- ce~am -- a -- to no -- me,
	Che di dol -- ci pen -- sier l'al -- ma gl'in -- gom -- bra
	Che di dol -- ci pen -- sier l'al -- ma gl'in -- gom -- bra
	l'al -- ma gl'in -- gom -- _ _ _ _ _ bra.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key f \major
      \time 4/4
      r4 a'4
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef treble
	\time 4/4
	\key f \major

	r8 a g f g4 a f8. f16 bes8 a g4 g8 a g f g4 a a8. g16 a8 c b4 c c4. c8 c,4	
	d2 e r4 c'2 a4 bes8 a4 g8 a b8. \hide b16 \hide b8 c a8 bes?8. a16 g8 f g4 a8 a bes a f4 r8 c' d c a8. e16 f8 e c c
	
	d8 e f d e4 d8 a' bes a f4 r8 c' d c a8. e16 f8 e c c d e f d e4 d2 r8 bes' g a bes4 a r8 d
	
	bes8 c d4 c f,8 e f g fis4 g r2 r4 f2 e8 a4 g f8 g g a a bes4 g r1 f4 e8 a4 g f8 g g a a
	
	bes8 a16 g fis4 g r8 c, e f e4 f2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Co -- sì d'un ol -- mo so -- spir -- an -- do~a l'om -- bra
	Co -- sì d'un ol -- mo so -- spir -- an -- do~a l'om -- bra
	Tir -- si do -- len -- te la -- men -- tar s'u -- di -- va
	D'el -- le -- ra cin -- to le sel -- vag -- gie chio -- me:
	Et spes -- so fuor
	"<Et" spes -- so "fuor>"
	Et spes -- so fuor de la sam -- po -- gna~u -- sci -- va
	Et spes -- so fuor
	"<Et" spes -- so "fuor>"
	Et spes -- so fuor de la sam -- po -- gna~u -- sci -- va
	De la sua Flo -- ri
	De la sua Flo -- ri~il dol -- ce~a -- ma -- to no -- me,
	Che di dol -- ci pen -- sier l'al -- ma gl'in -- gom -- bra
	Che di dol -- ci pen -- sier l'al -- ma gl'in -- gom -- _ _ _ bra
	l'al -- ma gl'in -- gom -- bra.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key f \major
      \time 4/4
      r4 f'4
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key f \major
	
	r8 f e d c4 f, bes8. a16 g8 f c'4 c r8 d c bes a f f'8. e16 d8 c g'4 c, a4. a8 a4	
	bes2 a r4 a2 d4 g,8 a bes4 a8 g8. g16 g8 c d g,8. a16 bes8 d c4 f, r8 a bes a f4 r8 c'8 d c a4. a8 b! c f, bes? 
	
	a4 d r8 a bes a f4 r8 c'8 d c a4. a8 b! c f, bes? a4 d r8 bes f' d c4 bes r8 f' c d ees4 d8 bes4 a8	
	bes8 c d2 g,8 c4 a8 f'4 e d a' r d,2 e8 e f4 d r8 g4 e8 f2 e4 d c d2 e8 e f4 d r r8 g, a a c2 f,2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Co -- sì d'un ol -- mo so -- spir -- an -- do~a l'om -- bra
	Co -- sì d'un ol -- mo so -- spir -- an -- do~a l'om -- bra
	Tir -- si do -- len -- te la -- men -- tar s'u -- di -- va
	D'el -- le -- ra cin -- to le sel -- vag -- gie chio -- me:
	Et spes -- so fuor
	"<Et" spes -- so "fuor>" de la sam -- bo -- gna~u -- sci -- va
	Et spes -- so fuor
	Et spes -- so fuor de la sam -- po -- gna~u -- sci -- va
	De la sua Flo -- ri
	De la sua Flo -- ri~il dol -- ce~a -- ma -- to no -- me,
	Che di dol -- ci pen -- sier l'al -- ma gl'in -- gom -- bra
	Che di dol -- ci pen -- sier l'al -- ma gl'in -- gom -- bra
	l'al -- ma gl'in -- gom -- bra.
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

