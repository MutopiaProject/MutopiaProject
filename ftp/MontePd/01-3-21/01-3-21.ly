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
	title = "21. Ahi dove (lasso me) prieghi & parole"
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
 footer = "Mutopia-2014/01/26-1923"
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
      a'2
    }
  >>
>>

	cantusMusic =  \relative c'' {
	\clef treble
	\time 4/4
	\key c \major
	\tempo 4 = 60	
	a4 c4. b8 b4 a b8 b c4 g2 r4 r4 g2 a4. b8 c c b4 r r8 e d b c4 b a b8 e d b
	
	c8. b16 a8 g f4 e r8 b' c d e16 d c b a8. c16 b8 a gis4 \hide gis r8 a a a a a f4 e f e a gis8 a a a
	
	a8 a g4 e a4. c8 b4 a r4 r2 r8 d c8. b16 a8 g a c b4 a8 g4 \set suggestAccidentals = ##t fis8 \set suggestAccidentals = ##f g4 r d' a4. c8 b e, g8. f16 e8 d e4	
	fis8 \hide fis g8. g16 a8 b c4 b a8 g a4 b r2 r4 c2 b4 a g8 c4 b a8 g e a8. g16 f8 e f4 e8 a a a
	
	b4 g8 g g g a4. g8 c2 b4 g8 e a2 \set suggestAccidentals = ##t gis4 \set suggestAccidentals = ##f a1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."	
}

%\set suggestAccidentals = ##t
	cantusLyrics = \lyricmode{
	Ahi do -- ve las -- so me Ahi do -- ve
	"<Ahi" do -- "ve>" las -- so me
	prie -- ghi~e pa -- ro -- le
	spen -- d'io, se non fra
	
	quer -- cie,~on -- ta -- ni,~e fag -- gi
	se non fra quer -- _ _ _ _ cie,~on -- ta -- ni,~e fag -- gi
	se non tra sel -- ve~om bro -- se~os -- cu -- re,~e so -- le;
	se non tra sel -- ve~om -- bro -- se~os -- cu -- re,~e so -- le;
	
	Do -- ve s'al -- cun pur v'è, son Dei sel -- vag -- _ gi?
	Voi a -- vre~al -- men; ch'i gi -- gli,~e le vio -- _ le
	De -- stan -- do; tem -- pe -- ra -- te~ai so -- lar -- rag -- gi:
	Deh fa -- te~ud -- ir Deh fa -- te~ud -- ir ch'io re -- sta -- ro con -- ten -- to
	A la mia Don -- na "<A" la mia Don -- "na>~il" gra -- ve mio la -- men -- _ to.
}


	altusIncipit = <<
  \new MensuralVoice = altusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c3"
      \key c \major
      \time 4/4
      r\breve d'4
    }
  >>
>>

	altusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major

	r1 d8 a'4 g8 f f e4 r r8 d f e e d e2 r8 e4 a g8 f f e e fis gis a4 g? fis g8 e
	
	f8 g a8. g16 f8 e4 d8 e2 r8 a g e f8. e16 d8 c b2 a4 r8 d d d d d c4 a8 c8. d16 e4 d8 e4 a,8 a f' f e c
	
	g'4 fis8 \hide fis8. g16 a4 \set suggestAccidentals = ##t gis8 \set suggestAccidentals = ##f a2 r8 d, c8. b16 a8 g a16 b c d e4. a,8 e'8. d16 c8 b a4 g r8 g'4 d f8 e e g8. f16 e8 d
	
	cis8 d4 \set suggestAccidentals = ##t cis8 \set suggestAccidentals = ##f d d e8. d16 e4. f8 d g fis g4 fis8 g4 r g2 f4 e d r e d c b8 c4 a8. a16 a8 a d4 cis8 r d
	
	d8 d e4 c8 g'4 f8 e2. d4 c4. b16 a b2 a1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	altusLyrics = \lyricmode{
	Ahi do -- ve las -- so me
	Ahi do -- ve las -- so me
	"<Ahi" do -- ve las -- so "me>" prie -- ghi~e pa ro -- le spen -- d'io, se
	non fra quer -- cie,~on ta -- ni,~e fag -- gi
	se non fra quer -- cie,~on -- ta -- ni,~e fag -- gi
	Se non tra sel -- ve~om -- bro -- se~o -- scu -- _ _ re,~e so -- le; se non tra sel -- ve~om bro -- se~o -- scu -- re,~e so -- _ le;
	Do -- ve s'al -- cun pur v'è, __ _ _ _ _ son De -- _ i sel -- vag -- gi?
	Voi a -- vre~al -- men; ch'i gi -- gli,~e le vio -- _ _ _ le
	De -- stan -- do; tem -- pe -- ra -- te~ai so -- lar -- rag -- gi:
	Deh fa -- te~ud -- ir
	Deh fa -- te~ud -- ir ch'io re -- sta -- ro con -- ten -- to
	A la mia Don -- na~il gra -- ve mio la -- men -- _ _ _ to.
}


	bassusIncipit = <<
  \new MensuralVoice = bassusIncipit <<
    \repeat unfold 9 { s1 \noBreak }
    {
	  \override Rest #'style = #'neomensural
      \clef "neomensural-c4"
      \key c \major
      \time 4/4
      r2 a2
    }
  >>
>>

	bassusMusic = \relative c' {
	\clef "treble_8"
	\time 4/4
	\key c \major
	
	r4 a e'4. d8 f f e4 r8 a,8 c4. b8 b4 a b c2 d8 e a,4 e' r c d8 e a,4 e8 g d4 r r2	
	r8 g a b c8. b16 a8 g f4 e8 a d,8. e16 g8 a e4 e r1 r8 a8 a a a a f4 e8 c'8. d16 e4 d8 e4 c d4. a8 e'4	
	a,8 d c8. b16 a8 g a16 b c d e8 b e8. d16 c8 b a4 g8 e f g d4 g2 r4 r8 d' c a e' c c g a bes a4	
	d,8 d' c8. b16 a8 g a4 g d'8 e d4 g, c2 b4 a g2 r4 c g a e8 a f8. e16 d8 cis d4 a' r r8 g c c
	
	e4 d c2 g e4 f e2 a1\fermata
	
	\override Staff.BarLine #'transparent = ##f
	\bar "|."
}

%\set suggestAccidentals = ##t

	bassusLyrics = \lyricmode{
	Ahi do -- ve las -- so me
	Ahi do -- ve las -- so me prie -- ghi~e pa -- ro -- le
	prie -- ghi~e pa -- ro -- le spen -- d'io,
	se non fra quer -- cie,~on -- ta -- ni,~e fag -- gi fra quer -- cie,~on -- ta -- ni,~e fag -- gi
	se non tra sel -- ve~om -- bro -- se~o -- scu -- re,~e so -- _ le; o -- scu -- re,~e so -- le;
	Do -- ve s'al -- cun pur v'è, __ _ _ _ _ son De -- _ i sel -- vag -- gi son Dei sel -- vag -- gi?
	Voi a -- vre~al -- men; ch'i gi -- gli,~e le vio -- _ le
	De -- stan -- do; tem -- pe -- ra -- te~ai so -- lar -- rag -- gi:
	Deh fa -- te~u -- dir
	Deh fa -- te~u -- dir ch'io re -- sta -- ro con -- ten -- to
	A la mia Don -- na~il gra -- ve mio la -- men -- to.
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


