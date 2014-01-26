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
	title = "14. S'io odo alcun felice, e lieto amante"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Angelo Di Costanzo"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1916"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key f \major
      \time 4/4
      d'2
    }
  >>
>>

	cantusMusic =  \relative c' {
	\clef "treble_8"
	\time 4/4
	\key f \major
	\tempo 4 = 60	
	d4 f8. e16 d8 d c16 bes a g f8 f' e16 d c bes a8 a' d,4 e r8 f f f c16 bes c d ees8 c bes ees!
	
	d4. c8 bes8 a16 g a4 g8 g' d8. e16 f8 f c16 bes c d ees8 \hide ees bes16 a bes c d8. c32 bes a8 d c4 c8 f f f f4. d8 r g g g
	
	g16 f e d e2 c8 d e f4 g8 e4 fis r r2 r4 g2 f4. e8 f d ees4 d2 r4 r r8 bes c d ees4 d8 g, bes bes8. bes16 a8 bes g d'4. \set suggestAccidentals = ##t ees8 \set suggestAccidentals = ##f
	
	d4 g,8 g a bes g4 f8 f f' f8. f16 \set suggestAccidentals = ##t ees8 \set suggestAccidentals = ##f f c4 bes bes8 a4 g g'2 e4 f d8 e d4 r8 c a4 b8 c4 b8 c c a4 b8 c4 b8	
	c8 g c \set suggestAccidentals = ##t bes! \set suggestAccidentals = ##f a4 d8 f ees d d4. c16 bes c4 d8 f f f f4 d r bes ees d c bes a2 g2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	S'io o -- do~al -- cun fe -- li -- _ _ _ _ ce,~e lie -- _ _ _ _ to~a -- ma -- nte
	Nar -- rar gio -- io -- _ _ _ _ so~i suoi tran -- quil -- li~ar -- do -- _ _ _ ri,
	E quan -- te vol -- te del __ _ _ _ _ suo~a -- mor __ _ _ _ _ _ _ _ co -- sta -- nte
	Rac -- co -- glie frut -- ti,
	"<Rac" -- co -- glie frut -- _ _ _ _ "ti,>" non pur fron -- de,~e fio -- ri,
	Di -- co  d'in -- vi -- dia col -- mo in quel -- l'i -- sta -- nte,
	In voi spie -- ga for -- tu -- na~i suoi fa -- vo -- ri i suoi fa -- vo -- ri;
	In voi spie -- ga for -- tu -- na~i suoi fa -- vo -- ri;
	Sol' io lun -- gi~al mio ben
	"<Sol'" io lun -- gi~al mio "ben>"
	Sol' io lu -- ngi~al mio ben quì mi di -- sfac -- cio qui mi di -- sfac -- _ _ _ cio;
	E nul -- la stri -- ngo, e tu -- to~il mo -- ndo~ab -- brac -- cio.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key f \major
      \time 4/4
      r2 r4 d4
    }
  >>
>>

	altusMusic = \relative c {
	\clef "treble_8"
	\time 4/4
	\key f \major

	r4 r8 d f8. g16 a8 a bes a c4. d8 b16 c d4 \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d4 r4 r8 c c c g16 f g a bes8 g f a
	
	g8 g fis4 g r r8 d'8 a8. bes16 c8 c g16 f g a bes8 g f bes a4 a r r8 d d d d4 e r8 c c c c4 a b8 c
	
	d8 d cis4 d r d c4. b8 c g bes?4 a2 r4 bes2 a4. g8 a bes g8. f16 g8 bes4 a8 bes4 r r2 r8 f bes bes8. bes16 a8 bes c d4. \set suggestAccidentals = ##t ees8 \set suggestAccidentals = ##f
	
	d8 c r d d bes8. bes16 a8 bes g fis g4 fis!8 g4 r c2 a4 b8 c4 \set suggestAccidentals = ##t b!8 \set suggestAccidentals = ##f c2 r4 d e f d8 e d4 r c2 bes a4 g2 a r4 r8 d
	
	d8 d d4 bes8 g4 bes8 a4 g2 fis4 g2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	S'io o -- do~al -- cun fe -- li -- ce,~e lie -- to~a -- man -- _ _ _ te
	Nar -- rar gio -- io -- _ _ _ _ so~i suoi tran -- quil -- li~ar -- do -- ri,
	E quan -- te vol -- te del __ _ _ _ _ suo~a -- mor co -- stan -- te
	Rac -- co -- glie frut -- ti,
	"<Rac" -- co -- glie fru -- "ti,>" non pur fron -- de,~e fio -- ri,
	Di -- co d'in -- vi -- dia col -- mo 
	"<Di" -- co d'in -- vi -- dia col -- "mo>~in" quel -- l'is -- tan -- te,
	In voi spie -- ga for -- tu -- na~i suoi fa -- vo -- ri;
	In voi spie -- ga for -- tu -- na~i suoi fa -- vo -- ri;
	Sol' io lun -- gi~al mio ben
	Sol' io lun -- gi~al mio ben quì mi dis -- fac -- cio;
	E nul -- la strin -- go,~e tut -- to~il mon -- do~ab -- brac -- cio.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "petrucci-f"
      \key f \major
      \time 4/4
      r1 r4 d4
    }
  >>
>>

	bassusMusic = \relative c {
	\clef "bass"
	\time 4/4
	\key f \major
	
	r2 r8 d f8. e16 d8 d c16 bes a g f8 f' g bes a4 d, r8 f f f c16 bes c d \set suggestAccidentals = ##t ees!8 \set suggestAccidentals = ##f c bes4. c8	
	ees8 \hide ees d4 g, r8 g' d8. e16 f8 f c16 bes c d ees8 \hide ees bes16 a bes c d8 bes f'4 f r8 bes bes bes bes4 g r r8 a a a
	
	a4. f8 g a bes g a4 d, r8 g4 f e8 f d ees4 d2 r g f4. e8 f d ees8. d16 c8 bes c4 bes2 r8 f'8 bes bes8. bes16 a8	
	bes8 g g f ees4 d8 bes bes' bes8. bes16 a8 bes4. g8 f4 ees d2 g,4 r1 g'2 e4 f g8 a g4 r2 g2 e4 fis8 g4 fis8 g d
	
	g4 \hide f ees2 d r8 bes' bes bes bes4 g4. bes4 bes,8 f'4 g d2 g,2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	S'io o -- do~al cun fe -- li -- _ _ _ _ ce,~e lie -- to~a -- man -- te
	Nar -- rar gio -- io -- _ _ _ _ so~i suoi tran -- quil -- li~ar -- dor -- i,
	E quan -- te vol -- te del __ _ _ _ _ suo~a -- mor __ _ _ _ _ co -- stan -- te
	Rac -- co -- glie frut -- ti,
	"<Rac" -- co -- glie frut -- "ti,>" non pur fron -- de,~e fior -- i,
	Di -- co d'in -- vi -- dia col -- mo
	Di -- co d'in -- vi -- dia col -- mo'in quel -- l'i -- stan -- te,
	In voi spie -- ga for -- tu -- na~i suoi fa -- vo -- ri;
	In voi spie -- ga for -- tu -- na~i suoi fa -- vo -- ri;
	Sol' io lun -- gi~al mio ben
	"<Sol'" io lun -- gi~al mio "ben>" quì mi dis -- fac -- cio;
	E nul -- la strin -- go,~e tut -- to~il mon -- do~ab -- brac -- cio.
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

