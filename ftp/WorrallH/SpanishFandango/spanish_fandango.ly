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


%% C with slash -------------------------------
cWithSlash = \markup {
  \combine \roman C \translate #'(0.6 . -0.4) \draw-line #'(0 . 2.0)
}
%% Span -----------------------------------
%% Syntax: \bbarre #"text" { notes } - text = any number of box
bbarre =
#(define-music-function (barre location str music) (string? ly:music?)
   (let ((elts (extract-named-music music '(NoteEvent EventChord))))
     (if (pair? elts)
         (let ((first-element (first elts))
               (last-element (last elts)))
           (set! (ly:music-property first-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction -1)
                       (ly:music-property first-element 'articulations)))
           (set! (ly:music-property last-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction 1)
                       (ly:music-property last-element 'articulations))))))
   #{
       \once \override TextSpanner.font-size = #-2
       \once \override TextSpanner.font-shape = #'upright
       \once \override TextSpanner.staff-padding = #3
       \once \override TextSpanner.style = #'line
       \once \override TextSpanner.to-barline = ##f
       \once \override TextSpanner.bound-details =
            #`((left
                (text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . -2))
               (right
                (Y . 0)
                (padding . 0.25)
                (attach-dir . 2)))
%% uncomment this line for make full barred
       \once  \override TextSpanner.bound-details.left.text =  \markup { #str }
       $music
   #})

%% %%%%%%%  Cut here ----- End 'bbarred.ly'
%% Copy and change the last line for full barred. Rename in 'fbarred.ly'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Syntaxe: \bbarre #"text" { notes } - text = any number of box










amelody= {
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


apattern = {
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


bmelody={
  \relative c''{
    d4. d4. |
    d4. d4. |
    d4. d4. |
    d4. d4. |

    g4. a4. |
    b4. d,4. |
    d4. d4. |
  }
  g16 g' b' d'' e'' d'' <g g' b' g''>4. 
}

bpattern={
  d'8 a' c'' d' a' c'' |
  g8 g' b' g g' b' |
  d'8 a' c'' d' a' c'' |
  g8 g' b' g g' b' |

  g8 g' b' d' g' b' |
  g8 g' b' g g' b' |
  d'8 a' c'' d' a' c'' |
  s2. \bar "||"
}

cmelody={
  g''4. g''4.  |
  d''4. d''4. |
  a''4. a''4. |
  d''4.  d''4. |

  fis''4. fis''4. 
  g''4. g''4. |
  a''4. a''4. |
  g16 g' b' d'' e'' d'' <g g' b' g''>4. 
}

cpattern ={
  \bbarre #"5th Pos." {c'8 c'' e'' c'8 c'' e'' } |
  g8^\markup{\fontsize #-2 \translate-scaled #'(0 . 4) Open} g' b' d' g' b' |
  \bbarre #"7th Pos." {d'8 d''8 fis'' a' d'' fis''} |
  g8^\markup{\fontsize #-2 \translate-scaled #'(0 . 4.5) Open} g' b' d' g' b' |

  \bbarre #"4th Pos." {b8 b' dis'' fis' b' dis''} |
  \bbarre #"5th Pos." {c'8 c'' e'' g'8 c'' e''} |
  \bbarre #"7th Pos." {d'8 d'' fis'' a' d'' fis''} |
  s2. \bar "||"
}
%-------Typeset music and generate midi
\score {
  \new Staff <<
    \key g \major
    \time 6/8

    \new Voice { \voiceOne 
    \amelody
    \bmelody
    \cmelody
    }
    \new Voice { \voiceTwo 
      \apattern
      \bpattern
      \cpattern
    }
  >>
   \layout{ }
    \midi  { \tempo 4 = 70 }
}
