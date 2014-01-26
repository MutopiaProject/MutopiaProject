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
	title = "20. Spesso à consiglio i miei pensier convoco"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Angelo Di Costanza"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1922"
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
      g'2
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	g4 d'8 e d8. c16 b8 c d4 c e8. f16 g g, c d e4 d r8 g g8. g16 f8 e d4. e8 f f4 e8. d16 d4 \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f
	
	d8 e f4 r8 d e e a,4 b8 d b8. b16 b8 b c4 a r r8 g'8 e8. e16 e8 e f4. e8 d4 a d2 cis4 r8 d g8. f16 e8 d
	
	c8 f4 e d8 fis g4 \set suggestAccidentals = ##t fis!8 \set suggestAccidentals = ##f g4 r g, a8 b c g' f8. f16 e8 e d4 b d8 g8. f16 e8 c a d8. c16 b8 c r d g8. f16	
	e8 c d8. c16 b8 c a4 g8 d' cis!4 d8 b4 cis!8 d4 r r d e f2 e4. d8 d2 cis!4 d8 d cis!4 d8 b4 cis!8 d4 r r d
	
	e4 f2 e4. d8 d2 cis4 d r r r8 e b d8. d16 cis8 d e a, b d8. c32 b a4 b2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	cantusLyrics = \lyricmode{
	Spes -- so~à con -- si -- glio~i miei pen -- sier con -- vo -- _ _ _ _ _ _ co
	Per di -- man -- dar -- li,~ho -- mai, di noi, che fi -- _ _ _ a?
	di noi, di noi che fi -- a?
	E s'ha -- vrà qual -- che fi -- ne
	"<E" s'ha -- vrà qual -- che fi -- "ne>~il" no -- stro fo -- co,
	O se for -- tu -- na~ha -- vrem sem -- pre più ri -- _ _ a?
	E co -- sì stan -- do veg -- gio~in spa -- tio po -- co
	Ve -- nir -- ne mil -- le
	"<Ve" -- nir -- ne mil -- "le>"
	Ve -- nir -- ne mil -- le~à la me -- mo -- ria mi -- a:
	Ma~al fi -- ne~o -- gn'un di lor m'è du -- ro,~e for -- _ _ _ te,
	Ma~al fi -- ne~o -- gn'un di lor m'è du -- ro,~e for -- _ _ _ te,
	Che non san -- no trat -- tar al -- tro, che mor -- _ _ _ te.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key c \major
      \time 4/4
      r1 r4 d'4
    }
  >>
>>

	altusMusic = \relative c' {
	\clef treble
	\time 4/4
	\key c \major

	r2 r8 d g a g8. f16 e8 f c c c'16 b a b c4 b r2 r8 b b8. b16 a8 g a4 r r8 g g8. g16 f8 e
	
	d8 a' b!4 a8 g4 fis8 g4 r8 g e8. e16 e8 e f4 d2 r4 r8 c'8 a8. a16 a8 a bes g f4 d f e r r8 d g8. f16 e8 d
	
	c4. g'8 a b! a4 b!8 g fis g e4 d g8. g16 a8 b c4 b8 b d8. c16 b8 g e a8. g16 fis8 g g, g'8. f16 e8 d
	  
	  c16 d e f g8 c b a4 g \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g4 r8 a fis g e4 a b r b c a g2 a2 r2 r4 r8 a fis g e4 a b
	  
	  c4 bes2 a4 g2 a r r8 a e g8. g16 fis8 g4 r2 g8 e fis g4 fis16 e \set suggestAccidentals = ##t fis!4 \set suggestAccidentals = ##f g2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Spes -- so~à con -- si -- glio~i miei pen -- sier con -- vo -- _ _ _ _ co
	Per di -- man -- dar -- li,~ho -- mai,
	"<Per" di -- man -- dar -- li,~ho -- "mai,>" di noi, che fi -- _ a?
	E s'ha -- vrà qual -- che fi -- ne
	"<E" s'ha -- vrà qual -- che fi -- "ne>~il" no -- stro fo -- co,
	O se for -- tu -- na~ha -- vrem sem -- pre più ri -- a?
	E co -- sì stan -- do veg -- gio~in spa -- tio po -- co
	Ve -- nir -- ne mil -- le
	"<Ve" -- nir -- ne mil -- "le>"
	Ve -- nir -- ne mil -- le~à la __ _ _ _ _ me -- mo -- ria mi -- _ a:
	Ma~al fi -- ne~o -- gn'un di lor m'è du -- ro,~e for -- te,
	Ma~al fi -- ne~o -- gn'un di lor m'è du -- ro,~e for -- te,
	Che non san -- no trat -- tar al -- tro, che mor -- _ _ _ te.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r\breve r4 g4
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r1 r8 g8 g' a g8. f16 e8 f c c g'4 e2 r8 g g8. g16 f8 e d4. e8 f g e4 d8 g a4 g c, d r1	
	r8 d b8. b16 b8 b c4 a d4. c8 g16 a bes c d8. c16 bes!4 a2 d4 c8 b c g g' f g a g4 d2 r8 g, a b
	
	c8 g' f8. f16 e8 e d4 a r g8 g'8. f16 e8 c4 r g8 g'8. f16 e8 c b e8. d16 c8 a g d' e c d4 g, r r g'
	
	fis4 g8 e4 fis!8 g4 c,1 f4. f8 e2 d4 r r r8 g fis4 g8 e4 fis!8 g4 c,1 f4. f8 e2 d4 r r8 a'8 e g8. g16 fis8	
	g8 e b c d2. g,2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Spes -- so~à con -- si -- glio~i miei pen -- sier con -- vo -- co
	Per di -- man -- dar -- li,~ho -- mai, de noi, che fi -- a? di noi, che fi -- a?
	E s'ha -- vrà qual -- che fi -- ne~il no -- stro fo -- _ _ _ _ _ _ co,
	O se for -- tu -- na~ha -- vrem sem -- pre più ri -- a?
	E co -- sì stan -- do veg -- gio~in spa -- tio po -- co
	Ve -- nir -- ne mil -- le
	"<Ve" -- nir -- ne mil -- "le>"
	Ve -- nir -- ne mil -- le~à la me -- mo -- ria mi -- a:
	Ma~al fi -- ne~o -- gn'un di lor m'è du -- ro,~e for -- te,
	Ma~al fi -- ne~o -- gn'un di lor m'è du -- ro,~e for -- te,
	Che non san -- no trat -- tar al -- tro, che mor -- te.
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

