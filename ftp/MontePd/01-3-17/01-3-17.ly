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
	title = "17. Dolce mia vita, da cui vivo & moro"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Francesco Mario Molza"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1919"
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
      g''2
    }
  >>
>>

	cantusMusic =  \relative c''' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	g4 f8 f e4. b8 c d b4 a8 g'4 \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g4 r r r8 g, c c d d e4 a, r r8 c f f e e d4 g
	
	f4. e8 d2 e4 r8 e e8. e16 e8 e g f16 e d8 e d c b4 b r8 g'8 g8. f16 e8 d e e a, b c4 d r8 g g4 r8 e8. e16 e8	
	f8 f e16 d c b a8 g c16 a d8. c16 c4 b8 c e8. d16 f8 e d g4 g,8 c4 b8 a4 g8 d' g2 f4 e4. d8 d2 \set suggestAccidentals = ##t cis4 \set suggestAccidentals = ##f d r8 d8. d16 d8	
	e8 f g4 r8 g,8. g16 g8 a b c c8. c16 c8 d e f e e d4 c b8 r g' f f e4 d g8. f32 e f8 d e f d4. c8	
	r8 g' f f e4 d c8. b32 a b8 g a b c4 b8 g' f f e4 d c8. b32 a b8 d e f d4 c8 d e8. c16 d8 e
	
	f8. e32 d e4 r8 d e8. c16 d8 e f8. e32 d e16 d c b a8 e' d16 e f4 e8 \hide d4 e2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Dol -- ce mia vi -- ta, da cui vi -- vo~e mo -- _ ro,
	Per -- ch'al -- tro far vo -- len -- do,
	"<Per" -- ch'al -- tro far vo -- len -- "do,>" non sa -- pre -- i,
	Che co -- me~a -- va -- ro~in -- ten -- _ _ _ to~al suo the -- so -- ro
	Che co -- me~a -- va -- ro~in -- ten -- to~al suo the -- so -- ro
	In te tut -- ti son spe -- si~i pen -- _ _ _ _ sier mie -- _ _ _ _ _ i,
	Al -- tri che te mio ben nes -- su -- no~a -- do -- ro.
	nes -- su -- no~a -- do -- _ _ _ ro.
	Ne co -- no -- sco~al -- tro ciel,
	Ne co -- no -- sco~al -- tro ciel,
	"<Ne" co -- no -- sco~al -- tro "ciel,>" non al -- tri De -- i,
	Ch'A -- mor mi strin -- se con __ _ _ _ si for -- te no -- do,
	Ch'A -- mor mi strin -- se con __ _ _ _ si for -- te no -- do,
	Ch'A -- mor mi strin -- se con __ _ _ _ si for -- te no -- do,
	Che scio -- glier non si può __ _ _ _ 
	Che scio -- glier non si può __ _ _ _ _ _ _ _ per al -- _ _ cun mo -- do.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "petrucci-g"
      \key c \major
      \time 4/4
      r1 c''2
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef treble
	\time 4/4
	\key c \major

	r2 c4 b8 b a4. g8 c d e d16 c b g c4 b8 a4 b r r8 g c4 c8 d d e4 e8 r4 r8 g, a a
	
	b8 c a16 g a b c8 b b a b4 c r8 a c b c c b a b4. c8 d4 d8 g, c b c c b4. a16 g d'8 f e8. d32 c
	
	b8 a b4 b8 c c4 r8 a a4 r8 e'8. e16 e8 f f e c d4 e r r r8 e8. d16 f8 e d e e8. d16 f8 e d e4 a,
	
	c4. a8 f'2 e4 r8 b8. b16 b8 a b c4 r8 e8. e16 e8 d e f4. e16 d e8. f16 g4 r g8 g f e4 d8 r4 r r8 g f f e4	
	d4 c8. b32 a b8 g a16 b c a b8 c a4 b r r r8 g' f f e4 d2 g8. f32 e f8 d e f d4 c r r r8 a b8. g16 a8 b
	
	c4 r r8 a b8. g16 a8 b c8. d16 e d c b a8 a b c4 b8 c2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Dol -- ce mia vi -- ta, da cui vi -- _ _ _ _ _ vo~e mo -- ro,
	Per -- ch'al -- tro far vo -- len -- do,
	"<Per" -- ch'al -- tro far vo -- len -- _ _ _ _ "do,>" non sa -- pre -- i,
	Che co -- me~a -- va -- ro~in -- ten -- to~al suo the -- so -- ro
	Che co -- me~a -- va -- ro~in -- ten -- _ _ _ to~al suo __ _ _ _ the -- so -- ro
	In te
	"<In" "te>" tut -- ti son spe -- si~i pen -- sier mie -- i,
	Al -- tri che te mio ben
	"<Al" -- tri che te mio "ben>" nes -- su -- no~a -- do -- ro.
	Ne co -- no -- sco~al -- tro ciel,
	Ne co -- no -- sco~al -- tro -- ciel, __ _ _ _ _ _ non al -- tri De -- i,
	Ch'A -- mor mi strin -- se con __ _ _ _ si for -- _ _ _ _ te no -- do,
	Ch'A -- mor mi strin -- se con __ _ _ _ si for -- te no -- do,
	Che scio -- glier non si può
	Che scio -- glier non si può __ _ _ _ _ _ _ per al -- cun mo -- do.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key c \major
      \time 4/4
      r1 r2 g'2
    }
  >>
>>

	bassusMusic = \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	
	r2 r4 g4 f8 f e4. b8 c d e4 c8 g'4 \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g4 r2 r8 c, f f g g a4 d, r8 c f f e e d4 a'8 g4 fis8 g4	
	c,8 c' c8. b16 a8 g a a e f g2. g8 e e8. e16 e8 e g4. f16 e d4 a' g8 f e4 e r8 c'8 c4 r8 a8. a16 a8 c b
	
	a4. a8 g4 c,8 c'8. b16 a8 g f e c' b a g4 c8 c8. b16 d8 c b c c, d4 e f4. e16 d a'2 d,8 g8. g16 g8 fis8 g c,2. r2	
	r8 a'8. a16 a8 b c d c c b a4 g2 r r4 r8 c bes8 bes a4 g8 g f f e4 d g8. f32 e f8 d e4. e8 d4 c g'8. f32 e f8 d
	
	e8 c d16 e f d a'4 g r8 a b8. g16 a8 b c8. b32 a g4 r8 d a'8. g16 a8 b c8. b32 a g4 d a'8. b16 c b a g f8 d g2 c,2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Dol -- ce mia vi -- ta, da cui vi -- vo~e mo -- _ ro,
	Per -- ch'al -- tro far vo -- len -- do,
	"<Per" -- ch'al -- tro far vo -- len -- "do,>" non sa -- pre -- i,
	Che co -- me~a -- va -- ro~in -- ten -- to~al suo the -- so -- ro
	Che co -- me~a -- va -- ro~in -- ten -- _ _ _ to~al suo the -- so -- ro
	In te tut -- ti son spe -- si~i pen -- sier mie -- i,
	Al -- tri che te mio ben nes -- su -- no~a -- do -- ro.
	Al -- tri che te mio ben nes -- su -- no~a -- do -- _ _ _ ro.
	Ne co -- no -- sco~al -- tro ciel,
	"<Ne" co -- no -- sco~al -- tro "ciel,>" non al -- tri Dei -- i,
	Ch'A -- mor mi strin -- se
	"<Ch'A" -- mor mi strin -- "se>" con __ _ _ _ si for -- te no -- do,
	con __ _ _ _ si for -- te no -- _ _ _ _ do,
	Che scio -- glier non si può __ _ _ _ 
	Che scio -- glier non si può __ _ _ _ per al -- _ _ _ _ _ _ cun mo -- do.
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

