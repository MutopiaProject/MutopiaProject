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
	title = "4. Chi non sà come altrui duo chiari lumi"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Giovanni Vendramin"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1906"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2014. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 4.0 International License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/4.0" http://creativecommons.org/licenses/by/4.0 } } } }
}
	cantusIncipit = <<
  \new MensuralVoice = cantusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "petrucci-g"
      \key f \major
      \time 2/2
      c''1.
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 2/2
	\key f \major
	\tempo 2 = 60	
	c2. c4 f2 r4 c2 c4 f2 d4 e f2. e4 d c d2 d4 a4. bes8 c4 bes a g f r f'4. e8 d4 c f,
	
	f'4 d c4. bes8 a2 a r1 r2 r4 d4. e8 f4 f f e f d c a f r f'2 e e4 d2 d4 e f4. e8 d4 c bes2 a
	
	f4 f g2 a4 a4. bes8 c4 bes a f'4. e8 d4 c r d4. e8 f4 ees d f4. \set suggestAccidentals = ##t ees8 \set suggestAccidentals = ##f d4 c d8 e f2 e4 r c c4. c8 c4 d
	
	e8 d c bes a4 c d e d2 e r r4 c e f r8 f8 e4 c d2 c4 f, a bes8 a f'2 e4 c2 c4 c d2. c4 bes4. a8	
	g4 f g2 a1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Chi non sà
	"<Chi" non "sà>" co -- m'al -- trui duo chia -- ri lu -- mi
	Fac -- cia -- no~o -- scu -- ra not -- te
	"<Fac" -- cia -- no~o -- scu -- ra not -- "te>~il" più bel gior -- no,
	Co -- me~ac -- cen -- da l'a -- mo -- re,~e non con -- su -- mi
	e non con -- su -- mi
	La san -- ta fiam -- m'à~un cor po -- sta d'in -- tor -- no,
	Co -- me la te -- ne -- bro -- sa not -- te
	"<Co" -- me la te -- ne -- bro -- sa not -- "te>~al" -- lu -- _ _ mi
	Un sguar -- d'à par del Sol __ _ _ _ _ di lu -- ce~a -- dor -- no,
	Lei mi -- ri,
	"<Lei" mi -- "ri,>~e~in" lei ve -- drà chia -- ro le tan -- te
	Gran me -- ra -- vi -- glie de le lu -- ci san -- te.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c2"
      \key f \major
      \time 2/2
      r1 r2 a'2.
    }
  >>
>>

	altusMusic = \relative c'' {
	\clef treble
	\time 2/2
	\key f \major

	r2 r4 a4. bes8 c4 bes g a f4. g8 a4 bes c f, bes a g a8 bes c2 b2 c4. \set suggestAccidentals = ##t bes8 \set suggestAccidentals = ##f a4 g f e a
	
	f4 f g2 a r4 bes4 a8 g g2 fis4 r2 r4 e4. f8 g4 g g fis g a2. bes4 g f r a4. bes8 c4 c c b c c, c'
	
	b2 \hide b4 c a4. g8 f4 e d8 c d e f4 c d8 e f2 e4 f2 r r4 a4. bes8 c4 bes a bes4. a8 g4 f g8 a bes2 a8 g
	
	a4. g8 f g a f g2 a4 a a4. g8 a4 bes g a c8 bes a g a4 c b2 c r4 c a g r4 r8 d8 f4 g r a f e
	
	d4 e f f g2 a4 r8 a g4 a bes2 a d,4. d8 e c f2 e4 f1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Chi non sà co -- m'al -- trui
	"<Chi" non sà co -- m'al -- "trui>" duo chia -- ri lu -- _ _ mi
	Fac -- cia -- no~o -- scu -- ra not -- te~il più bel gior -- no,
	il più bel gior -- no,
	Co -- me~ac -- cen -- da l'a -- mo -- re,~e non con -- su -- mi
	Co -- me~ac -- cen -- da l'a -- mo -- re,~e non con -- su -- mi
	La san -- ta fiam -- m'à~un cor __ _ _ _ _ po -- sta d'in -- tor -- _ no,
	Co -- me la te -- ne -- bro -- sa not -- te~al -- lu -- _ _ _ _ _ _ _ _ _ _ _ mi
	Un sguar -- d'à par del sol di lu -- _ _ _ _ ce~a -- dor -- no,
	Lei mi -- ri,
	"<Lei" mi -- "ri,>" e~in lei ve -- drà chia -- re le tan -- te
	Gran mer -- a -- vi -- glie de le lu -- ci san -- _ te.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key f \major
      \time 2/2
      r1 r2 f2.
    }
  >>
>>

	bassusMusic = \relative c {
	\clef "treble_8"
	\time 2/2
	\key f \major
	
	r2 r4 f4. g8 a4 bes4 c f,2 r4 d' g e d2 c4. c8 f,4 a g2. f4 r1 r4 f'4. e8 d4 c bes a d
	
	bes4 bes c2 d2 r4 a4. bes8 c4 c c b c a g d'1 c4 d4. e8 f4 f f e f d c g'1 g4 c, d a bes c g8 a bes c
	
	d4 a bes d c2 f,1 r4 f4. g8 a4 bes c g4. a8 bes4 a g2 f4 f f'4. e8 d2 c r4 f,4 f'4. e8 f4 d c8 bes a g f4 f'
	
	f c g'2 c,4 c e f r8 f e4 c d2 c4 f,2 a bes4 a d2 c r4 f4 e f bes,8 c d e f4 f, g4. f8 c'4 d c2 f,1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Chi non sà co -- m'al -- trui duo chia -- ri lu -- mi
	"<duo" chia -- ri lu -- "mi>"
	Fac -- cia -- no~o -- scu -- ra not -- te~il più bel gior -- no,
	Co -- me~ac -- cen -- da l'a -- mo -- re,~e non con -- su -- mi
	Co -- me~ac -- cen -- da l'a -- mo -- re,~e non con -- su -- mi
	La san -- ta fiam -- m'à~un cor __ _ _ _ _ po -- sta d'in -- tor -- no,
	Co -- me la te -- ne -- bro -- sa not -- te~al -- lu -- mi al -- lu -- _ _ mi
	Un sguar -- d'à par del sol __ _ _ _ _ di lu -- ce~a -- dor -- no,
	Lei mi -- ri,
	"<Lei" mi -- "ri,>~e~in" lei ve -- drà chia -- ro le tan -- te
	Gran me -- ra -- vi -- _ _ _ _ glie de le lu -- ci san -- te.
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

