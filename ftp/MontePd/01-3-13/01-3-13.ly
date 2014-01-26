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
	title = "13. O chi potra mai ben chiuder'in versi"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Cavalier Gandolfo"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1915"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c1"
      \key f \major
      \time 4/4
      bes'2
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key f \major
	\tempo 4 = 60	
	bes4 bes8 bes bes4 f g8 bes8. bes16 a8 bes4 f r8 d' d d d4 r8 a8 bes a g f ees16 d d4 c8 d d'
	
	d8. c16 bes8 d c bes a g bes2 a4 r8 d8 c8. bes16 a8 c bes a g f e4 d r a'2 d4 r8 g, fis8. g16 a8 bes a8. g32 g
	
	bes16 a g f e8 f e4 d8 bes' bes bes a4 g r8 d' d d c a bes2 a2 r4 r8 f f f g4 a r8 g c c bes a d2	
	cis8 bes8. bes16 bes8 a g a8. g16 f8 g e4 d8 d' bes16 a bes c d8 a c4 bes a bes f8 f c'4. bes8 bes2 a4 bes2 r2	
	bes4 a8 bes8. bes16 c8 d4 r r8 d8. c16 bes16 a g8 f d8. e32 f g8 a8. g16 g4 \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g bes a bes8. bes8 c16 d4 d, c8 d8. d16 e8 f4	
	r4 r8 a8. g16 f e d8 g fis g4 \set suggestAccidentals = ##t fis!8 \set suggestAccidentals = ##f g1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	O chi po -- tra mai ben chiu -- der in ver -- si
	L'al -- to va -- lor con l'hu -- mil cor -- te -- si -- _ _ _ a?
	Le gra -- tie, che com -- pa -- gne~e -- ter -- ne fer -- si
	Le gra -- tie, che com -- pa -- gne~e -- ter -- ne fer -- si
	A lei, che par non fù gia -- mai, __ _ _ _ _ _ _ _ ne fi -- a? 
	Che co' bei mo -- di, e con gli~an -- dar di -- ver -- si
	Che co' bei mo -- di, e con gli~an -- dar di -- ver -- si
	D'ha -- bi -- ti~a -- dor -- ni~in som -- ma leg -- gia -- dri -- a,
	Co'l ri -- _ _ _ _ der, e par -- lar pien di sa -- lu -- _ _ _ te
	Mo -- stra quan -- ta dal ciel ca -- _ _ _ _ de vir -- _ _ _ tu -- _ _ _ te
	Mo -- stra quan -- ta dal ciel
	Mo -- stra quan -- ta dal ciel ca -- _ _ _ _ de vir -- tu -- _ te.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key f \major
      \time 4/4
      r1 r4 d'4
    }
  >>
>>

	altusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key f \major

	r2 r8 d8 d d d4 c ees8 d8. d16 c8 f4 f r8 f f f f f, g a bes a g4 a r r2 r8 g' f8. e16	
	d8 f e d c d e4 f8 c d f e d cis4 d8 g, g'4. fis16 e \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f r2 r8 a fis g g fis! g16 f? e d cis8 d4 cis!8 d4	
	r8 d d d e4 f r8 f8 f f ees d g4 f8 f f f e4 d r8 d d d c a bes4 a8 c d f f e
	
	d4 e8 g8. g16 g8 f g f8. e16 d8 d cis4 d r8 g f16 e f g a8 e g4. fis8 g4 d f8 f ees d d c16 bes c2	
	bes4 d c8 d8. d16 e8 f2 g4 f8 d8. d16 e8 f2 r8 f8. e16 d c bes8 a bes4 a g r ees'4 d8 f8. f16 g8 a g16 f
	
	g8 a8. g16 f e d8. c16 bes8 a r d8. c16 bes8 a bes a4 g1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	O chi po -- tra mai ben chiu -- der in ver -- si
	L'al -- to va -- lor con l'hu -- mil cor -- te -- si -- a?
	Le gra -- tie, che com -- pa -- gne~e -- ter -- ne fer -- si com -- pa -- gne~e ter -- ne fer -- si
	A lei, __ _ _ _ che par non fù gia -- mai, __ _ _ _ _ ne fi -- a?
	Che co' bei mo -- di, e con gli~an -- dar di -- ver -- si
	Che co' bei mo -- di, e con gli~an -- dar di -- ver -- si
	"<e" con gli~an -- dar di -- ver -- "si>"
	D'ha -- bi -- ti~a -- dor -- ni~in som -- ma leg -- gia -- dri -- a,
	Col ri -- _ _ _ _ der, e par -- lar pien di sa -- lu -- _ _ _ _ _ te
	Mo -- stra quan -- ta dal ciel
	Mo -- stra quan -- ta dal ciel ca -- _ _ _ _ de vir -- tu -- te
	Mo -- stra quan -- ta dal ciel __ _ _ _ ca -- _ _ _ _ _ _ de ca -- _ _ de vir -- tu -- te.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key f \major
      \time 4/4
      r1 r4 bes4
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key f \major
	
	r2 r8 bes bes bes bes4 f g8 bes8. bes16 a8 bes4 bes4 r8 d d d d a bes a g f ees4 d8 d bes'8. a16	
	g8 bes a g f e d4 d r r8 bes'8 a8. g16 f8 a g f c' d a4 bes g d' r8 d b8. c16 d8 ees d2. g,4 a2 d,4 r r2	
	r8 bes' bes bes a4 g2 r8 d' d d c a bes4 a8 bes bes bes a f g4 f8 a g d' d c bes4 a8 g8. g16 g8 d' ees d a bes g
	
	a4 d, r r8 d'8 c16 bes c d ees8 bes c d g,4 bes a8 a g2 f r4 bes a8 bes8. bes16 c8 d2 ees4 d8 bes8. bes16 c8 d2 r8 d8. c16 bes a
	
	g8 f d2 d'4 d r2 bes4 a8 bes8. bes16 c8 d d8. c16 bes a g8 f d8. e32 f g4 d2 g1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	O chi po -- tra mai ben chiu -- der in ver -- si
	L'al -- to va -- lor con l'hu -- mil cor -- te -- si -- a?
	Le gra -- tie, che com -- pa -- gne~e -- ter -- ne fer -- si
	Le gra -- tie, che com -- pa -- gne~e -- ter -- ne fer -- si
	A lei, che par non fù gia -- mai, ne fi -- a?
	Che co' bei mo -- di, e con gli~an -- dar di -- ver -- si
	"<e" con gli~an -- dar di -- ver -- "si>"
	e con gli~an -- dar di -- ver -- si
	D'ha -- bi -- ti~a -- dor -- ni~in som -- ma leg -- gia -- dri -- a,
	Col ri -- _ _ _ _ der, e par -- lar pien di sa -- lu -- te
	Mo -- stra quan -- ta dal ciel
	Mo -- stra quan -- ta dal ciel ca -- _ _ _ _ de vir -- tu -- te
	Mo -- stra quan -- ta dal ciel ca -- _ _ _ _ de vir -- _ _ _ tu -- te.
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

