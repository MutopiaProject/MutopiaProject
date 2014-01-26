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
	title = "27. Satiati Amor, ch'à piu doglioso amante"
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
 footer = "Mutopia-2014/01/26-1929"
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
      r2 g'4
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	r4 g8 g16 f e4 r8 g g8. a16 b8. c16 d8. c32 b a4 b r g8 g16 f e4 r8 d g8. a16 b8. c16 d8 a
	
	r8 a fis4 r2 r8 g c c b8. a16 g8 a b16 \set suggestAccidentals = ##t c! \set suggestAccidentals = ##f d4 \set suggestAccidentals = ##t cis!8 \set suggestAccidentals = ##f d d16 c b a g8 a c4 b8. a16 a4 \set suggestAccidentals = ##t gis8 \set suggestAccidentals = ##f a4 r c8. b16 a8 d c4 b
	
	c8. b16 a8 d c4 b r g f4. f8 e2 d4 a'8. g16 a8 b c4 c8 d c b c4 d r c a2 b4 c b8. a32 g a4 b2	
	r8 g g g g4 e r r8 c' c c c4 a b c g8 f e4 e8 fis g8. fis16 g8 a b4 c g8 f e4 d r
	
	r8 g fis16 e \set suggestAccidentals = ##t fis \set suggestAccidentals = ##f g a8 a r4 r8 a8 g16 fis g a b8 b r4 r r8 g4 g8 c4 b2 r4 g a b c a d c8 b
	
	c4 d2 c b4 a4. g8 a2 b1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Sa -- tia -- ti~A -- mor, ch'à più do -- glio -- so~a -- man -- _ _ _ te
	Sa -- tia -- ti~A -- mor, ch'à più do -- glio -- so~a -- man te
	Di me non im -- pia -- ga -- sti~il cor an -- co -- _ _ _ ra:
	Ri -- _ _ _ _ di for -- tu -- _ _ _ na, che fra tan -- te,~e tan -- te
	"<che" fra tan -- te,~e tan -- "te>"
	Al -- me~in -- fe -- li -- ci che fra tan -- te,~e tan -- te
	Al -- me~in -- fe -- li -- ci la mia più t'ho -- no -- _ _ _ ra.
	Go -- de -- te Don -- na
	Go -- de -- te Don -- na so -- la~hog -- gi fra tan -- te;
	Che'l mon -- do di bel -- tà van -- ta,~ed a -- do -- ra,
	Ch'in più di mil -- le car -- te ch'in più di mil -- le car -- te scrit -- to si -- a
	Vo -- stra du -- rez -- za con __ _ _ _ la do -- glio mi -- _ _ a.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      g'4
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef "treble_8"
	\time 4/4
	\key c \major

	g8 g16 f e4 r8 c c8. d16 e8. f16 g2 fis4 d8 d16 c b4 r8 g g8. a16 b8. c16 d4 g,8 g' fis4 r8 e
	
	a8 a g8. f16 e8 d e16 \set suggestAccidentals = ##t f! \set suggestAccidentals = ##f g4 \set suggestAccidentals = ##t fis!8 \set suggestAccidentals = ##f g g16 f e d c8 d f e4 d8 g8. f16 e d c4 d8 d e4 d e8. d16 c8 b a4. g8	
	e'8. f16 g8 f e8. d16 e f g4 \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g4 r2 r4 d c4. c8 b4 a f'8. g16 a8 g f4 e8 g f4. f8 e2 d8 d4 a' g a g \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f
	
	g4 r4 r2 r8 g g g g4 e r8 f f f f4 d e8 f e d cis4 \hide cis8 d8 e8. d16 e8 f g g, a16 b c a b8 d cis4	
	d8 d b16 a b c d8 d r4 r r8 d cis16 b \set suggestAccidentals = ##t cis \set suggestAccidentals = ##f d e8 e r g fis16 e \set suggestAccidentals = ##t fis \set suggestAccidentals = ##f g a8 a r e4 g \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g4 r4 r2 r4 d e fis
	
	g4 e a g8 f g4 a2 g4 fis! g2 fis!4 g1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Sa -- tia -- ti~A -- mor, ch'à più do -- glio -- so~a -- man -- te
	Sa -- tia -- ti~A -- mor, ch'à più do -- glio -- so~a -- man -- te
	Di me non im -- pia -- ga -- sti~il cor an -- co -- _ _ _ ra:
	Ri -- _ _ _ _ di for -- tu -- na,
	Ri -- _ _ _ _ di for -- tu -- na, che fra tan -- te,~e tan -- te
	che fra tan -- te,~e tan -- _ _ _ _ _ te
	Al -- me~in -- fe -- li -- ci che fra tan -- te~e tan -- te
	Al -- me~in -- fe -- li -- ci la mia più t'ho -- no -- _ ra.
	Go -- de -- te Don -- na
	Go -- de -- te Don -- na so -- la~hog -- gi fra tan -- te;
	Che'l mon -- do di bel -- tà van -- ta,~ed __ _ _ _ _ a -- do -- ra,
	Ch'in più di mil -- le car -- te
	Ch'in più di mil -- le car -- te
	"<Ch'in" più di mil -- le car -- "te>" scrit -- to si -- a
	Vo -- stra du -- rez -- za con __ _ _ _ la do -- glia mi -- _ a.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 4/4
      r\breve r4 c'4
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r1 r8 c g8. a16 b8. c16 d4 g, g8 g16 f e4 r8 c g'8. a16 b8. c16 d8 g, r d' cis4 d e8. d16 c?8 b
	
	a8 g a4 g r r2 r4 r8 c8. b16 a g f8 g c4 b a r e'8. d16 c8 b a4 g a8. b16 c8 b a4 g g2 a4 b c a d8. e16 f8 e
	
	d4 c r r8 g a4 b c a8 a f'2 e4 c d2 g,8 g g g g4 e r r8 c' c c c4 a r d, g c,8 f g4 a r8 d8	
	c8. d16 c8 a g4 f e8 d a'4 d, r8 d' b16 a b c d8 d r a fis16 e \set suggestAccidentals = ##t fis! \set suggestAccidentals = ##f g a8 a r4 r r8 d cis16 b \set suggestAccidentals = ##t cis! \set suggestAccidentals = ##f d
	
	e8. d16 c?8 b a4 g d' c b a1 g2 f4 e8 d e4 f g4. g8 d'1 g,1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	ch'a più do -- glio -- so~a -- man -- te
	Sa -- tia -- ti~A -- mor, ch'à più do -- glio -- so~a -- man -- te
	Di me non im -- pia -- ga -- sti~il cor an -- co -- ra:
	Ri -- _ _ _ _ di for -- tu -- na, che fra tan -- te,~e tan -- te
	"<che" fra tan -- te,~e tan -- "te>"
	Al -- me~in -- fe -- li -- ci che fra tan -- te,~e tan -- te
	Al -- me~in -- fe -- li -- ci la mia più t'ho -- no -- ra.
	Go -- de -- te Don -- na
	Go -- de -- te Don -- na so -- la~hog -- gi fra tan -- te;
	Che'l mon -- do di bel -- tà van -- ta,~ed a -- do -- ra,
	Ch'in più di mil -- le car -- te
	"<Ch'in" più di mil -- le car -- "te>"
	Ch'in più di mil -- le car -- te scrit -- to si -- a
	Vo -- stra du -- rez -- za con __ _ _ _ la do -- glia mi -- a.
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

