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
	title = "9. O mia lieta ventura, hor quale stella (prima parte)"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Petronio Barbati"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1911"
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
      a'2.
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	a4. b8 c b16 a gis8 a a a d4 cis8 \hide cis4 \hide cis8 d c?16 b a8 b c4 d8 e8. d16 d4 \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d4 a g4. d8	
	f4 e c'4. a8 g f c'2 a4 r8 g4 a8 b c b4 c r8 g8. g16 g8 a g c d c c b4 b8 b c a8. g16	
	f8 e4 r8 a8 c a8. g16 f8 e e8. d16 d8 cis16 d e f g8. f16 e8 d e4 fis2. r8 a8 a8. g16 a8 b
	
	c2 f,4 r4 r4 r8 a8 a8. g16 a8 b c4 f, e8 f4 e8 f4 r8 a8 a a a bes a4. g8 f f e4 d8 a'8. a16 a8	
	g8 f e4 r8 a8. a16 a8 b c d d, g4. f8 e4 d r2 r4 r8 g8 g f e4 d8 a'8. a16 a8 b c d d, g4. f8	
	e4 d r8 a'8. a16 a8 b2 r8 g8 a g r8 d'8 e c r8 b8 c c b4 a8 e fis4 g8 g f f e4 d
	
	r4 r8 a'8 b4 c8 c, d e g8. f32 e f4 e2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."	
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	O mia lie -- ta ven -- tu -- ra,~hor qua -- le stel -- la
	O mia lie -- ta ven -- tu -- ra,~hor qua -- le stel -- _ _ _ la
	M'è si be -- ni -- gna? que -- sto~è'l mio bel so -- le:
	que -- sto~è'l mio bel so -- le:
	Que -- ste son quel -- le lu -- ci~al -- te -- re~e so -- le,
	Per cui por -- to nel cor
	"<Per" cui por -- to nel "cor>" pia -- ga si bel -- _ _ _ _ _ _ _ _ la?
	Que -- sta~è ben quel -- la boc -- ca?
	Que -- sta~è ben quel -- la boc -- ca?~el -- la~è ben quel -- la;
	On -- de~e -- scon co -- sì dol -- ci le pa -- ro -- le:
	Cer -- to que -- sta~è la man,
	"<Cer" -- to que -- sta~è la "man,>" che spes -- so suo -- le
	che spes -- so suo -- le
	Cer -- to que -- sta~è la man, che spes -- so suo -- le
	Strin -- ger -- mi~il cor: la toc -- cò la toc -- cò el -- la~è pur el -- la:
	el -- la~è pur el -- la~è pur el -- la:
	el -- la~è pur el -- la~è pur el -- _ _ _ la:
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key c \major
      \time 4/4
      r4 fis'2
    }
  >>
