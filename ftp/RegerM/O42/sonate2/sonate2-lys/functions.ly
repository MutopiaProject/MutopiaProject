% homemade functions for the Max Reger
% violin sonatas:

\version "2.12.0"
% Function Definitions:

% To make a 'homemade' grace note:
cbSmaller = {
  \set fontSize = #-3
  \override Stem #'length-fraction = #0.7
  \override Stem #'stroke-style = #"grace"
  \override Beam #'thickness = #0.25
  \override Beam #'length-fraction = #0.6
}

% To return to normal notes:
cbNormal = {
  \set fontSize = #1
  \revert Stem #'length-fraction
  \revert Stem #'stroke-style
  \revert Beam #'thickness
  \revert Beam #'length-fraction
}

beamEight = {
  \set Score.beatLength = #(ly:make-moment 1 8)
}

beamFour = {
  \set Score.beatLength = #(ly:make-moment 1 4)
}

cbDivide = {
  \set subdivideBeams = ##t
}
 
cbNoDivide = {
  \set subdivideBeams = ##f
}

% Make a unique dynamic mark, the ffz:
ffz = #(make-dynamic-script "ffz")

% Add markup above the note and move it from the default placement:
cbMarkUp = 
#(define-music-function (parser location music text vert horiz) (ly:music? string? number? number?)
#{
  \once \override TextScript #'extra-offset = #($vert . $horiz)
  $music \markup { $text }
#})

% the first 7 measures of Max Reger violin sonata 2.3:
cbRefrain = {
<<
  {
    e16( gs a fs e d) cs8-. cs-. cs-. |
    cs16( gs' b gs cs, b) a8-. a'-. a,-. |
    %%%%% measure 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    a8( a'-.) a,-. a( a') a,-. |
    a16( b fs') b-. a-. gs-. fs( e ds) cs-. b-. a-. |
    gs8-. e'-.[ e-.] e-. e-. e-. |
  }
  \\
  {
    cs8-. \f r \> r a-. \p \< gs-. fs-. \! |
    es r \> r fs-.[ \p \crescTextCresc r \< fs-.]

    %%%%% measure 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    f-.[ r f-.] e-.[ r e-.] \crescHairpin |
    ds-. \ff \< r r r4*1/2 \! s8 \> r8 |
    r8 \! e-. \p \< fs-. gs-. a-. b-. \! |
  }
>>

%%%%% measure 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<<
  {
    e=''16( gs a fs e d) cs8-. cs-. cs-. |
    cs-. cs-.( cs-.) 
  }
  \\
  {
    cs8-. \f r \> r r \p ds,-. \< es-. |
    fs-. gs-.( a-.) \!
  }
>>

<b,= a' d>16( \f \< as' b) cs-. d-. fs-.
}

%% more repeated notes, starting 2nd 8th of measure 41:
cbFortyOne = {
\times 2/3 { a,,=16(\<[ fs' cs' } \times 2/3 { fs cs' fs)] } 
    <g b, d,, g,>4->\ff <g b,>16( <b, d,>) |
<b d,>4-> <b d,>16(\> <g b,>) <g as,>8-> <fs b, d,>( <b d,>)\!

%%%%% measure 43 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
<a cs, e,>(\<\mf <gs b,>) <a cs,>-. <gs b, e,>( <fss as,>) <gs b,>-. |
<fs a, fs>( <es gs,>) <fs a,>-. <e d gs,>( b') <e, d gs,>-. |
}
