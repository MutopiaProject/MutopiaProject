%% Chopin, op-28-2 first shot.
%% Based on the piano-staff layout from "The Néréides" example.
%% There may be some things which I do not know why are here ...
%% especially in the score section.


%% #(ly:set-option 'old-relative)
\version "2.4.0"
\encoding "latin1"
\header {
    composer = "Chopin"
    title = "Prélude"
    subtitle = "No 2."
    enteredby = "Donald Axel"
    piece = ""
    copyright = "Public domain"


  % mutopia headers.
  mutopiatitle = "Prelude op 28.2"
  mutopiacomposer = "Chopin, Frederic"
  mutopiaopus = "28.2"
  mutopiainstrument = "Piano"
  date = "ca. 1837"
  source = "Edition Peters"
  style = "Classical"
  
  maintainer = "Donald Axel"
  maintainerEmail = "dax2@tele2adsl.dk"
  lastupdated =  "2004/Nov/12"

  footer = "Mutopia-2004/11/12-494"
  tagline = "\\raisebox{10mm}{\\parbox{188mm}{\\thefooter\\quad\\small\\noindent " + \footer + " \\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[188mm][c]{It has been typeset by " + \maintainer + ". Copyright \\copyright \\ The Mutopia Project \\& "+ \maintainer + " 2004.} \\makebox[188mm][c]{\\footnotesize This work is licensed under the Creative Commons Attribution-ShareAlike License, with the additional permission that attribution is not} \\makebox[188mm][c]{\\footnotesize required in an audio derivative of this work. To view a copy of that license visit \\texttt{http://creativecommons.org/licenses/by-sa/1.0/} } \\makebox[188mm][c]{\\footnotesize or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.}}}"
}


#(ly:set-point-and-click 'line-column)
#(define (make-text-checker text)
  (lambda (elt) (equal? text (ly:get-grob-property elt 'text))))


% explicit staff change (yet not used here)
staffOne = { \change Staff = treble}
staffTwo = { \change Staff = bass}




treble = \new Voice {
    \key a \minor
    
    %% bar 1-2
    s4 ^\markup { \large { "Lento" }} s4*3   |
    s1
    
    %% bar 3
    e'2..(                       b8 |
    
    %% bar 4
    d'1)
    
    %% bar 5
    \slurUp
    d'4.\(      \acciaccatura fis'16 
                 e'8   d'4.      a8 |
    
    %% bar 6 - 7
    b4      b8. b16     b2~         |  b2\)             r2      |

    %% bar 8 - 9
    r2                  b'4.( fis'8 |  a'1)

    %% bar 10
    \slurUp
    a'4.\(    \acciaccatura cis''16 
                 b'8   a'4.     e'8 | 
    %% bar 11
    fis'4    fis'8. fis'16 fis'2~   | fis'1\)

    %% bar 12
    r1

    %% bar 13
    \phrasingSlurUp
    r4       a'2.~\(                |

    %% bar 14
    a'2..                       e'8 |

    %% bar 15
    f'1->\)                         |
    
    %% bar 16
    f'4.\(     \acciaccatura a'16
               g'8     f'4.     c'8 |
    %% bar 17
    d'4     d'8. d'16  d'2~\)       |

    %% bar 18
    d'2                r2           |

    %% bar 19
    d'4.\(  \acciaccatura f'16  e'8   d'4.    << {\stemUp \tieDown a8~   
    %% bar 20
    \stemDown a2} \\   { s8 \stemUp b4   b8. b16} >>

    \clef bass \stemUp
    <e gis b>4    <dis fis b>4      |

    %% bar 21 - 23, many subtle problems.
    <e gis b>2\)     
    << { 
     \stemDown <d e gis>2 
    } 
    \\ 
    {\stemUp 
     \phrasingSlurUp
     \set PianoStaff.connectArpeggios = ##t
      b4.\(  c'8  <c e a>1\arpeggio \)
     }  >>

    %% bar 23
    %% <c e a>1\)
    
    \bar "||"
}

trebleTwo = \new Voice {
    \stemDown
    \slurDown
}