>>

	altusMusic = \relative c' {
	\clef treble
	\time 4/4
	\key c \major
	
	r8 fis4 \hide fis8 g \set suggestAccidentals = ##t fis!16 \set suggestAccidentals = ##f e d8 e fis \hide fis g4 e2 r8 fis4 \hide fis8 g f?16 e d8 a' fis g e4 d8 f4 e d8 d2 cis4	
	r4 r8 c'4 a8 g f g4 c r8 e,4 c8 d f d4 e8 e8. e16 e8 d e c4 a8 a'4 a8 gis2 a4	
	r8 a8 c a8. g16 f8 e4 r8 a8 c a8. g16 f8 e e8. d16 d8 cis d4 \set suggestAccidentals = ##t cis!8 \set suggestAccidentals = ##f d a' a8. g16 a8 b c2 f,4	
	r8 a8 a8. g16 a8 bes a2 d,8 d c8. b16 c8 d e g a b c8. b32 a g4 a r4 r8 e8 f f f e
	
	f8 d cis d4 cis!8 d2 r8 a'8. a16 a8 g f e4 r8 a8. a16 a8 b c a d, g4. f8 e4 d8. f16 e8 d cis4	
	d8 a'8. a16 a8 g f e4 r8 a8. a16 a8 b c a d, g4. f8 e4 d r8 d8. d16 d8 e4 r8 b'8 c b
	
	r8 e,8 f d f a4 \set suggestAccidentals = ##t gis8 \set suggestAccidentals = ##f a4 r8 cis,8 d e4 d \set suggestAccidentals = ##t cis!8 \set suggestAccidentals = ##f d fis g4 a r8 d,8 e4 f8 c d e d4 cis2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	O mia lie -- ta ven -- tu -- ra,~hor qua -- le stel -- la
	O mia lie -- ta ven -- tu -- ra,~hor qua -- le stel -- la
	M'è si be -- ni -- gna? que -- sto~è'l mio bel so -- le:
	que -- sto~è'l mio bel so -- le:
	Que -- ste son quel -- le lu -- ci~al -- te -- re~e so -- le,
	Per cui por -- to nel cor
	"<Per" cui por -- to nel "cor>" pia -- ga si bel -- _ _ la?
	Que -- sta~è ben quel -- la boc -- ca?
	Que -- sta~è ben quel -- la boc -- ca?
	"<Que" -- sta~è ben quel -- la boc -- "ca?>~el" -- la~è ben quel -- _ _ _ la;
	On -- de~e -- scon co -- sì dol -- ci le pa -- ro -- le:
	Cer -- to que -- sta~è la man,
	"<Cer" -- to que -- sta~è la "man,>" che spes -- so suo -- le
	che spes -- so suo -- le
	Cer -- to que -- sta~è la man,
	"<Cer" -- to que -- sta~è la "man,>" che spes -- so suo -- le
	Strin -- ger -- mi~il cor: la toc -- cò la toc -- cò~el -- la~è pur el -- la:
	el -- la~è pur el -- _ la: el -- la~è pur el -- la~è pur el -- la~è pur el -- la:
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 4/4
      r4 d'2
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r8 d4 d8 e d16 c b8 cis d4 g, a a d4. d8 e d16 c b8 cis d g, a4 d,8 d'4 c g8	
	bes4 a2	r4 c4. d8 e f e4 f c4. a8 g f g4 c,8 c'8. c16 c8 b c f, e f4. a8 e4 e r4	
	r8 d'8 a c8. b16 d8	a4 r8 d8 a c8. b16 d8 a c bes g a2 d,2. r8 f'8 f8. e16 d8 d c4 f, r8	
	d'8 d8. c16 d8 e f4 f, r8 g8 c e d4 a8. b16 c4 r8 d8 d d d cis d4. c?8 bes8 \hide bes8 a2 d,4 r4	
	r8 a'8. a16 a8 b d cis4	r8 f8. f16 f8 e4 d c8 g b d cis4 d8 d, g f e4 d8 d' d c b16 c 
	
	d4 cis8 r8 f8. f16 f8 e4 d c8 g b d cis4 d r8 g,8. g16 g8 c4 r8 g8 a g r8 a8 d g, c a 
	
	e'4 a, r8 a8 b c a2 d,4 r8 e8 fis4 g r4 r8 a8 b c d4 a2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	bassusLyrics = \lyricmode{
	O mia lie -- ta ven -- tu -- ra,~hor qua -- le stel -- la
	O mia lie -- ta ven -- tu -- ra,~hor qua -- le stel -- la
	M'è si be -- ni -- gna? que -- sto~è'l mio bel so -- le:
	"<que" -- sto~è'l mio bel so -- "le:>"
	Que -- ste son quel -- le lu -- ci~al -- te -- re~e so -- le,
	Per cui por -- to nel cor
	"<Per" cui por -- to nel "cor>" pia -- ga si bel -- la?
	Que -- sta~è ben quel -- la boc -- ca?
	Que -- sta~è ben quel -- la boc -- ca? el -- la~è ben quel -- _ _ la;
	On -- de~e -- scon co -- sì dol -- ci le pa -- ro -- le:
	Cer -- to que -- sta~è la man,
	"<Cer" -- to que -- sta~è la "man,>" che spes -- so suo -- le
	"<che" spes -- so suo -- "le>" che spes -- so suo -- _ _ le
	Cer -- to que -- sta~è la man, che spes -- so suo -- le
	Strin -- ger -- mi~il cor: la toc -- cò la toc -- co~el -- la~è pur el -- la:
	el -- la~è pur el -- la: el -- la~è pur el -- la~è pur el -- la:
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

