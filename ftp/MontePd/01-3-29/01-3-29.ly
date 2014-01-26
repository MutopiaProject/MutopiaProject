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
	title = "29. Et son del mio languir così contento (seconda parte)"
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
 footer = "Mutopia-2014/01/26-1931"
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
      g'2
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	g4 d'2 b4 a g c8 b16 a g8 a g f e4 e8 a d2 b4 a g c8 b16 a g8 a g f e4 e8 fis g8. g16	
	g8 a b b c8. b16 c8 a b4 a b8 c a2 g4 r8 f8 e f g4 d a'8 a c4. b8 a4 g r8 c b4 c r4 r8 g8	
	fis4 g a2 b4 c4. a4 a8 d,2 f4 e r8 d e f g4 e c' g a4. g8 f e16 d e4 d2 r8 d e8. f16 g8 e d4	
	e8 a b8. c16 d8 b a4 g2 d'8 c b4 c r r8 d, e8. f16 g8 e d g c b d4. c16 b a4 b1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	E son del mio lan -- guir __ _ _ _ co -- sì con -- ten -- to
	E son del mio lan -- guir __ _ _ _ co -- sì con -- ten -- to
	Ch'io vi -- ta bra -- mo sol,
	Ch'io vi -- ta bra -- mo sol, per vi -- ver sem -- pre
	In co -- sì dol -- ce,~in co -- sì ca -- ro sta -- to;
	Ma te -- mo
	"<Ma" te -- "mo>" che'l mio tri -- sto~ul -- ti -- mo fa -- to
	Non can -- gi pre -- sto que -- st'a -- ma -- te tem -- _ _ _ pre
	E re -- sti con la vi -- ta
	E re -- sti con la vi -- ta~il fo -- co spen -- to
	E re -- sti con la vi -- ta~il fo -- co spen -- _ _ _ to.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r1 r4 d'2
    }
  >>
>>

	altusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major

	r2 r8 d4 g f8 d d e4. f8 e d cis4 \hide cis r4 r8 d4 g f8 d d e4. f8 e8 d cis4 \hide cis8 d
	
	e8. d16 e8 c d g e8. e16 e8 fis g4 fis8 a8. g16 g4 fis8 r e d e4 d cis8 r2 r8 f e f g4 d e8 e f8. e16	
	d4 c r8 d e4 d2 r4 fis2 g4 a f4 f8 e d2 cis4 r r8 d e f g4 e8 f4 e8 f16 e d c d8 e4 d \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d a
	
	b8. c16 d8 b a4 g2 r4 d'4 a'8 g fis4 g8 d e8. f16 g8 e d4 c8 g b8. c16 d8 b a4 g2 r8 d'8 a' g fis8 g4 \set suggestAccidentals = ##t fis!8 \set suggestAccidentals = ##f g1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	E son del mio lan -- guir co -- sì con -- ten -- to
	E son del mio lan -- guir co -- sì con -- ten -- to
	Ch'io vi -- ta bra -- mo sol,
	Ch'io vi -- ta bra -- mo sol, per vi -- ver sem -- pre
	In co -- sì dol -- ce,
	"<In" co -- sì dol -- "ce,>~in" co -- sì ca -- ro sta -- to;
	Ma te -- mo che'l mio tri -- sto~ul ti -- mo fa -- to
	Non can -- gi pre -- sto que -- st'a -- ma -- _ _ _ _ ta tem -- _ pre
	e re -- sti con la vi -- ta il fo -- co spen -- to
	E re -- sti con la vi -- ta
	E re -- sti con la vi -- ta il fo -- co spen -- _ _ to.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 4/4
      r1 r2 g2
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r2 r4 g d' b a8 g c f, c' d a4 a r r g d' b a8 g c f, c' d a4 a8 d c8. b16	
	c8 a g e a8. gis16 a8 d, g?16 a b c d8 f e c d4 d8 c b c d4 a e'8 e f8. e16 d4 a8 a e' e f4	
	c4 f, g r8 c b4 c r8 d8 b4 cis d2 e4 f d d8 c bes4 a2 r2 r4 r8 g8 a8. b16 c4 f,8 f'4 c8 d bes a4 d, r4	
	r4 r8 a'8 b8. c16 d8 b a4 g fis8 g d4 g r8 c b c g4 c,16 d e f g2 r8 a b8. c16 d8 b a g fis g d2 g1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	E son del mio lan -- guir co -- sì con -- ten -- to
	E son del mio lan -- guir co -- sì con -- ten -- to
	Ch'io vi -- ta bra -- mo sol,
	Ch'io vi -- ta bra -- mo sol, __ _ _ _ _ per vi -- ver sem -- pre
	In co -- sì dol -- ce,~in co -- sì ca -- ro sta -- to;
	in co -- sì ca -- ro sta -- to;
	Ma te -- mo
	"<Ma" te -- "mo>" che'l mio tri -- sto~ul -- ti -- mo fa -- to
	Non can -- gi pre -- sto que -- st'a -- ma -- te tem -- pre
	E re -- sti con la vi -- ta~il fo -- co spen -- to
	il fo -- co spen -- to __ _ _ _ _
	E re -- sti con la vi -- ta~il fo -- co spen -- to.
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

