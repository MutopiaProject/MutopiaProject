%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

\version "2.18.2"

%#(set-default-paper-size "letter")

%--Default staff size is 20
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #12       %-pads music from copyright block
%    ragged-bottom = ##f
%    ragged-last-bottom = ##f
}

\header {
    title = "Old French Song"
    composer = "Peter Ilyich Tchaikovsky (1840 - 1893) "
    opus = "Op. 39, No. 16"
    %piece = "Left-aligned header"

    date = "1878"
    style = "Classical"

    maintainer = "David McNamara"
    maintainerEmail = ""
    license = "Public Domain"

    %mutopiatitle = ""  % default to plain title
    %mutopiaopus = "Op.0" % default to plain opus 
    mutopiacomposer = "TchaikovskyPI"
    %--A list of instruments can be found at http://www.mutopiaproject.org/browse.html#byInstrument
    %--Multiple instruments are separated by a comma
    mutopiainstrument = "Piano"
    source = "Schirmer, 1904"

    % Footer, tagline, and copyright blocks are included here for reference
    % and spacing purposes only.  There's no need to change these.
    % These blocks will be overridden by Mutopia during the publishing process.
 footer = "Mutopia-2015/11/27-2080"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
global = {
  \key g \minor
  \time 2/4 
  \tempo "Moderato assai."
}



% overallForm="AABA"

melodyAHead =  \relative c' {
    \oneVoice
    d8(   |
    g8[ a bes c]     |  %1
    d4.) d8(         |
    c8[ d ees c]     |
    d4.) d8(         |

    c8[ d ees c]      |
    d ees16 d c8 bes  |
    \voiceOne
    a4.. g16          |
 }
melodyB = \relative c'' {
  g4( g8 a            |
  bes4.) bes8(        |
  c4) c4(             |
  a4.) a8(            |
    
  d4. d8              |
  ees8 f16 ees16 d8 c |
  bes4 a8 g8          |
  <a fis>4.)  
}

overallMelody= {
  \partial 8 
  \melodyAHead 
  g'4.)   % absolute pitch
  \melodyAHead
  g'2 ) |   % absolute pitch
  \melodyB
  << { \melodyAHead g'2) } %absolute pitch 
     \\
     { s8 s2*6 ees'4 d' bes2 } >>
  \bar "|."
 
} 
overallDynamics = {
  \partial 8 s8\p |

  s2        |     %1
  s2        |
  s2        |
  s2        |

  s2        |
  s2        |
  s2        |
  s4. s8\pp |

  s2        |     %9
  s2        |
  s2        |              
  s2        |

  s2        |
  s2        |
  s2        |
  s2        |
 
  s4\p s4   |     %17
  s2        |
  s2        |
  s2\<      |

  s4. s8\!
  s2\mf     |
  s4 s4\>   |
  s4. s8\p  |
  
  s2    |             %25
  s2    |
  s2    |             
  s2    |

  s2    |
  s2    |
  s2    |
  s2    |
}

middleA = { % repeated part of the  A section, middle-voice 
  \relative c' {
    bes8[( c d c] |
    bes2)         |
      
    ees4( c       |
    bes4) g\(     |
      
    ees'4 c       |
    bes4  g\)     |
  }
}
overallMiddle={ 
  \voiceThree
  \partial 8 s8 |
  %  repeat A part twice
  \repeat unfold 2 {
    \middleA
    c'2\espressivo    |
  }
  \alternative{
    {bes4 s  |  }
    {bes2    |  }
  }
  \oneVoice
  % B-part 
  c8\staccato[ g\staccato c'\staccato ees'\staccato] 
  g,8\staccato[ g\staccato c'\staccato ees'\staccato] 
  c8\staccato[ g\staccato c'\staccato ees'\staccato] 
  d8\staccato[ a\staccato c'\staccato fis'\staccato] 

  <g bes>8(  d'8 g'8 ) r8  |
  <c' ees' g'>2_(          |
  <d' g'>4) r4             |
  d'4 ( d4) 

  \voiceThree
  % revisit A part
  \middleA
  g4\espressivo fis |
  d2 |
}

% same bass line is used for the A sections
bassA = {
  \repeat unfold 2 {
    g2 ~    |
    g4 g4 ~ |
  }
  g2 ~      |
  g4 g4     |
}

overallBass = {
  \voiceFour
  \partial 8 s8 |
  % begin with AA
  \repeat unfold 2 {
    \bassA
    fis4 d
  }
  \alternative{
    {g4 \once\stemUp g,4-. | }
    {g2 | }
  }

  % B part: staccato notes could be here, but for now, I consider them in the "middle" voice 
  s2
  s2
  s2
  s2

  s2
  s2
  s2
  s2

  \bassA
  c4( d4 |
  g,2)
}

lowerStaff = <<
  \new Voice = "middle" { \overallMiddle }
  \new Voice = "bass" {\overallBass}
>>

%-------Typeset music and generate midi
\score {
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \overallMelody }
        \new Dynamics { \overallDynamics}
        \new Staff = "lower" { \clef bass \global \lowerStaff }
    >>
    \layout{ }
    \midi  { \tempo 4 = 70 }
}
