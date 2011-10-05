\version "2.14.0"

\header {
	enteredby = 	"Magnus Lewis-Smith"
	maintainer = 	"Magnus Lewis-Smith"
	maintainerEmail = 	"mlewissmith (at) users.sourceforge.net"
	copyright = 	"Public Domain"
	filename = 	"chopin.prelude.op28.no20.ly"
	title = 	"Prelude"
	subtitle = "'Funeral March'"
	opus = 	"Op. 28, No. 20"
	composer =	"Frederic Chopin (1810-1849)"
	style =	"Classical"
	source =	"Edition Peters"
	lastupdated =	"20 Sep 2004" 

	mutopiainstrument = "Piano"
	mutopiatitle =      "Prelude: Op. 28, No. 20"
	mutopiacomposer =   "ChopinFF"
	mutopiaopus =       "Op. 28"
	mutopiastyle =      "Romantic"
	mutopiadate =       "1838/39"
 
 footer = "Mutopia-2011/06/19-472"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


                                %                "PRELUDE Op28 No20"
                                %                  Frederic Chopin
                                %
                                %    Please see "header.ly" for more information

\include "english.ly"

\paper {
  %{ comment out for mutopiaproject }
  %#(set-paper-size "letter") 
  %bottom-margin = 13
  %annotate-spacing = ##t
  %indent = #0
  %ragged-right = ##t
  %{ %}
  page-count = 1
  #(layout-set-staff-size 20)
  between-system-space = 5
  between-system-padding = 1
  ragged-bottom = ##t
  ragged-last-bottom = ##f
}
\pointAndClickOff


shortStem = \once \override Stem #'length-fraction = #(magstep -4)

barRest =  { s1 }


playRH =  \relative g {
    \clef bass
    \key c \minor
    \time 4/4
    \tempo 4 = 42
    \set Score.tempoHideNote = ##t
                               % 1 - 4
    \once\override PhrasingSlur #'height-limit = #5
    \once\override TextScript #'extra-offset = #'( -4 . 1.5 )
    <g c ef g>4\(^\markup{\bold\large Largo} <af c ef af> << { \shortStem <ef' g>8. \shortStem <d f>16 } \\
                                                             { <g, b>4           } >> <ef g c ef>\) |
    \once\override PhrasingSlur #'height-limit = #5
    <ef af c ef>4\( <f af df f> << { \shortStem <c' ef>8. \shortStem <bf df>16 } \\
                                   { <df, ef g>4         } >> <c ef af c>4\) |
    \once\override PhrasingSlur #'height-limit = #4
   % \once\override PhrasingSlur #'attachment = #'(head . stem)
    <d f b d>4\( <e g bf c e> << { \shortStem g'8. \shortStem f16 } \\
                                  { <af, c>4 } >> <g c ef>4  |
    <fs c' d>4 <g b d g>
    \clef treble
    << { b'8. a16   } \\
       { <c, d fs>4 } >> <b d g>4\) |

                                % 5 - 8
    <ef g ef'>4\( <ef af ef'> << { <d d'>4    } \\
                               \once\override NoteColumn  #'force-hshift = #1.5
                               { af'8. fs16 } >> <d g d'>4 |
    <c g' c>4 <c d fs d'> <d g b>8. <c a'>16 <b d g>4 |
    <c g' c>4 <af c af'> << { \stemDown <g d'>4 } \\
                            { \stemUp g'8. f16  } >> <g, c ef>4^\markup{\italic riten.} |
    \clef bass
    <ef af c ef>4 <f af df f> << { \shortStem ef'8. \shortStem d16 } \\
                                 { <f, g b>4 } >> <ef g c>4\) |

                                % 9 - 12
    \clef treble
    \once\override TextScript #'extra-offset = #'(0 . 0.5)
    <ef' g ef'>4^\markup{\italic "a tempo"}\( <ef af ef'> << { <d d'>4    } \\
                                \once \override NoteColumn  #'force-hshift = #1.5
                                { af'8. fs16 } >> <d g d'>4 |
    <c g' c>4 <c d fs d'> <d g b>8. <c a'>16 <b d g>4 |
    <c g' c>4 <af c af'> << { \stemDown <g d'>4^\markup{\italic riten.} } \\
                            { \stemUp g'8. f16  } >> <g, c ef>4 |
    \clef bass
    <ef af c ef>4 <f af df f> << { \shortStem ef'8. \shortStem d16 } \\
                                 { <f, g b>4 } >> <ef g c>4\) |

                                %13
    \clef treble
    <c' ef g c>1->\fermata
}

playDyn =  {
                                % 1 - 4
    s4\ff s s s |
    \barRest |
    s4\< s s s |
    s4 s s\! s |
                                % 5 - 8
    s4\p s s s |
    \barRest |
    \barRest |
    \barRest |
                                % 9 - 12
    s4\pp s s s |
    \barRest |
    \crescTextCresc
    \override DynamicLineSpanner #'staff-padding = #5
    s4 s s\< s |
    s s s s\! |

                                % 13
    \barRest |
}

playLH =  \relative c, {
    \clef bass
    \key c \minor
    \time 4/4
                                % 1
    <c c'>4\sustainOn
    <f, f'>\sustainOff\sustainOn
    <g g'>\sustainOff\sustainOn
    <c g' c>\sustainOff\sustainOn  |
                                % 2
    <af af'>\sustainOff\sustainOn
    \override TextScript #'extra-offset = #'(0.5 . -0.5)
    <df df,>\sustainOff_\markup{\italic simile}
    \revert TextScript #'extra-offset
    <ef ef,>
    <af af,> |
                                % 3 - 4
    <g g,> <c, c,> <f f,> <c' c,> |
    <d, a' d> <g, g'> <d d'> <g g'> |

                                % 5 - 8
    <c c'>\( <c' c'> <b b'> <bf bf'>  |
    <a a'> <af af'> <g g'> <f f'>  |
    <ef ef'> <f f'> <b, b'> <c c'>  |
    <af af'> <df, df'> <g g'> <c, c'>\)  |

                                % 9 - 12
    <c' c'>\( <c' c'> <b b'> <bf bf'>  |
    <a a'> <af af'> <g g'> <f f'>  |
    <ef ef'> <f f'> <b, b'> <c c'>  |
    \override Staff.PianoPedalBracket #'shorten-pair = #'(0 . -5.0)
    <af af'> <df, df'> <g g'> <c, c'>\)\sustainOn  |

                                % 13
    <c'' g'>1->\sustainOff\fermata
}



scoreAll =  {
    \new PianoStaff {
    	%JRA-commented line below
        % \override PianoStaff.VerticalAlignment #'forced-distance = #13   % gap between staves -- default 12
        %JRA-
        \set PianoStaff.midiInstrument = "acoustic grand"
        %% #(set-accidental-style 'piano)
        <<
            \context Staff = "rh" {
                %% \override Staff.TextScript #'staff-padding = #2
                \override Staff.DynamicLineSpanner #'staff-padding = #3.5  % (forced-distance - 6) / 2
                %% \override Staff.Hairpin #'minimum-length = #3
                <<
                    \playRH
                    \playDyn
                >>
                \bar "|."
            }
            \context Staff = "lh" {
                \set Staff.pedalSustainStyle = #'bracket
                %% \override Staff.PianoPedalBracket  #'shorten-pair = #'(0 . -1.0)
                \playLH
                \bar "|."
            }
        >>
    }
}


\score
{
    
    {
        \scoreAll
    }
    \layout {}
    \midi {
        %% Remove the dynamics from the midi output
        \context {
            \Voice
            \remove "Dynamic_performer"
            %\remove "Span_dynamic_performer"
        }
    }
}




