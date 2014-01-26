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
	title = "26. Piango, che Amor con disusato oltraggio"
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
 footer = "Mutopia-2014/01/26-1928"
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
      c''1
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	c2 b2 e2 d2 r8 g g8. f16 e8. d16 c8 b4 a gis8 r4 r8 e' e e d4 c r4 r8 g'8 g g f4 e a8. g16	
	f8 e d8. c16 b8 e d c4 b8 c e f4 e r r8 e f4 e a,8. b16 c8 c d c f4 e r a,8. b16 c8 c d c f4 e8 f
	
	f8 e d c c2 g'4 e2 d4 c b r8 e8. d16 c8 b4 r8 a gis8. \hide gis16 a8 c b4 a8 a gis8. \hide gis16 a8 c b4 a8 e'8. d16 c8 b4	
	r8 a gis8. \hide gis16 a8 c b4 a8 e' g g e c f2 e4 d c b b r8 e d c8. c16 b8 c16 d e f g8 fis g e
	
	d4 g,8 g fis g4 fis!8 g1 r4 a2 c4 bes2 a4 bes!4 a8 b? c b d4 cis r2 r4 a'2 g4 f e r4 e d2. c4 b2 a1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Pian -- go, Pian -- go, ch'a -- mor con di -- su -- sa -- to~ol -- trag -- gio
	Di nuo -- va fiam -- ma
	"<Di" nuo -- va fiam -- "ma>~il" cor __ _ _ m'in -- cen -- _ _ de~e ro -- _ _ de:
	So -- spi -- ro,
	So -- spi -- ro, ch'un fio -- ri -- to,~e ver -- de mag -- gio
	ch'un fio -- ri -- to~e ver -- de mag -- gio
	Più sfor -- tu -- na -- to~a -- man -- te~hog -- gi non go -- de:
	Do -- glio -- mi sol, ch'un chia -- ro,~e vi -- vo rag -- gio
	ch'un chia -- ro,~e vi -- vo rag -- gio
	Do -- glio -- mi sol, ch'un chia -- ro,~e vi -- vo rag -- gio
	Di duo be -- gli~oc -- chi, la -- gri -- mar non m'o -- de;
	Che fin for -- si da -- rian __ _ _ _ _ pie -- to -- st~al -- quan -- to pie -- to -- st~al -- quan -- to
	Al la -- men -- to,~ai so -- spi -- _ _ _ _ ri,
	ai so -- spi -- ri, al du -- ro pian -- to.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "petrucci-g"
      \key c \major
      \time 4/4
      r2 a'1
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef treble
	\time 4/4
	\key c \major

	r4 a2 gis4 r c2 b4 r r8 g'8 g8. f16 e8 d c c b4 b8 g g g a4 b r8 c c c d4 e r r8 c
	
	c8 c d e f8. e16 d8 c b e d4 c8. b16 a4 r8 e'8 f4 e8 cis d4 cis r r2 a8. b16 c8 c d c f4 e r a,8. b16 c8 c
	
	d8 c f4 e r8 c c b a g g c a b4 a \set suggestAccidentals = ##t gis8 \set suggestAccidentals = ##f a4 r r8 e'8. d16 c8 b4 r8 a gis8. \hide gis16 a8 c b4 a r8 e'8. d16 c8	
	b8 a gis8. \hide gis16 a8 c b4 a8 e' g g e c e2 d4 c2 b4 a4. gis8 \hide gis4 a r r2 r8 d8 c b8. b16 a8 b c a b a4	
	b4 e2 g4 f2 e r r4 d2 g4 f e r e d c2 b4 r c2 b a4 gis a2 \set suggestAccidentals = ##t gis4 \set suggestAccidentals = ##f a1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Pian -- go, Pian -- go, ch'a -- mor con di -- su -- sa -- to~ol -- trag -- gio
	Di nuo -- va fiam -- ma
	"<Di" nuo -- va fiam -- "ma>"
	Di nuo -- va fiam -- ma~il cor __ _ _ m'in -- chen -- de~e ro -- de: __ _ _
	So -- spi -- ro,
	So -- spi -- ro, ch'un fior -- i -- to,~e ver -- de mag -- gio
	ch'un fior -- i -- to~e ver -- de mag -- gio
	Più sfor -- tu -- na -- to~a -- man -- te~hog -- gi non go -- _ de:
	Do -- glio -- mi sol, ch'un chia -- ro,~e vi -- vo rag -- gio
	Do -- glio -- mi sol, ch'un chia -- ro,~e vi -- vo rag -- gio
	Di duo be -- gli~oc -- chi, la -- gri -- mar non m'o -- _ _ de;
	Che fin for -- si dar -- ian pie -- to -- st~al -- quan -- to
	Al la -- men -- to, "<Al" la -- men -- "to,>" ai so -- spi -- ri, al du -- ro pian -- _ _ to.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      a1
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	a2 e' c g'4. g8 g8. f16 e8. d16 c4. d8 e2 e r r8 a8 a a g4 e r8 d a'8. g16 f8 e d c f4 g2.
	
	r8 a d,4 a' r8 d, a'4 d, a'8. g16 f8 f e f d16 e f e d4 a f'8. e16 d8 d c a f'8. e16 d4 a r r8 a' a g f e
	
	e4 c2 f8 d e2 a,4 r8 a'4 gis8 a4 e r8 a,8 e'8. e16 c8 a e'4 a,8 a'4 gis8 a4 e2 r8 a,8 e'8. e16 c8 a e'4 a, r r2 a'4. e8	
	g4 a e2 a,4 r r8 g'8 f e8. e16 d8 e g g f e4 d2 r4 c2 e4 d2 c r4 d2 g4 f e r a2 g4 f2 e r4 a4 g2. f4 e1 a,1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Pian -- go, Pian -- go, ch'a -- mor con di -- su -- sa -- to~ol -- trag -- gio
	Di nuo -- va fiam -- ma il cor __ _ _ m'in -- ce -- de~e ro -- de:
	So -- spi -- ro,
	So -- spi -- ro, ch'un fior -- i -- to,~e ver -- de mag -- _ _ _ _ gio
	ch'un fior -- i -- to~e ver -- de mag -- _ _ gio
	Più sfor -- tu -- na -- to~a -- man -- te~hog -- gi non go -- de:
	Do -- glio -- mi sol, ch'un chia -- ro,~e vi -- vo rag -- gio
	Do -- glio -- mi sol, ch'un chia -- ro,~e vi -- vo rag -- gio
	la -- gri -- mar non m'o -- de;
	Che fin for -- si dar -- ian pie -- to -- st~al -- quan -- to
	Al la -- men -- to,
	Al la -- men -- to, ai so -- spi -- ri, al du -- ro pian -- to.
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

