%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

\version "2.18.0"

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

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

%---------------------------------------------------------------------
%--Refer to http://www.mutopiaproject.org/contribute.html
%--FOR:q usage and possible values for header variables.
%---------------------------------------------------------------------
\header {
    title = "Old French Song"
    composer = "Peter Ilyich Tchaikovsky (1840 - 1893) "
    opus = "Op. 39, No. 16"
    %piece = "Left-aligned header"
    date = "1741"
    style = "Baroque"
    source = "Bach-Gesellschaft Edition 1853 Band 3"

    maintainer = ""
    maintainerEmail = ""
    license = "Public Domaon"

    %mutopiatitle = ""  % default to plain title
    %mutopiaopus = "Op.0" % default to plain opus 
    mutopiacomposer = "TchaikovskyP"
    %--A list of instruments can be found at http://www.mutopiaproject.org/browse.html#byInstrument
    %--Multiple instruments are separated by a comma
    mutopiainstrument = "Piano"
    source = "A. Drozdov, 1948"

    % Footer, tagline, and copyright blocks are included here for reference
    % and spacing purposes only.  There's no need to change these.
    % These blocks will be overridden by Mutopia during the publishing process.
    footer = "Mutopia-2001/01/01-0"
    copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
    tagline = ##f
}

%--------Definitions
global = {
  \key g \minor
  \time 2/4 
  \tempo "Andante e mesto"
}



% overallForm="AABA"

melodyAHead =  \relative c' {
    d8(   |
    g8 a bes c       |  %1
    d4.) d8(         |
    c8 d ees c       |
    d4.) d8(         |

    c8 d ees c        |
    d ees16 d c8 bes  |
    a4.. g16          |
 }
melodyB = \relative c'' {
  g4( g8 a            |
  bes4.) bes8(        |
  c4 c4               |
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
  \melodyAHead 
  g'4.) s8 %absolute pitch
 
} 
overallDynamics = {
  \partial 8 s8\p |

  s2\<   |            %1
  s4\dim s4\! |
  s2\<          |
  s4\dim s4\! |

  s2\< |
  s2  |
  s2\>  |
  s4 s8\! s8-"rinf." |

  s2\< |              %9
  s4\dim s4\! |
  s2\< |              
  s4\dim s4\! |

  s2\< |
  s8\! s8 s4\> |
  s2 |
  s2 |
 
  s4\p s4 |           %17
  s2 |
  s2 |
  s4. s8\< |

  s4. s8\!
  s4.\mf s8\> |
  s2 |
  s4. s8\p |
  
  s2\< |             %25
  s4\dim s4\! |
  s2\< |             
  s4\dim s4\! |

  s2\< |
  s4\! s8^"poco" s8\> |
  s2^"rit." |
  s8 s8\! s8 s8  |
}

middleA = { % repeated part of the  A section, middle-voice 
  \relative c' {
    bes8 c d c |
    bes2       |
      
    ees4 c     |
    bes4 g     |
      
    ees'4 c    |
    bes4  g    |
  }
}
overallMiddle={ 
  \voiceThree
  \partial 8 s8 |
  %  repeat A part twice
  \repeat unfold 2 {
    \middleA
    c'2       |
  }
  \alternative{
    {bes4 s  |   }
    {bes2       |  }
  }
  \oneVoice
  % B-part 
  c8\staccato g\staccato c'\staccato ees'\staccato 
  g,8\staccato g\staccato c'\staccato ees'\staccato 
  c8\staccato g\staccato c'\staccato ees'\staccato 
  d8\staccato a\staccato c'\staccato fis'\staccato 

  <g bes>8(  d'8 g'8 ) r8  |
  <c' ees' g'>2   |
  <d' f'>4 r4   |
  d'4 ( d8) r8

  \voiceThree
  % revisit A part
  \middleA
  g4 fis |
  d4. s8 |
}

% same bass line is used for the A sections
bassA = {
  \repeat unfold 2 {
    g2 ~ |
    g4 g4 ~ |
  }
  g2 ~ |
  g4 g4 |
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
    {g4 g,4 | }
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
  c4 d4 |
  g,4. s8
}



lowerStaff = <<
  \new Voice = "middle" { \overallMiddle }
  \new Voice = "bass" {\overallBass}
>>

%-------Typeset music and generate midi
\score {
    \context PianoStaff <<
        %-Midi instrument values at 
        % http://lilypond.org/doc/v2.18/Documentation/snippets/midi#midi-demo-midiinstruments
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \overallMelody}
        \new Dynamics { \overallDynamics}
        \new Staff = "lower" { \clef bass \global \lowerStaff }
    >>
    \layout{ }
    \midi  { \tempo 4 = 70 }
}
