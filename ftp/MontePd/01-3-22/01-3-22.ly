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
	title = "22. Qual più scontento amante alberga in terra"
	subtitle= \markup{ "from " \italic "Il primo libro de madrigali a tre voci (1582)"}
	composer = "Philippe de Monte"
	date = "1582"
	style = "Renaissance"
	copyright = "Creative Commons Attribution 4.0"
	maintainer = "Aaron Dalton"
	maintainerWeb = "http://perlkonig.com/about/masters-thesis"
	mutopiacomposer = "MontePd"
	source = "http://www.bibliotecamusica.it/cmbm/scripts/gaspari/scheda.asp?id=7630"
	poet= "Vincenzo Quirino"
	copyright = \markup \column {
		\center-align {"Copyright © 2014 Aaron Dalton."}
		\center-align {"Licensed under the Creative Commons Attribution 4.0 International License."}
		\center-align {"http://perlkonig.com/about/masters-thesis"}
	}

 mutopiainstrument = "Voice"
 footer = "Mutopia-2014/01/26-1924"
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
	a4 e4. a8 b c d c16 b a8 b c4 c,4. b8 a4 d c b b a a'8. g16 a8 b c2 d4 c2 bes4 a2 g4	
	a8 c c8. b16 a8. g16 f8. e16 d8 d' c8. b16 a b c8. b16 a8 g4 a8 c b b a4 g2 r8 c b b a4 g c8 d e d16 c
	
	b8 a b4 a r r r8 a4 g8 c4 b8 a b4 r2 r4 a g8 c4 b a8 b4 r e,4. c8 d4 e8 g f e f e4 d8 e e'4 d c b
	
	a4 g f8 e d c b16 a b4 a8 f' e4 r8 gis a b c4 b2 a8 gis a b c4 b2 b4 c b2 a8 e f8. e16 d8 c d8. e16	
	f16 g a8. g16 f g a4 d,8 d' c8. b16 a8 g a2 d,8 d'4 c8 b16 a a4 \set suggestAccidentals = ##t gis8 \set suggestAccidentals = ##f a2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Qual più scon -- ten -- to~a -- man -- _ _ _ _ _ te~al -- _ _ ber -- ga~in ter -- ra
	
	Di me, ch'ad hor ad hor la mor -- te~in -- vo -- _ co.
	
	Qual con più cru -- da:~e dis -- pie -- ta -- ta guer -- _ _ _ _ _ _ _ ra
	
	Vin -- to si tro -- va, "<Vin" -- to si tro -- "va,>~et" po -- sto~in mag -- _ _ gior fo -- _ co?
	
	Qual ne l'em -- pia pri -- gion 
	Qual ne l'em -- pia pri -- gion 
	"<Qual" ne l'em -- pia pri -- "gion>" d'A -- mor si ser -- ra
	
	Con più ca -- te -- ne~in più ri  -- po -- sto lo -- _ _ _ co?
	
	Di me, che vo tra voi las -- so che vo tra voi las -- so pia -- gen -- do,
	
	Di te -- ma,~e di de -- si -- _ _ _ _ _ _ _ _ re 
	Di te -- ma,~e di de -- si -- re~il cor pa -- scen -- _ _ _ do.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r1 r2 e'2
    }
  >>
>>

	altusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major

	r2 r4 e4 b8 e fis g a8 g16 f e4. d8 c4 b a2 gis4 r8 cis d8. e16 f8 f e4 a, a'2 g4 f4. e8	
	d2 e8 e a8. g16 f8. e16 d8 c b4 e8 f16 g a f g8. f16 f4 e8 f c d e f4 e r8 d e f g8. d16 e8 f c16 d e f
	
	g2 gis8 a4 \set suggestAccidentals = ##t gis8 \set suggestAccidentals = ##f a e4 d8 f4 e8 d e2 r8 a,4 g8 c4 b8 a a' g f4 r1 c4. b8 a4 g8 f e b' c4. b8 a4 b2	
	r8 a'4 g f e8 d c4 b8 g a4 gis8 a d cis8. \hide cis16 d8 e f4 e2 d4 r r g2 fis4 gis a2 \set suggestAccidentals = ##t gis4 \set suggestAccidentals = ##f a2 r8 e8 f8. e16 d8 c
	
	d8. e16 f g a8. g32 f g8 a e f e d c f4. e16 d f8 e d8. c16 b4 a2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Qual più scon -- ten -- to~a -- man -- _ _ _ te~al ber -- ga~in ter -- ra
	Di me, ch'ad hor ad hor la mor -- te~in -- vo -- _ _ co.
	Qual con più cru -- da:~e dis -- pie -- ta -- ta guer -- _ _ _ _ _ _ _ ra 
	Vin -- to si tro -- va,
	"<Vin" -- to si tro -- "va,>~et" po -- sto~in -- mag -- _ _ _ _ gior fo -- _ co?
	Qual ne l'em pia pri -- gion "<Qual" ne l'em -- pia pri -- "gion>" d'A -- mor
	Qual ne l'em -- pia pri -- gion d'A -- mor si ser -- ra
	Con più ca -- te -- ne~in più ri -- po -- sto lo -- co?
	Di me, che vo tra voi las -- so
	las -- so pian -- gen -- _ do,
	Di te -- ma,~e di de -- si -- _ _ _ _ _ _ _ re Di te -- ma~e di de -- si _ _ _ re~il cor pa -- scen -- do.

}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 4/4
      r1 a2
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r2 a4 e8 a b c d8 c16 b a2 f g4 a e e r8 e' f8. e16 d8 d a4 f2 f'4 e d4. c8 bes2	
	a4 f f4. f8 g g a8. g16 f8 e a8. b16 c4 f, r2 r8 c' b b a4 g c8 d e4. b8 c8. d16 e2 a,8 c4 b8 a4 g8 f e4 r
	
	r2 e'4 d8 f4 e d8 e a, e' d8 c4 b r8 a4 g8 c4 b8 a b e, a4. g8 f4 e r f' e d c b8 a4 d,8 e f e4	
	f8 d a'4 r a2 g4. g8 d' e f4 e e dis e1 a,2 r2 r8 e'8 f8. e16 d8 c bes4 a r8 e'8 f8. e16 d8 c bes4 a d,8 d e4 a2\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Qual più scon -- ten -- to~a -- man -- _ _ _ te~al -- ber -- ga~in ter -- ra
	Di me, ch'ad hor ad hor la mor -- te~in vo -- _ _ co.
	Qual con più cru -- da:~e di -- spie -- ta -- ta guer -- _ _ ra
	Vin -- to si tro -- va,~e po -- sto~in mag -- gior fo -- _ _ co?
	Qual ne l'em -- pia pri -- gion
	Qual ne l'em -- pia pri -- gion d'A -- mor si ser -- ra
	Qual ne l'em -- pia pri -- gion d'A -- mor si ser -- ra
	Con più ca -- te -- ne~in più ri -- po -- sto  lo -- co?
	Di me, las -- so che vo tra voi las -- so pian -- gen -- do,
	Di te -- ma,~e di de -- si -- re
	"<Di" te -- ma,~e di de -- si -- "re>~il" cor pa -- scen -- do.
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

