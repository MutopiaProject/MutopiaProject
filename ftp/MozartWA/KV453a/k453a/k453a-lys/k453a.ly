\version "2.2.1"
\header {
    title = "Marche funebre KV 453a"
    subtitle = "del Sigr. Maestro Contrapunto"
    composer = "Wolfgang Amadeus Mozart (1756-1791)"
        
    mutopiatitle = "Marche funebre KV 453a"
    mutopiacomposer = "MozartWA"
    mutopiaopus = "KV 453a"
    mutopiainstrument = "Piano"
    date = "Wien, 1784"
    source = "Reproduction of Autograph"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Maurizio Tomasi"
    maintainerEmail = "zio_tom78@hotmail.com"
    maintainerWeb = "http://www.geocities.com/zio_tom78/"
    lastupdated = "2004/May/17"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2004/05/17-446"
}

upper = \notes\relative c' {
    \key c \minor
    \time 2/2

    \repeat volta 2
    {
	<c es g c>4^\markup { \bold \large \translate #'(-8 . 6) "Lento" } 
	<c es g>8. <c es g>16 <c es g>4 <d f g>
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

lower = \notes\relative c, {
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

dynamics = \notes {
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

\score {
    \context PianoStaff <<
	\context Staff=upper \upper
	\context Dynamics=dynamics \dynamics
	\context Staff=lower <<
	    \clef bass
	    \lower
	>>
    >>
    \paper {
	\context {
	    \type "Engraver_group_engraver"
	    \name Dynamics
	    \alias Voice % So that \cresc works, for example.
	    \consists "Output_property_engraver"
	    
	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"

	    \override TextScript #'font-size = #2
	    \override TextScript #'font-shape = #'italic
	    \override DynamicText #'extra-offset = #'(0 . 2.5)
	    \override Hairpin #'extra-offset = #'(0 . 2.5)

	    \consists "Skip_event_swallow_translator"

	    \consistsend "Axis_group_engraver"
	}
	\context {
	    \PianoStaffContext
	    \accepts Dynamics
	    \override VerticalAlignment #'forced-distance = #7
	}
    }
    \midi {
	\context {
	    \type "Performer_group_performer"
	    \name Dynamics
	    \consists "Span_dynamic_performer"
	    \consists "Dynamic_performer"
	}
	\context {
	    \PianoStaffContext
	    \accepts Dynamics
	}
    }
}
