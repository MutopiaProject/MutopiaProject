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
	title = "18. La bocca, onde l'asprissime"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Ercole Bentivoglio"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1920"
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
      r2 c''2
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	r4 c e8 e8. e16 e8 g2. f4 e g c,2 d r8 d d d e2 f4 g c,8 d4 e8 f4 e r2 e,4 fis8 g
	
	a8. b16 c8 b e4 e8. d16 c8 c b4 c d e c d r8 e8 d8. d16 d8 c b4 d g8. f16 e8 d e16 f g e f4. e8 e2 d4	
	e8 b c d e d16 c b8. c16 d8 b a g c8. b16 a4 b r r8 g' g g g4 e2 r8 d d d d4 b c d8 e4 f8 d4 e
	
	d8 g, c4 d8 e c8. a16 b8 c d4 c r d8 g, c4 d8 e c8. a16 b8 c d4 c r8 a'8 f8. e16 d8 f e8. d16 c8 e
	
	d4 d8 d d8. e16 f8 d e8. f16 g8 g, a4 d r8 g8 f8. e16 d8 f e8. d16 c8 e d4 c2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	La boc -- ca,~on -- de l'a -- spri -- si -- me pa -- ro -- le
	So -- lean u -- scir, ch'ir mi fa -- cean do -- len -- te;
	ch'ir mi fa -- cean do -- len -- te;
	Vie più di quan -- te mai fur sot -- to~il so -- le
	Hor nu -- tre l'al -- ma mia soa -- _ _ _ ve -- men -- _ _ _ _ _ _ _ te
	D'o -- dor di fre -- _ _ _ sche ro -- se,~e di vio -- _ _ _ le,
	Cui ce -- de~o -- gn'al -- tro
	Cui ce -- d'~o -- gn'al -- tro che l'A -- ra -- bia sen -- te,
	E d'Am -- bro -- sia~et di Net -- ta -- re la pa -- sce,
	E d'am -- bro -- sia~et di Net -- ta -- re la pa -- sce,
	Che tra le per -- le,~e~i bei ru -- bi -- ni na -- sce
	Che tra le per -- le,~e~i bei ru -- bi -- ni na -- sce
	Che tra le per -- le,~e~i bei ru -- bi -- ni na -- sce.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c1"
      \key c \major
      \time 4/4
      c''2
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef treble
	\time 4/4
	\key c \major

	c4 a8 a8. a16 a8 g g c,2. c'4 b4. a16 g a8 b c2 b4 r r8 b b b c4. b16 a b4 r8 b b b c4. b16 a
	
	b8 c d4 g,8 a b c8. b16 a4 gis8 r4 r8 e e8. f16 g8 g a8. g16 a8 b c8. g16 a b c4 b8 c4 r r8 a g8. g16 g8 f e4 g
	
	c2. b4 a2 b8 g a g g fis g4. g8 fis8 g e16 \set suggestAccidentals = ##t fis! \set suggestAccidentals = ##f g4 \set suggestAccidentals = ##t fis!8 \set suggestAccidentals = ##f g4 r r r8 c c c c2 a4 r r8 d d d g, a a b
	
	c8 c4 b8 c4 r2 g8 c, f4 g8 a f8. d16 e8 fis g16 a b c b4 a b8 c a4 g8 f bes8. a16 g8 f e4 d r8 d'
	
	c8. b16 a8 c b8. a16 g8 b a4 a8 a g8. f16 e8 g f8. e16 d8 f e4 d8 a' b a c8. b16 a8 c4 b8 c2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	La boc -- ca,~on -- de l'a -- spris -- si -- me pa -- ro -- _ _ _ _ _ le
	So -- lean u -- scir, __ _ _ _ "<so" -- lean u -- "scir,>" __ _ _ _
	ch'ir mi fa -- cean do -- len -- _ _ te;
	vie più di quan -- te mai fur sot -- to~il so -- _ _ _ _ _ le
	Hor nu -- tre l'al -- ma mia soa -- _ ve -- men -- te
	D'o -- dor di fre -- sche ro -- se,~e di vio -- _ _ _ _ le,
	Cui ce -- de~o -- gn'al -- tro
	Cui ce -- d'~o -- gn'al -- tro che l'A -- ra -- bia sen -- te,
	E d'Am -- bro -- sia~et di Net -- ta -- re la pa -- _ _ _ _ sce,
	E d'Am -- bro -- sia~et di Net -- ta re la pa -- sce,
	Che tra le per -- le,~e~i bei ru -- bi -- ni na -- sce
	Che tra le per -- le,~e~i bei ru -- bi -- ni na -- sce
	e~i bei ru -- bi -- _ _ ni na -- sce.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r1 r2 c'2
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r2 r4 c4 e8 e8. e16 e8 a2. g4 f a g2 g4 r8 g g g a4. g16 f e4 r8 g g g a4. g16 f e4	
	f8 g4 c,8 d e f4 e r8 c c8. b16 a8 a g g' f8. e16 d8 d c e f a g4 c, r2 r4 r8 d c8. c16 c8 bes a e' a2 g4	
	f2 e4 r8 b c d e d16 c b8. c16 d8 e c c d4 g,8 g' g g g4 e r8 e a a a4 fis r8 g g g g4 e8 f4 g8	
	a8 f g4 c, r1 g8 f bes8. \hide bes16 a8 a g4 g r g'8 c, f4 g8 a g8. d16 e8 f g4 a r r2 r4 r8 g f8. e16 d8 f
	
	e8. d16 c8 e d8. c16 b c d4 \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d d g, d' a16 g a b c8 c g'4 c,2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	La bo -- ca,~on -- de l'a -- spris -- si -- me pa -- ro -- le
	So -- lean u -- scir __ _ _ _,
	so -- lean us -- scir __ _ _ _,
	ch'ir mi fa -- "cean" do -- len -- te;
	Vie più di quan -- te mai
	"<Vie" più de quan -- te "mai>" fur sot -- to~il so -- le
	Hor nu -- tre l'al -- ma mia soa -- _ ve -- men -- te
	D'o -- dor di fre -- _ _ _ sche ro -- se,~e di vio -- _ le,
	Cui ce -- de~o -- gn'al -- tro
	"<Cui" ce -- de~o -- gn'al -- "tro>"
	Cui ce -- d'o -- gn'al -- tro che l'A -- ra -- bia sen -- te,
	Et di Net -- ta -- re la pa -- sce,
	E d'Am -- bro -- sia~et di Net -- ta -- re la pa -- sce,
	Che tra le per -- le,~e~i bei ru -- bi -- ni na -- _ _ _ _ _ sce
	e~i bei ru -- bi -- _ _ _ _ ni na -- sce.
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

