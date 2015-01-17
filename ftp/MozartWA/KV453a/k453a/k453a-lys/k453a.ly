\version "2.18.2"
\header {
    title = "Marche Funebre"
    subtitle = "del Sigr. Maestro Contrapunto"
    composer = "Wolfgang Amadeus Mozart (1756-1791)"
    opus = "KV 453a"
        
    mutopiatitle = "Marche funebre KV 453a"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV 453a"
    mutopiainstrument = "Piano"
    date = "Wien, 1784"
    source = "Reproduction of Autograph"
    style = "Classical"
    license = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"

  moreInfo = "<p>Mozart wrote this little march into the music-book of his pupil Barbara Ployer in 1784.  The subtitle \"del Signor Maestro Contrap[p]unto\" (by Mr. Master Counterpoint) could be a humorous reference to Mozart himself, although no definitive evidence of this interpretation has been given.</p><p>It is interesting to note that the beginning rhythm (one quarter, one dotted eighteenth, one sixteenth, two quarters) is the same used in the main theme of piano concertos KV 451, KV 453, KV 456 and KV 459, all composed in 1784.  Considering that at least one of them (KV 453) was intended to be played by Barbara Ployer, it is tempting to consider this little Funeral March as a musical caricature of the concertos.</p><p>Maurizio Tomasi, May 2004</p>"

 footer = "Mutopia-2015/01/17-446"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

upper = \relative c' {
    \key c \minor
    \time 2/2
    \tempo "Lento"

    \repeat volta 2
    {
	<c es g c>4 <c es g>8. <c es g>16 <c es g>4 <d f g>
	| <c es g> << { es'8( d f es d c) } \\ { g fis as g f es } >>
	| <b' d g>4 <d, g>8. <d g>16 <es g>4 <c fis>
	| <b g'> << { d'8( es g f es d) } \\ { b c es d c b } >>
	| <c es>8 <g es'>4 <g es'> <as es'> <a es'>8
	| <bes d>8 <d as'>4 <es as> <e as> <f as>8
	| << { as8[( g]) } \\ bes,4 >> r8 <as f'> <as f'>( <g es'>) r <f d'>
	| <f as d>2( <g bes es>4) r
    }


    \repeat volta 2
    {
	<b d g>4 <b, d g>8. <b d g>16 <c es as>2
	| <b' d g>4 <d, f b>8. <d f b>16 <es g c>2
	| g4 << { g'4^(^\p fis <d f> <cis e> <c es> <b d>) }
		\\ { \voiceTwo g8._\p g16 g4 g8. g16 g4 fis8. fis16 g4 }
		\\ { \voiceThree es'2 \oneVoice } >> r4
	| <c g' c>4 <es, g c>8. <es g c>16 <es g c>4 <es g c>4
	| <des as' des> <f' des'>( <as f'> <d, b'>)
	| d'8( c) r <f, as> <f as>( <es g>) r <d, b'>
	| \slurUp <f g b d>2( ~ <es g c>4) r
    }
}

lower = \relative c, {
    \key c \minor
    \time 2/2

    \repeat volta 2
    {
	<c c'>4 <c c'> <es es'> <b b'>
	| <c c'> s4*3
	| <g g'>4 <b b'> <c c'> <as as'>
	| <g g'> s4*3
	| <c c'>4 <c c'> <ces ces'> <ces ces'>
	| <bes bes'> <c! c'!> <cis cis'> <d d'>
	| <es es'> as' bes bes,
	| es bes es, r
    }

    \repeat volta 2
    {
	<g, g'>4_\f r <g' g'> <g g'>8. <g g'>16
	| <g g'>4 r <g g'> <g g'>8. <g g'>16
	| <g g'>4 s4*3
	| s4*3 <f f'>8._\f <f f'>16
	| <es es'>4 <es es'>8. <es es'>16 <es es'>4 <es es'>
	| <f f'> r r \clef violin <f'' as>_\p
	| <es g> f g \clef bass g,
	| c g c, r
    }
}

dynamics =  {
  s1
  | s4 s2.-\p
  | s4-\f s2.
  | s4 s2.-\p
  | s4. s8-\markup { \italic "cresc." } s2
  | s8 s4.-\f s2
  | s4-\p s2.
  | s1

  | s4-\f s2.
  | s1*3
  | s4-\f s2.
  | s4 s4-\p s2
}

\paper {
  system-system-spacing.minimum-distance = #18
}

\score {
    \context PianoStaff <<
	\context Staff = "upper" \upper
	\context Dynamics = "dynamics" \dynamics
	\context Staff = "lower" {
	    \clef bass
	    \lower
	}
    >>
    \layout {
	\context {
	    \PianoStaff
	    \accepts Dynamics
	    \override StaffGrouper.staff-staff-spacing.minimum-distance = #13
	}
    }
    \midi {
	\context {
	    \type "Performer_group"
	    \name Dynamics
	    \consists "Dynamic_performer"
	}
	\context {
	    \PianoStaff
	    \accepts Dynamics
	}
    }
}
