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
	title = "16. Dico, che da quel punto, ch'infiammarsi"
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
 footer = "Mutopia-2014/01/26-1918"
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
      b'\breve
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	b1 a2.  g8 g4 f8 e4 d e a8 c4 b8 r c4 c8 a4 g8. f16 e8 g a2 g4 a8 b a4 b8 b e4	
	d8 cis4 d8 b4 r8 b8 e4 d8 cis4 d8 b4 r r8 g8. g16 g8 f e b'4. b8 g4 c2 g4 a4. g8 a8 c b4 b8 b8. c16 d8	
	d,8 g f4 e g4. c8 b4 b8 e8. d16 c8 b a16 g d'4 cis2 r r4 a b8 d d cis d4 a2 c b4 r2 c b8 b4 a8 b c
	
	d8. c32 d e8 b c b r c4 a8 a g a b c4 g a8. b16 c b c8. b16 b a32 g a4 b4 g g8 g8. g16 f8 e4 b'
	
	a8 b8. b16 a8 gis a c16 d e d c8 b a4 gis2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Ohi -- me, che da quel pun -- to, ch'in -- fiam -- mar -- si
	Vi -- di d'i -- ra __ _ il tuo va -- go,~e di -- vin vol -- to
	Sen -- tì den -- tro~il mio cor
	Sen -- tì den -- tro~il mio cor to -- sto sgom -- brar -- si,
	Quan -- t'ha -- vea spe -- me~in tan -- ti me -- si~ac -- col -- to;
	E da l'al -- ma con -- fu -- sa di -- le -- guar -- si
	O -- gni pia -- ce --  _ _ _ re: on -- de~à me stes -- so vol -- to
	Dis -- si,
	Ahi per -- du -- ti mal gra -- di -- _ _ _ ti~af -- fan -- ni,
	Ahi per -- du -- ti mal gra -- di -- ti~af -- fan -- _ _ _ _ _ _ _ _ _ ni,
	Que -- st'è~l' -- ul -- ti -- mo dì
	Que -- st'è~l' -- ul -- ti -- mo dì dei miei __ _ _ _ _ dol -- ci~an -- ni.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r\breve r1 r4 e'2
    }
  >>
>>

	altusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major

	r1 r2 r8 e4 d8 c d4 c8 b4 a r8 a'4 g8 f4 e r8 d4 d8 g e f d e4. g8 fis8 g4 \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g2 r8 e a4. g8	
	fis8 g e4 r8 e a4. g8 fis g e e8. e16 e8 d cis r d4 d8 e4 f2 e4 c4. c8 f e d4 d r8 b8. c16 d8 a8 d c4	
	b8 e4 a8 gis4 \hide gis r e fis8 g e2 e4 r8 d e g g f g4 e r2 r4 a2 gis4 r f2 e8 e4 d8 e f g1 f8 e4 d8 e4	
	f4. e8 e d e f g a4 g4 \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g4 e d8 e8. e16 d8 cis4 d d8 d8. d16 c8 b c a16 b c d e8 e a,4 b2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Ohi -- me, che da quel pun -- to, ch'in -- fiam -- mar -- si 
	Vi -- di di -- ra~il tuo va -- go,~e di -- vin vol -- _ to
	Sen -- tì den -- tro~il mio cor
	Sen -- tì den -- tro~il mio cor to -- sto sgom -- brar -- si,
	Quan -- t'ha -- vea spe -- me~in tan -- ti me -- si~ac -- col -- to;
	E da l'al -- ma con -- fu -- sa di -- le -- guar -- si
	O -- gni pia -- ce -- re: on -- de~à me stes -- so vol -- to
	Dis -- si,
	Ahi per -- du -- ti mal gra -- di -- ti~af -- fan -- _ ni,
	Ahi per -- du -- ti mal gra -- di -- ti~af -- fan -- _ ni,
	Que -- st'è~l' -- ul -- ti -- mo dì
	Que -- st'è~l' -- ul -- ti -- mo dì dei miei __ _ _ _ _ dol -- ci~an -- ni.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 4/4
      r2 e'1
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r4 e2 d2 c4 d8 c b4 a2 r8 d4 c8 f4 e a,4. a8 d4 b c a8 d4 c e8 d2 g,8 g c4 b8 a4 d,8	
	e4 r8 g8 c4 b8 a4 d,8 e4 r r8 c'8. c16 c8 d a g4. g8 c4 a4. b8 c4 f,8 f4 e8 d c g'4 g8 g4 g8 g4 c8 d a4	
	d8 c4 a8 e4 e r8 e'8. d16 c8 b4 a r8 a a c c b c4 d r a b8 d d cis d4 a e'2 a, r r4 r8 d4 c8 c b
	
	c8 d e e, a8. g16 f4 e d' a8 c4 b8 c d e c d2 g,4 c4 b8 c8. c16 d8 a4 g fis8 g8. g16 a8 e e' e16 d c b
	
	a8 g f4 e2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Ohi -- me, che da quel pun -- to, ch'in -- fiam -- mar -- si
	Vi -- di d'i -- ra~il tuo va -- go,~e di -- vin vol -- to
	Sen -- tì den -- tro~il mio cor
	Sen -- tì den -- tro~il mio cor to -- sto sgom -- brar -- si,
	Quan -- t'ha -- vea spe -- _ _ me~in tan -- ti me -- si~ac -- col -- to;
	E da l'al -- ma con -- fu -- sa di -- le -- guar -- si
	O -- gni pia -- ce -- re: on -- de~à me stes -- so vol -- to
	"<on" -- de~a me stes -- so vol -- "to>"
	Dis -- si,
	Ahi per -- du -- ti mal gra -- di -- ti~af -- fan -- _ _ ni,
	Ahi per -- du -- ti mal gra -- di -- ti~af -- fan -- ni,
	Que -- st'è~l' -- ul -- ti -- mo dì
	Que -- st'è~l' -- ul -- ti -- mo dì dei miei __ _ _ _ _ dol -- ci~an -- ni.
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

