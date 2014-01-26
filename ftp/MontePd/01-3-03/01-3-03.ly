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
	title = "3. Oime dov'è'l mio core?"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Bernardo Tasso"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1905"
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
      r1 b'1
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 2/2
	\key c \major
	\tempo 2 = 60
	r2 b2 a2. gis4 a2 b c4 c b8 a a2 gis4 r2 r8 e'4 d8 c4 b a c4. b8 b a16 g a2
	b2 r8 e4 d8 c4 b a c4. b8 b a16 g a4 a c c b2 a4 e g4. g8 a4 b c8 d e d c4
	g2 a4. b8 c b a g a4 b c2 b b4. b8 c4 a b g e2 fis g4 a4. b8 c4 b r4 e4 d b

	c4. c8 b2 r4 a4 g e f4. f8 e4 c'2 a4 b c4. b8 b a16 g a2 a4 c b4. a8 b4 c d 

	c8 b a4 g c, f e2 e4 e'2 d4. c8 c2 b4 c1 g4 c d e d8 d, e2 d4 e r8 b'8 c4 d e d8 c

	b2. e,4 r2 r4 a2 g4 c2 b4 a gis4. \hide gis8 a b c4 b2 r2 r4 c4. b8 d4 c b a4. g8 a b c4 b4
	g4 f e2 d4 e1\fermata

	\override Staff.BarLine #'transparent = ##f
	\bar "|."	
}

	cantusLyrics = \lyricmode{
	Ohi -- me do -- v'è'l mio ben? do -- v'è'l mio co -- re?
	Chi m'a -- scon -- de~il mio co -- _ _ _ _ _ re?
	"<Chi" m'a -- scon -- de~il mio co -- _ _ _ _ _ "re?>~e" chi me'l to -- glie?
	Dun -- que~ha po -- tu -- to sol __ _ _ _ _ de -- si -- _ _ _ _ _ o d'ho -- no -- re
	Dar -- mi fe -- ra ca -- gion di tan -- te do -- _ _ glie
	Dun -- que~han po -- tu -- to~in me
	"<Dun" -- que~han po -- tu -- to~in "me>" più che'l mio~a -- mo -- _ _ _ _ _ re
	Am -- bi -- _ tio -- se,~e trop -- _ _ _ po lie -- vi vo -- glie?
	Ahi scioc -- co mon -- do,~e cie -- co,
	Ahi scioc -- co mon -- do,~e cie -- _ co, ahi cru -- da sor -- _ _ _ te,
	Che mi -- ni -- stro mi fai de la mia mor -- te
	che mi -- ni -- stro mi fai de la mia mor -- te de la mia mor -- te.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key c \major
      \time 2/2
      e'1.
    }
  >>
>>

	altusMusic = \relative c' {
	\clef treble
	\time 2/2
	\key c \major
	
	e2. d2 cis4 d e fis8 g a2 g4 f e2 d4 e2 r2 r2 r8 a4 g8 f4 e d g2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g2 r2
	r8 a4 g8 f4 e d g2 f4 e8 a, a'2 \set suggestAccidentals = ##t gis4 \set suggestAccidentals = ##f a2 r2 r4 d,4 g4. g8 a4 b c8 b a g f4 c

	d8 e f e d4 c d2 d2 e4. e8 f4 d e a, a'2 b4 c2 a gis4 r2 r2 r4 a4 g e f4. f8
	e2 r4 a4 g e f4. f8 e4 a,8 a'4 g8 g2 fis a4 g4. a8 g4 e g2 f4 e4. e8 d2 cis8 b \set suggestAccidentals = ##t cis!2 \set suggestAccidentals = ##f

	r2 r2 f2 g4 a f2 e4 a b c b g a2. gis4 a b2 a gis a4. g8 c4 b a b

	e,4. d8 c4 d d e4. e8 fis g a2 gis4 r4 e4. d8 f4 e d e4. b8 c d e4 d c d e

	a,1 b1\fermata

	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	altusLyrics = \lyricmode{
	Ohi -- me do -- v'è'l mio ben? __ _ _ do -- v'è'l mio co -- re?
	Chi m'a -- scon -- de~il mio co -- _ re?
	"<Chi" m'a -- scon -- de~il mio co -- "re?>~e" chi me'l to -- _ glie?
	Dun -- que~ha po -- tu -- to sol __ _ _ _ _ de -- si -- _ _ _ o d'ho -- no -- re
	Dar -- mi fe -- ra ca -- gion di tan -- te do -- glie?
	Dun -- que~han po -- tu -- to~in me
	"<Dun" -- que~han po -- tu -- to~in "me>" più che'l mio~a -- mo -- re
	Am -- bi -- _ tio -- se,~e trop -- po lie -- vi vo -- _ _ glie?
	Ahi scioc -- co mon -- do,
	Ahi scioc -- co mon -- do,~e ciec' ahi cru -- da sor -- te,
	Che mi -- ni -- stro mi fai che mi -- ni stro mi fai de la mia mor -- te
	che mi -- ni -- stro mi fai de la mia mor -- te de la mia mor -- te.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 2/2
      r\breve r1 r2 e'2
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 2/2
	\key c \major
	
	r1 r2 r4 e4 d cis d e a,4. e8 g a f4 e2 e'4. d8 c4 b a e' a,2 r2 r2 e'4. d8 c4 b a

	e'4 a,2 r2 r4 d4 a a e'2 a,4 a e'4. e8 d4 d c2 r4 g4 c4. c8 d4 e f f, g a g2 g4
	g4. g8 a4 d, g c, c'2 d e4 f2 e a, d4 e a,4. a8 e2 r4 d4 g a d,4. d8 e4 a2 d

	c4 e2 d2. a4 e'4. f8 e4 a, b c d g, a1 a2 r4 d4 e f d2 c a c4. c8 g2. c,4
	f2 e r4 b'4 c d e2 e4 c4. b8 a4 g f e c'4. b8 a4 g f e2 r2 r4 e'4. d8 c4 b

	a4 g2 r4 r8 g8 a b c4. b8 a4 g c, d e f2 e1\fermata

	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	bassusLyrics = \lyricmode{
	Ohi -- me do -- v'è'l mio ben? do -- v'è'l mio co -- re?
	Chi m'a -- scon -- de~il mio co -- re?
	"<Chi" m'a -- scon -- de~il mio co -- "re?>" e chi me'l to -- glie?
	Dun -- que~ha po -- tu -- to sol
	Dun -- que~ha po -- tu -- to sol de -- sio d'ho -- no -- re
	Dar -- mi fe -- ra ca -- gion di tan -- te do -- glie?
	Dun -- que~han po -- tu -- to~in me
	"<Dun" -- que~han po -- tu -- to~in "me>" più che'l mio~a -- mo -- re
	Am -- bi -- _ tio -- se,~e trop -- po lie -- vi vo -- glie?
	Ahi scioc -- co mon -- do,
	Ahi scioc -- co mon -- do,~e cie -- co, ahi cru -- da sor -- te,
	Che mi -- ni -- stro mi fai
	Che mi -- ni -- stro mi fai
	"<Che" mi -- ni -- stro mi "fai>" de la mia mor -- _ _ te de la mia mor -- te.
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

