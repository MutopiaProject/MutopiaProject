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
	title = "11. Non vedete voi donna il mio tormento?"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Pietro Barignano"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1913"
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
      a'2
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	a4 gis8 a8. g?16 f8 e d f g a4. g8 f4. e8 d2 cis4 r8 a'8. a16 bes8 a a c8. \set suggestAccidentals = ##t bes!16 \set suggestAccidentals = ##f a8 g f e
	
	r4 r8 a8. a16 a8 d4. b8 r g8. g16 g8 c4. a8 g8. f16 e8 d e4 d2 r4 d'2 c4 a a b c2 a4 g16 f e d c4 d d'2 cis4 d4 c?8. b16	
	a8 g f e d d cis4 d r8 g a b c d e e, f8. g16 a4 g r8 c c c a b c4 a2 g4 f e4. e8 a4 c8. a16	
	b8 c a a c8. a16 b8 c a4 a bes a d4. c8 bes2 a8 g bes8. a16 g8 a bes4 a8 a d d d d c16 b a g f e d e f4 e
	
	r8 g c c c c b16 a g a b4 a8 a a a a a g16 f e f g8. a16 b c d c b4 a2 g2 f4 e e a2 a4 a4. a8 bes4	
	g4 a d, d e2 d1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Non ve -- de -- te voi don -- na~il mio tor -- men -- _ _ _ _ to?
	Piac -- cia -- vi dun -- que~à tem -- po por -- ci fi -- ne
	An -- zi, che mor -- te
	"<An" -- zi, che mor -- "te>" più mi s'a -- vi -- ci -- ne:
	Deh pie -- tà del mio mal vi strin -- _ _ _ _ ga~il co -- re 
	Si, co -- me strin -- se~il mio vo -- stra bel -- lez -- za:
	"<Si," co -- me strin -- se~il mio vo -- stra bel -- lez -- "za:>"
	Che se'n voi sce -- ma~un di vo -- stra du -- rez -- za,
	Ch'io chia -- mo sol ca -- gion
	"<Ch'io" chia -- mo sol ca -- "gion>" del mio do -- lo -- _ _ re;
	In com -- pa -- gnia d'A -- mo -- re
	An -- drò sem -- pre can -- tan -- _ _ _ _ _ _ _ _ do
	"<An" -- drò sem -- pre can -- tan -- _ _ _ _ "do>"
	An -- drò sem -- pre can -- tan --  _ _ _ _ _ _ _ _ _ _ do~in dol -- ce~ac -- cen -- to;
	Hor son d'ar -- der per voi trop -- po con -- ten -- to.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r1 r4 d'4
    }
  >>
>>

	altusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major

	r2 r8 d8 cis d8. c?16 bes8 a d, f' g a4. g8 f8. e16 d4 e8 e8. e16 f8 d d f2 e8 d4 c8 d16 e f g a4	
	fis4 r8 d8. d16 d8 g4 e8 e8. e16 e8 a f e d cis d4 cis8 d2 r4 g f e r d2 c4 a8 c4 d8 e c f2 d4 f e
	
	r4 r8 c d e f g a g16 f e4 r8 f e8. d16 c8 b a a b c d16 e f d e8 f4 e8 f2 r8 e e e cis d
	
	e8 e4 d cis d cis!8 r2 r8 e f8. d16 e8 f e4 d f2 e4 d8 e f2 e4 f8 e f8. e16 d8 f4 e8 f2 r2 r8 a a a a a
	
	g16 f e f g4 e8 c g' g g g f16 e d e f4 e8 e e e e e d16 c b c d4 f2 e d4 cis \hide cis r f e f4. f8 d4	
	e8 e4 f e8 d2 cis4 d1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Non ve -- de -- te voi don -- na~il mio tor -- men -- _ _ _ _ to?
	Piac -- cia -- vi dun -- que~à temp -- po por -- ci fi -- _ _ _ _ ne
	An -- zi, che mor -- te
	"<An" -- zi, che mor -- "te>" più mi s'a -- vi -- ci -- ne:
	Deh pie -- tà
	"<Deh" pie -- "tà>" del mio mal vi strin -- ga~il co -- re
	Si, co -- me strin -- se~il mi -- _ _ o
	"<Si," co -- me strin -- se~il "mio>" vo -- stra bel -- lez -- _ _ _ _ _ _ za:
	Che se'n vio sce -- ma~un di vo -- stra du -- rez -- za,
	Ch'io chia -- mo sol ca -- gion del mio do -- lo -- _ _ _ re;
	In -- com -- pa -- gnia d'A -- mo -- re
	An -- drò sem -- pre can -- tan -- _ _ _ _ do
	"<An" -- drò sem -- pre can -- tan -- _ _ _ _ "do>"
	An -- drò sem -- pre can -- tan -- _ _ _ _ do~in dol -- ce~ac -- cen -- to;
	Hor son d'ar -- der per voi trop -- po con -- ten -- _ to.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 2/2
      r\breve r4 d'4
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r1 r8 d cis d8. c?16 bes8 a d, bes' c d8. c16 bes!4 a r2 r4 r8 a8. a16 bes8 a a f'8. e16 d8 cis d4 g,
	
	r8 g8. g16 g8 c4 a f g a8 \set suggestAccidentals = ##t bes \set suggestAccidentals = ##f a4 d, d'2 bes4 a2 f g4 a2 f4 c' a bes2 a r r8 c, d e f g a4 r8 d8	
	c8. b16 a8 g f4 e d8 d' c2 f,8 a a a fis g a4 r8 d4 c bes8 a2 a4 r8 d, a'8. a16 gis8 a d,8 d a'8. a16 gis8 a
	
	d,8 d d'2 c4 bes4. a8 g2 f8 c' d8. c16 bes8 a g4 d'2 r4 r8 a8 d d d d c16 b a b c8. d16 e d e f g4 g, r8 g8	
	d'8 d d d c16 b a b c4 c,8 c g' g g g f16 e d e f4 c c' d a a r d cis d4. d8 g,4 c8 c4 d8 bes2 a d,1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Non ve -- de -- te voi don -- na~il mio tor -- men -- _ _ to?
	Piac -- cia -- vi dun -- que~à tem -- po por -- ci fi -- ne
	An -- zi, che mor -- te più mi s'a -- vi -- ci -- ne:
	Deh pie -- tà del mio mal vi strin -- ga~il co -- re
	Si, co -- me strin -- se~il mio
	"<Si," co -- me strin -- se~il "mio>" vo -- stra bel -- lez -- za:
	Che se'n voi sce -- ma~un di vo -- stra du -- rez -- za,
	Ch'io chia -- mo sol ca -- gion
	"<Ch'io" chia -- mo sol ca -- "gion>" del mio do -- lo -- _ _ re;
	In -- com -- pa -- gnia d'A -- mo -- re
	An -- drò sem -- pre can -- tan -- _ _ _ _ _ _ _ _ _ _ do
	"<An" -- drò sem -- pre can -- tan -- _ _ _ _ "do>"
	An -- drò sem -- pre can -- tan -- _ _ _ _ do~in dol -- ce~ac -- cen -- to;
	Hor son d'ar -- der per voi trop -- po con -- ten -- to.
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

