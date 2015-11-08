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
    subtitle = "As published by J. Church & Co. 1882"
    composer = "H. Worrall, Arr. by J.T.R."
    opus = ""
    piece = "Open G tuning"
    %piece = "Left-aligned header"
    date = "1882"
    style = "Classical"
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
 footer = "Mutopia-2015/07/23-2036"
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
bannote =
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
       \once \override TextSpanner.style = #'none
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


%% Syntaxe: \bbarre #"text" { notes } - text = any number of box


% tune is a set of 8 bar sections; 
% break after each one (or set to empty to avoid breaks)
endSection={ }


aMarks={
  %s1*0 \mark \default
  g4.^"Allegro" s4.
  \repeat unfold 7 { s4. s4. }
  \endSection
}

aOne={
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

bMarks={
  %s1*0 \mark \default
  \repeat unfold 8 { s4. s4. }
  \endSection
}
aTwo= {
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


bOne={
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

bTwo={
  d'8 a' c'' d' a' c'' |
  g8 g' b' g g' b' |
  d'8 a' c'' d' a' c'' |
  g8 g' b' g g' b' |

  g8 g' b' d' g' b' |
  g8 g' b' g g' b' |
  d'8 a' c'' d' a' c'' |
  s2. \bar "||"
}

cMarks={
  %s1*0 \mark \default
  \bbarre #"5th Pos." { c8 c8 c8 c8 c8 c8 }
  \bannote #"Open" {g4. g4.}
  \bbarre #"7th Pos." {d8 d8 d8 d8 d8 d8 }
  \bannote #"Open" {g4. g4.}
  \bbarre #"4th Pos." { b8 b8 b8 b8 b8 b8 }
  \bbarre #"5th Pos." { c8 c8 c8 c8 c8 c8 }
  \bbarre #"7th Pos." { d8 d8 d8 d8 d8 d8 }
  s4. s4.
  \endSection
}
cOne={
  g''4. g''4.  |
  d''4. d''4. |
  a''4. a''4. |
  d''4.  d''4. |

  fis''4. fis''4. 
  g''4. g''4. |
  a''4. a''4. |
  g16 g' b' d'' e'' d'' <g g' b' g''>4. 
}

cTwo={
  c'8 c'' e'' c'8 c'' e''  |
  g8 g' b' d' g' b' |
  d'8 d''8 fis'' a' d'' fis'' |
  g8 g' b' d' g' b' |

  b8 b' dis'' fis' b' dis'' |
  c'8 c'' e'' g'8 c'' e'' |
  d'8 d'' fis'' a' d'' fis'' |
  s2. \bar "||"
}

dMarks={
  %s1*0 \mark \default
  \repeat unfold 8 { s4. s4. }
  \endSection
}
dOne={
  \repeat unfold 2 {
    r8 <g' b' b''> <g' b' b''>  r8 <g' b' a''> <g' b' a''> |
    r8 <g' b' g''> <g' b' g''>  r8 <g' b' d''> <g' b' d''> |
    r8 <a' c'' d''> <a' c'' d''> r8 <a' c'' d''> <a' c'' d''> |
  }
  \alternative{
    {r8 <g' b' d''> <g' b' d''> r8 <g' b' d''> <g' b' d''> |}
    {r8 <g' b' d''> <g' b' d''> <g' b' g''>4. \bar "||" }
  }
}
dTwo={
  \repeat unfold 2 {
    g4. d' |
    g4. g  |
    d'4. d' |
    g4. g |
  }
}

eMarks={
  %s1*0 \mark \default
  g4.^"D String solo" g4.
  \repeat unfold 7 { s4. s4. }
  \endSection
}
eOne={
  \repeat unfold 2 {
    r8 <g' b' d''> <g' b' d''> r8 <g' b' d''> <g' b' d''>
    r8 <g' b' d''> <g' b' d''> r8 <g' b' d''> <g' b' d''>
    r8 <a' c'' d''> <a' c'' d''> r8 <a' c'' d''> <a' c'' d''> 
  }
  \alternative{
    { r8 <g' b' d''> <g' b' d''> r8 <g' b' d''> <g' b' d''>}
    { r8 <g' b' d''> < g' b' d''> <g' b' g''>4. \bar "||" }
  }
}
eTwo={
    g'4. fis' |
    e'4. d'   |
    d'4. d'   |
    g4.  g    |
    
    g'4. a' |
    b'4. d' |
    d'4. d'   |
    g4.  g    \bar "||"

}

fMarks={
  %s1*0 \mark \default
  \bbarre #"5" { c8 c8 c8 c8 c8 c8 }
  \bannote #"Open" { g8 g8 g8 g8 g8 g8 }
  \bbarre #"7" { d8 d8 d8 d8 d8 d8 }
  \bannote #"Open" { g8 g8 g8 g8 g8 g8 }
  \bbarre #"4" { b8 b8 b8 b8 b8 b8 }
  \bbarre #"5" { c8 c8 c8 c8 c8 c8 }
  \bbarre #"7" { d8 d8 d8 d8 d8 d8 }
  s4. s4.
  \endSection
}
fOne={
  { r8 <c'' e'' g''> <c'' e'' g''> r8 <c'' e'' g''> <c'' e'' g''> } |
  r8 <g' b' d''> <g' b' d''> r8 <g' b' d''> <g' b' d''> |
  { r8 <d'' fis'' a''> <d'' fis'' a''> r8 <d'' fis'' a''> <d'' fis'' a''> } |
  r8 <g' b' d''> <g' b' d''> r8 <g' b' d''> <g' b' d''> |
  { r8 <b' dis'' fis''> <b' dis'' fis''>  r8 <b' dis'' fis''> <b' dis'' fis''>  } |
  { r8 <c'' e'' g''> <c'' e'' g''> r8 <c'' e'' g''> <c'' e'' g''> } |
  { r8 <d'' fis'' a''> <d'' fis'' a''> r8 <d'' fis'' a''> <d'' fis'' a''> } |
  r8 <g' b' d''> <g' b' d''> <g' b' g''>4. \bar "||"
}
fTwo={
  c'4. g' |
  g4.  g  |
  d'4. a' |
  g4.  d' |
  b4.  fis' |
  c'4. g' |
  d'4. a' |
  g4.  g  |
}

gMarks={
  %s1*0 \mark \default
  \repeat unfold 8 { s2 }
  \endSection
}

gOne={
  r16 g' b' b'' r16 g' b' a''  |
  r16 g' b' g'' r16 g' b' d'' |
  r8 <a' c'' d''> r8 <a' c'' d''>  |
  r16 g' b' d'' r8 <g' b' d''> |
  
  r16 g' b' b'' r16 g' b' a''  |
  r16 g' b' g'' r8 <g' b' d''> |
  r16 a' c'' d'' r16 a' c'' d''  | 
  r8 <g' b' g''> < g' b' g''>4  \bar "||"
}

gTwo={
  g4 d' |
  g4 g   |
  d'4 d'|
  g4 g  |
  g4 d' |
  g4 g |
  d'4 d' |
  g4 r4 |

}

hMarks={
  %s1*0 \mark \default
  \repeat unfold 8 { s2 }
  \endSection
}

hOne={
  r16 g' b' g'' r8 <g' b' fis''> |
  r16 g' b' e'' r8 <g' b' d''> |
  r16 a' c'' d'' r16 a' c'' d''  |
  r16 g' b' d'' r8 <g' b' d''> |

  r16 g' b' g'' r8 <g' b' a''> |
  r16 g' b' b'' r8 <g' b' d''> |
  r16 a' c'' d'' r16 a' c'' d''  |
  r8 <g' b' g''> <g' b' g''>4 |
}

hTwo={
  \repeat unfold 2 {
    g4 d' |
    g4 g |
    d'4 d' |
  }
  \alternative{
    { g4  g | }
    { g4  r \bar "||"} 
  }
}


iMarks={
  %s1*0 \mark \default
  \bbarre #"5" { c16 c16 c16 c16 c16 c16 c16 c16 }
  \bannote #"Open" { g8 g8 g8 g8 }
  \bbarre #"7" { {d16 d16 d16 d16}{d16 d16 d16 d16}}
  \bannote #"Open" { g8 g8 g8 g8 }

  \bbarre #"4" { {b16 b16 b16 b16}{b16 b16 b16 b16}}
  \bbarre #"5" { {c16 c16 c16 c16}{c16 c16 c16 c16}}
  \bbarre #"7" { {d16 d16 d16 d16}{d16 d16 d16 d16}}
  \bannote #"Open" { g8 g8 g8 g8 }
  \endSection
}

iOne={
  r16 c'' e'' g'' r16 c'' e'' g''  |
  r8 <g' b' d''> r8 <g' b' d''> |
  r16 d'' fis'' a'' r16 d'' fis'' a''  |
  r8 <g' b' d''> r8 <g' b' d''>  |

  r16 b' dis'' fis'' r16 b' dis'' fis''  |
  r16 c'' e'' g'' r16 c'' e'' g''  |
  r16 d'' fis'' a'' r16 d'' fis'' a''  |
  r8 <g' b' g''> <g' b' g''>4 |
}
iTwo={
  c'4 g' |
  g4 d' |
  d'4 a' |
  g4 d' |

  b4 fis' |
  c'4 g' |
  d'4 a' |
  g4 g  \bar "||"
}

%-------Typeset music and generate midi
\score {
  <<
    \new Dynamics {
      \time 6/8 
      \aMarks \bMarks \cMarks \dMarks \eMarks \fMarks
      \time 2/4
      \gMarks \hMarks \iMarks
    }
    \new Staff {
      \key g \major
      \time 6/8
      <<
        \new Voice { \voiceOne 
          \aOne \bOne \cOne \dOne \eOne \fOne
        }
        \new Voice { \voiceTwo 
          \aTwo \bTwo \cTwo \dTwo \eTwo \fTwo 
        }
      >>
      \time 2/4
      <<
        \new Voice { \voiceOne 
          \gOne \hOne \iOne
        }
        \new Voice { \voiceTwo
          \gTwo \hTwo \iTwo
        }
      >> % end 2/4 section
    } %end staff
  >>
   \layout{ }
    \midi  { \tempo 4 = 70 }
}
