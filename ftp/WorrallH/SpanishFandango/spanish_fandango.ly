%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

\version "2.18.2"

%---------------------------------------------------------------------
%--Paper-size setting must be commented out or deleted upon submission.
%--LilyPond engraves to paper size A4 by default.
%--Uncomment the setting below to validate your typesetting
%--in "letter" sizing.
%--Mutopia publishes both A4 and letter-sized versions.
%---------------------------------------------------------------------
% #(set-default-paper-size "letter")

%--Default staff size is 20
#(set-global-staff-size 28)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #20      %-dist. from header/title to first system
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
    title = "Spanish Fandango"
    composer = "Henry Worrall"
    opus = ""
    %piece = "Left-aligned header"
    date = ""
    style = ""
    source = "J. Church & Co. version, 1882"

    maintainer = "David McNamara"
    maintainerEmail = "mapadofu@github"
    license = "Public Domain"

    %mutopiatitle = ""  % default to plain title
    %mutopiaopus = "Op.0" % default to plain opus 
    mutopiacomposer = "WorrallH"
    %--A list of instruments can be found at http://www.mutopiaproject.org/browse.html#byInstrument
    %--Multiple instruments are separated by a comma
    mutopiainstrument = "Guitar"

    % Footer, tagline, and copyright blocks are included here for reference
    % and spacing purposes only.  There's no need to change these.
    % These blocks will be overridden by Mutopia during the publishing process.
 footer = "Mutopia-2015/04/16-2009"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%--------Definitions
global = {
  \key g \major
  \time 6/8 
}


afingers= {
  \repeat unfold 2 {
    \relative c''' {
      b4. a4. |
      g4. d4. | 
      d4. d4. |
    }    
  }
  \alternative{
    { d''4. d''4. | }
    { \once \override NoteColumn #'ignore-collision = ##t 
      g8 g' b' <g' b' g''>4. | }

  }
}


athumb = {
  \repeat unfold 2 {
    g8 g' b'   d' g' b'  | 
    g8 g' b'   g8 g' b'  |
    d' a' c''  d' a' c'' |
  }
  \alternative{
    {g8 g' b'   g8 g' b'  | }
    { g4. g4. \bar "||" }  
  }
}

%-------Typeset music and generate midi
\score {
  \new Staff <<
    \key g \major
    \time 6/8

    \new Voice { \voiceOne 
    \afingers  
    }
    \new Voice { \voiceTwo 
      \athumb  
    }
  >>
   \layout{ }
    \midi  { \tempo 4 = 70 }
}
