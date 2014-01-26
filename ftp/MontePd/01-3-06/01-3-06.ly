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
	title = "6. Ne pur si duro esilio & lontanza"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Luigi Alamanni"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1908"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "petrucci-g"
      \key c \major
      \time 2/2
      d''1
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 2/2
	\key c \major
	\tempo 2 = 60	
	d2 g4 e f2. e4 e4. e8 e4 d e d8 c b4 b r4 d4 c b e2. e4 d c b c a2
	b4 g b c d2 r4 g4 f4. e8 d4 f e4. d8 e f g2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g2 r2 r2 r4 a,4 b c d1 r4
	g4 f4. e8 d4 g f e8 d e2 d r4 g4. fis8 g4 d g, g'2 r2 r4 g4. fis8 g4 d g, g'2. e4
	d4 c b2 b4 b d2 d4 d2 d4 e1 r4 a,4 a2 f'4 e2 f4 d d g f e2 e d4 d8 c b4
	b4 c2 r2 d4 d8 c b4 b e g d e a,2 b e d4 c b r8 e8 d4 c b e g2 g,4 a2
	b4 c8 d e2 d4 e2 r2 r4 d4. d8 e4 d cis d b a g a2 b r2 r4 d4. d8 e4 d cis

	d4 b a g a2 b2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."	
}

	cantusLyrics = \lyricmode{
	Non pur si du -- ro~e -- si -- lio~o lon -- tan -- an -- _ _ _ za
	Ma mor -- te stes -- sa non tor -- rà dal co -- re
	Don -- na gen -- til di voi quel -- la sem -- bian -- _ _ _ _ _ za
	Don -- na gen -- til di voi quel -- la sem -- bian -- _ _ _ za
	Ch'in si sal -- do la -- vor
	"<Ch'in" si sal -- do la -- "vor>" vi scul -- se~A -- mor -- e,
	E s'al -- tro che so -- spir
	E sal -- tro che so -- spir nul -- la m'a -- van -- za,
	Le -- ve m'è'l so -- spir -- ar,
	Le -- ve m'è'l so -- spir -- ar, ca -- ro~il do -- lo -- re,
	Dol -- ce~il lan -- guir,
	Dol -- ce~il lan -- guir, soa -- _ ve~o -- gni tor -- men -- _ _ _ to
	Che per voi lun -- ge gior -- no~e not -- te sen -- to
	Che per voi lun -- ge gior -- no~e not -- te sen -- to.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c1"
      \key c \major
      \time 2/2
      r2 b'1
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef treble
	\time 2/2
	\key c \major
	
	r4 b2 c b4 a g c2 c4 b4. a8 a2 gis4 r4 a2 g4 c, c'2 b4 a g g8 g g2 \set suggestAccidentals = ##t fis4 \set suggestAccidentals = ##f g2 r2
	g2 b4 c d2 r4 d4 c4. b8 a4 bes4 a2 g r4 g4 f4. e8 d4 f e2 d r4 a'4 b c d a b4.

	c8 d4 d2 \set suggestAccidentals = ##t cis4 \set suggestAccidentals = ##f d b4. a8 b4 a c b2 r4 e,4. d8 e4 d bes'4 a c4. b8 c4 b e d c b e d2
	d4 d b2 b4 a2 b4 g g g2 g4 fis2 \hide fis4 a1 b4. b8 e4 d2 cis8 b cis!2 r1 a4 a8 g fis4
	\hide fis4 g2. g2 e4 b' c4. b8 a2 gis4 r4 c4 b a gis2 r4 e'4 d c b e,2 f e4 a b c a r4
	b4. b8 c4 b a b2. a8 g a4 g fis g2 fis!4 g b4. b8 c4 b a b2. a8 g a4 g fis4 g2 fis4 g2\fermata

	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	altusLyrics = \lyricmode{
	Non pur si du -- ro~e -- si -- lio~o lon -- tan -- an -- za
	Ma mor -- te stes -- sa non tor -- rà dal co -- _ re
	Don -- na gen -- til di voi quel -- la sem -- bian -- za di voi quel -- la sem -- bian -- za
	Don -- na gen -- til di voi quel -- la sem -- bian -- za
	Ch'in si sal -- do la -- vor
	Ch'in si sal -- do la -- vor
	"<Ch'in" si sal -- do la -- "vor>" vi scul -- se~A -- mor -- e,
	E s'al -- tro che so -- spir
	E s'al -- tro che so -- spir nul -- la m'a -- van -- _ _ za,
	Le -- ve m'è'l so -- spir -- ar, ca -- ro~il do -- lo -- _ _ re,
	Dol -- ce~il lan -- guir,
	Dol -- ce~il lan -- guir, soa -- ve o -- gni tor -- men -- to
	Che per voi lun -- ge gior -- _ _ _ no~e not -- te sen -- to
	Che per voi lun -- ge gior -- _ _ _ no~e not -- te sen -- to.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key c \major
      \time 2/2
      r2 g'2
    }
  >>
>>

	bassusMusic = \relative c'' {
	\clef treble
	\time 2/2
	\key c \major

	r4 g e c d d c4. b8 a g a2 b4 c d e e f2 e a,4 a'2 g4 f e e c

	d2 g,4 g' g a b! g4. g8 e4 d1 r2 r1 r4 g,4 b c d1 r4 g4 f4. e8 d4 f e2 d4 d

	g4. a8 bes4 \hide bes a2 d,4 g4. fis8 g4 d c g'8 f e d c2 r4 g'4. fis8 g4 d c g' e e

	c4 g'1. g4 g g2 g4 fis2 g4 c,1 r4 d4 d2 d4 cis2 d4 g, g' c, d a' a a a8 g fis4 \hide fis

	g2 r2 d4 d8 c b4 b e2 c g'4 c, f2 e c g'4 a e2 r4 r8 c8 g'4 a e c2 c'

	g4 a g f2 e4 g4. g8 a4 g fis g2. e4 fis g d1 g,4 g'4. g8 a4 g fis g2. e4
	fis4 g d1 g,2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

	bassusLyrics = \lyricmode{
	Non pur si du -- ro~e -- si -- _ _ _ _ lio~e lon -- tan -- an -- za
	Ma mor -- te stes -- sa non tor -- rà dal co -- re
	Don -- na gen -- til
	"<Don" -- na gen -- "til>"
	Don -- na gen -- til di voi quel -- la sem -- bian -- za di voi quel -- la sem -- bian -- za
	Ch'in si sal -- do la -- vor __ _ _ _ _
	"<Ch'in" si sal -- do la -- "vor>" vi scul -- se~A -- mor -- e,
	E s'al -- tro che so -- spir
	E s'al -- tro che so -- spir nul -- la m'a -- van -- za,
	Le -- ve m'è'l so -- spir -- ar,
	Le -- ve m'è'l so -- spir -- ar, ca -- ro~il do -- lo -- re,
	dol -- ce~il lan -- guir,
	Dol -- ce~il lan -- guir, soa -- ve o -- gni tor -- men -- to
	Che per voi lun -- ge gior -- no~e not -- te sen -- to
	Che per voi lun -- ge gior -- no~e not -- te sen -- to.
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