bass = \new Voice {
    \key a \minor
    
    \override Score.SeparationItem #'padding = #0.4
    \slurDown
    \dynamicUp
    \stemDown
    %% bar 1  %% remove sustainDown, only to be used much later
    \override Voice.Stem #'beamed-lengths = #'(4.0 4.0 4.0)
    e,8\p\sustainDown g    e,     g
    e,                g    e,     g
    %% bar 2
    e,8               g    e,     g
    e,                g    e,     g
    %% bar 3
    \revert Staff.AccidentalPlacement #'right-padding 
    <e, b,>\(        <g ais,>    <e, b,>     <g g,>
    <e, b,>          <g ais,>    <e, b,>     <g g,>
    %% bar 4
    <d, b,>          <g ais,>    <d, b,>     <g g,>
    <d, b,>          <g ais,>    <d, b,>     <g g,>\)
    %% bar 5
    <d, a,>\(      <g! gis,>     <d, a,>     <g g,>
    <d, a,>        <fis gis,!>   <d, a,>     <fis fis,>
    %% bar 6
    <g,, g,>       <e g>         <g, d>      <es g>
    <g, d>         <e g>         <g, d>      <es g>
    %% bar 7
    <g, d>         <e g>         <g, d>      <es g>
    <g, d>         <e g>         <g, d>      <e  g>\)

    %% bar 8
    <b, fis>\(     <d' eis>      <b  fis>    <d'  d>
    <b, fis>       <d' eis>      <b  fis>    <d'  d>
    %% bar 9
    <a, fis>       <d' eis>      <a, fis>    <d'  d>
    <a, fis>       <d' eis>      <a, fis>    <d'  d>\)
    %% bar 10
    <a, e>\(       <d' dis>      <a, e>      <d'  d>
    <a, e>         <cis' dis>    <a, e>      <cis' cis>
    %% bar 11
    <a, dis>       <cis' cisis>  <a, dis>    <cis' cis>
    <a, dis>       <cis' cisis>  <a, dis>    <cis' cis>
    %% bar 12
    <a, dis>       <cis' cisis>  <a, dis>    <cis' cis>
    <a, dis>       <c'   cisis>  <a, dis>    <c'   c  >\)
    %% bar 13
    <fis, dis>\(   <a   cisis>   <fis, dis>  <a    c  >
    <fis, dis>     <a   cisis>   <fis, dis>  <a    c  >

    | %% bar 14
    <fis, dis>     <a   cisis>   <fis, dis>  <a    c  >
    <f,   dis>     <a   cisis>   <f,   dis>  <a    c  >\)
    | %% bar 15
    <e,   c!>\(    <a   b,>      <e,   c>    <a    a,>
    <e,   c>       <a   b,>      <e,   c>    <a    a,>
    | %% bar 16
    <e,   c>       <a   b,>      <e,   c>    <a    a,>
    <e,   c>       <a   b,>      <e,   c>    <a    a,>\)
    | %% bar 17
    r1
    | %% bar 18
    r2 
    <e,   c>8\(    <f   b,>      <e,   c>    <f    a,>

    | %% bar 19
    <e,   c>       <f   b,>      <e,   c>    <f    a,>\)
    r2
    | %% bar 20
    r1

    | %% bar 21
    r2
    e,4   <b,, b,>  
    
    | %% bar 22
    <e, b,>2    <e,, e,>2
    <a,, a,>1\arpeggio 
}

bassTwo = \new Voice {
    \stemUp
    \slurUp
    %% stem length must be increased so as to go free from lower
    \override Voice.Stem #'beamed-lengths = #'(5.0 5.0 5.0)
    %% sharp before a must be adjusted to the left to clear stems
    %% from the other bass voice
    \override Staff.AccidentalPlacement #'right-padding = #'1.0
    %% bar 1
    b,8(          ais,     b,     g,
    b,8           ais,     b,     g,
    %% bar 2
    b,8           ais,     b,     g,
    b,8           ais,     b,     g,)
}

middleDynamics = {
    %% dax: outcommented the line below (from Nereides)
    %% \override Dynamics.TextScript  #'padding = #-1 %tweak
    %% TODO: If possible raise dynamics clear of phrasing slurs
    %% The padding above did not change this.
    s1*12
    %% bar 13 
    s2
    \set decrescendoText = \markup { \italic "dimin" }
    \set decrescendoSpanner = #'dashed-line
    s2 \>
    s1  s1  s1\!
    s1^\markup { "slentando" }
    s1*3
    %% bar 21
    s2
    s2^\markup { "sostenuto" }
    %% bar 22
    s1
    s1
}

theScore = \score{
    \context PianoStaff <<
        \context Staff = "treble" <<
            \clef treble
	    \treble
	    \trebleTwo
        >>
	\new Dynamics <<
	    \middleDynamics
	>>
        \context Staff = "bass" <<
	    \clef bass
	    \bass
	    \bassTwo
        >>
    >>
    \layout {
	\context {
	    \Score
	    pedalSustainStrings = #'("Ped." "*Ped." "*")
	    %% \remove Bar_number_engraver
        }
	\context {
	    \type "Engraver_group_engraver"
	    \name Dynamics
	    \consists "Output_property_engraver"
	    minimumVerticalExtent = #'(-1 . 1)

	    \consists "Script_engraver"
	    \consists "Dynamic_engraver"
	    \consists "Text_engraver"

	    \override TextScript #'font-size = #2
	    \override TextScript #'font-shape = #'italic

	    \consists "Skip_event_swallow_translator"

	    \consists "Axis_group_engraver"
    	}

	\context {
	    \PianoStaff
	    \accepts Dynamics
	    \override VerticalAlignment #'forced-distance = #7
        }
    }
    
    \midi { \tempo 4 = 72 }
}
			   
\book{
    \score { \theScore }
}

%%% Local variables:
%%% LilyPond-indent-level:4
%%% End:

