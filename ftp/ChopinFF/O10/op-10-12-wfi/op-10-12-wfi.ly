\version "2.16.1"
%lastupdated = #(strftime "%Y/%B/%d" (localtime (current-time)))
footer = #(strftime "Mutopia-%Y/%B/%d-xxx" (localtime (current-time)))

\header {
  filename      =       "op-10-12-wfi.ly"
  title         =       \markup \fontsize #1 { "Revolutionary Étude" }
  composer      =       \markup \large { "Frédéric Chopin (1810 - 1849)" }
  opus          =       "Opus 10 Nr. 12"
  enteredby     =       "Roland Goretzki"

 mutopiatitle           =       "Etüde c-moll"
 mutopiacomposer        =       "ChopinFF"
 mutopiaopus            =       "Opus 10, No. 12"
 mutopiainstrument      =       "Piano"
 date                   =       "1828-1831"
 source                 =       "Peters, Herrmann Scholtz, 1900b"
 style                  =       "Romantic"
 copyright              =       "Public Domain"
 maintainer             =       "Roland Goretzki"
 maintainerEmail        =       "roland@roland-goretzki.de"
 maintainerWeb          =       "http://www.roland-goretzki.de/"

 footer = "Mutopia-2018/05/15-743"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\include "deutsch.ly"

global = { \key c \minor \time 4/4 s1*84 \bar "|." }

%%%%%%%%%   Beginn des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %
% -- %
oben = \change Staff = up
unten = \change Staff = down
% -- %
Axdefault = \accidentalStyle "default"
Axpiano = \accidentalStyle "piano"
% -- %
KlammerAn = \override TupletBracket #'bracket-visibility = ##t
% -- %
DecoratedHairpin = #(define-music-function (parser location text) (markup?)
#{
\once\override Hairpin #'height = #'1.5
\once\override Hairpin #'stencil = #(lambda (grob)
(ly:stencil-aligned-to
(ly:stencil-add
(ly:stencil-aligned-to
(ly:stencil-aligned-to
(ly:hairpin::print grob)
Y CENTER) X CENTER)
(ly:stencil-translate
(ly:stencil-aligned-to (grob-interpret-markup grob text) Y CENTER) '(1 . 0)))
X LEFT))
#})
%                                                                       %
%%%%%%%%%%%   Ende des Definitionsteils   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

rechts = \new Voice = "rechts" \relative c'{
\set Staff.midiMinimumVolume = #-.5
\set Staff.midiMaximumVolume = #1
  \tempo "Allegro con fuoco" 4 = 160
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override Accidental #'avoid-slur = #'around
  \override Script #'avoid-slur = #'inside
    <h' d f g h>2^>\f r                                           % Takt  1
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r r4 <as es' f as>8.(\> <g g'>16)\!                               % Takt  2
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <d' f g d'>2^>\f r                           % Takt  3
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r r4 <as es' f as>8.(\> <g g'>16)\!                               % Takt  4
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <f' g d' f>8-.
  \once\override Script #'avoid-slur = #'around
  as'16^>( [ g] f^> d es d h^> g as g f^> d es d                % Takt  5
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d \unten \voiceOne h!^> g as g f^> d es d   % Takt  6
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c h) g'( f es d es d
    c^\markup { \italic cresc. } h) b'!( as g f g f             % Takt  7
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    es^\< d) es'( d c^\> h c h as g as g f es f\! es  % Takt  8
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c8)\oben \oneVoice r r4 r2                                  % Takt  9
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r2 r8 r16_\f <c'' c'>16( [  <d d'>8. \<
    <es es'>16) \! ]                                            % Takt 10
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2^> r8 r16_\p <g, c es g>16[
     <g c es g>8. \< <g  c es g>16 \! ]      % Takt 11
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
   <as c es as>2( ~ \> <g c es g>8) \! r16_\f
    <c c'>16( [  <d d'>8. \< <es es'>16) \! ]  % Takt 12
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2^> r8  r16_\p <g, c es g>16[
     <g c es g>8. \< <g  c es g>16 \! ]        % Takt 13
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    <a' es c a>1\fz^\markup { \italic ten. } (                  % Takt 14
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <d, a' d>8^.) r <g, d' g >4^> r8 r16
    <g des' g>16[( <as des as' >8.^> <g des' g>16 ])            % Takt 15
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <g c g'>8( <c c'>16) r <f, c' f >4^> r8 r16
     <f c' f>16[( <g c g' >8.^> <f c' f>16 ])     % Takt 16
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   <e c' e >2.-> ~ <e c' e>8. <es es' >16    % Takt 17
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  << { <es es' >4(^> <d d'>) } \\ h'2 >> r                      % Takt 18
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  R1                                                            % Takt 19
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r2 r8 r16_\p <c c'>16( [ 
    <d d'>8. \< <es es'>16) \! ]                                % Takt 20
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2^> r8  r16_\p <g, c es g>16[
     <g c es g>8. \< <g  c es g>16 \! ]        % Takt 21
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
   <as c es as>2^>( ~ <g  c es g>8) r16
   <c c'>16-\markup { \italic cresc. } ( [
    <d d'>8. <es es'>16) ]                                      % Takt 22
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2\fz r8 r16_\p <g, c es g>16[
     <g c es g>8. \< <g  c es g>16 \! ]        % Takt 23
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  
  <a es' f a>1\fz^\markup { \italic ten. }                      % Takt 24
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <b f' b>4.\p <b f' b>4 <b g' b>4 <h g' h>8 ~                  % Takt 25
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <h g' h>8 <c g' b c>4 < cis b' cis> 
    <d b' d>8-\markup { \italic stretto }
    [ <es b' es> <e b' e> ]                                     % Takt 26
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   <f b d f>2^> \fz\< <d f b d>4\>
    <<
      \context Voice {\voiceOne d'8.(\> c16\! \oneVoice <d, f b>8-.) }
      \new Voice {\voiceTwo <es f a>4}
    >>                                                          % Takt 27
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   r8 r4 r2                          % Takt 28
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <h dis gis h>2.^> \f <dis,  gis h dis>8.(\< <eis  eis'>16)\!      % Takt 29
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <fis ais dis fis>2.^> <fis fis'>8.(\< <gis gis'>16)\!             % Takt 30
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <a cis fis a>2.^> <cis,  fis a cis>8.(\< <dis  dis'>16)\!         % Takt 31
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <e gis cis e>2.^> <e e'>8.(\< <fis fis'>16)\!                     % Takt 32
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <gis dis' fis gis>2.^> <gis  dis' fis gis>8.(\< <ais  ais'>16\! % Takt 33
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <ces f as ces>4^.) \fz
     <b f' as b>2^>\cresc \new Voice {<b f' as b>8.(\< <c c'>16   % Takt 34
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   <des g b des>4^.)\fz}
     <c g' b c>^>  r2         % Takt 35
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   R1 % Takt 36
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <as' c f as>2\ff( <f c' f>4 <c f c'>)                         % Takt 37
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
  
    <b f' b>2^>( ~ <as f' as>4) r                               % Takt 38
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\override Script #'avoid-slur = #'around
  <as' c f as>2( <f c' f>4 <c f c'>)                            % Takt 39
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <c f c'>2.^> <h f' h>8.(\< <c c'>16)\!                            % Takt 40
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   <d f h d>2^> \ff  r                        % Takt 41
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r r4 <as es' f as>8.(\< <g g'>16)\!                               % Takt 42
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   <f' g d' f>2^> r                           % Takt 43
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r r4 <as, es' f as>8.(\< <g g'>16)\!                              % Takt 44
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <f' g d' g>8-.
  \once\override Script #'avoid-slur = #'around
  as'16^>[( g] f^> d es d h^> g as g f^> d es d                 % Takt 45
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d \unten \voiceOne h!^> g as g f^> d es d   % Takt 46
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c h) g'( f es d es d
    c^\markup { \italic cresc. } h) b'!( as g f g f             % Takt 47
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    es^\< d) es'( d^\> c h c h as g as g f es f es\!  % Takt 48
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c8)\oben \oneVoice r r4 r2                                  % Takt 49
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    r2 r8 r16 <c'' c'>16(\f\< \times 2/3 { 
    <cis  cis'>8 <d d'>8. <es es'>16) \! }                   % Takt 50
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \Axdefault
  <es es'>2 r8  r16
    <g, c es g>16[\p\< <g c es g>8. <g c es g>16 \! ]             % Takt 51
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \tupletUp \KlammerAn
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
  <as c es as>2^>( ~ \times 2/3 { <g c es g>8-.)
     <h h'>_( \f [ <c c'> ] 
    <cis cis'> [ \< <d d'>) r16 <es es'> \! ] }                 % Takt 52
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2 r8 r16\p
    <g, c es g>16[\< <g c es g>8. <g c es g>16 \! ]             % Takt 53
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  
  \once\override Script #'avoid-slur = #'around
    <a c es a>1^>(\fz                          % Takt 54
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  
  \once\override Script #'avoid-slur = #'around
  \tupletNeutral
  <a d a' d>8)\arpeggio-. r <g d' g >4^>
    \times 2/3 { r8 <g des' g>[ <g des' g> ]
    <g des' g>[ <as des as'>8 r16 <g des' g> ] }                % Takt 55
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <g c g'>16( <c c'>) r8 <f, c' f >4^>
    \times 2/3 { r8 <f c' f> [ <f c' f> ] }
    <e c' e>16( [ \< <f c' f> <g c g'>) \! r32 <f c' f> ]       % Takt 56
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <e c' e>4-. << { <es es'>2^> ~ <es es'>8. <es es' >16}
    \new Voice {\voiceFour \once \override NoteColumn #'force-hshift = #1.7
    c'2.} >>  % Takt 57
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  << { h2 } \\ {
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'inside
    <es, es' >4(^> <d d'>) } >> r2                              % Takt 58
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    R1                                                          % Takt 59
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  r2 \times 2/3 {  r8 \f  <h' h'>(
    \< [ <c c'> ] <cis cis'> [ <d d'>) r16 <es  es'> \! ] }     % Takt 60
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    <es es'>2^> r8 r16_\p
      <g,  c es g>16[\< <g c es g>8. <g  c es g>16 \! ]         % Takt 61
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
  
    <as c es as>2^>( ~ \times 2/3 { <g c es g>8)-.
     <h h'> \f [  <c c'> \<
    ] } <cis cis'>16[( <d d'> <f f'>) \! r32 <es es'> ]         % Takt 62
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es es'>2^> r8 r16\p
      <g, c es g>16[\< <g c es g>8. <g c es g>16 \! ]           % Takt 63
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  << {  <a es' a>1^> \fz }
    { s16 s  
  \DecoratedHairpin \markup {\italic cresc.}
    s \< s s4 s16 
    s s8. s16 s \! s } >>           % Takt 64
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\override Script #'avoid-slur = #'around
  <b des b'>2^>( \ff <as b des as'>4
    <ges b des ges>8. <f b des f>16)                            % Takt 65
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
    <f \> b des f>2^>( ~ <e b' e>4) r                           % Takt 66
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   <as ces fes as>2( \f <ges as ces ges'>4
    <fes as ces fes>8. <es as ces es>16)                        % Takt 67
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \once\set doubleSlurs = ##t
  \once\override Script #'avoid-slur = #'around
    <es as ces es>2^>( ~ <d as' d>4) r                          % Takt 68
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <g! es' g!>1^>\sf                      % Takt 69
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    <<
      { g'2^>( ~ g4. f8) }
        \\
      { g,2 g_> }
        \\
      { d'1 }
    >>                                                          % Takt 70
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    << { f2(  es) } \\ { <g, c>1\p } >>       % Takt 71
% alternativ %  %%%%%%%%%%%%% ----------------------------------------------- ---------
% alternativ %    <<
% alternativ %      { es'8( f16 \< es des8.  es16\! f4  as,) }
% alternativ %        \\
% alternativ %      { <f as>1 }
% alternativ %    >>                                                          % Takt 72
% alternativ %  %%%%%%%%%%%%% ----------------------------------------------- ---------
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  << { es'8( f16 es
    des8. es16 f4 as,) } \\ { <f as>1} >>                  % Takt 72
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <es c'>1^> ~                                % Takt 73
  %%%%%%%%%%%%% ----------------------------------------------- --------------
  <es c'>                                                       % Takt 74
  %%%%%%%%%%%%% ----------------------------------------------- --------------
  << { c'4.( h8  d4) } \\ { 
    <d, f>2.-\markup { \italic smorz. } } >> r4                 % Takt 75
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    R1                                                          % Takt 76
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    <<
      {\voiceOne c'^\markup { \italic sotto voce } ~
        c2(\< d!  e1)\> }
      \new Voice {\voiceTwo c,8 r r4 r2 <f as>1 <e g> }
    >>                                                          % Takt 77 - 79
% alternativ %  %%%%%%%%%%%%% ----------------------------------------------- --------------
% alternativ %    <<
% alternativ %      { \shiftOn as1 } \\
% alternativ %      {  \slurUp
% alternativ %        c2.^\markup { \italic { poco rallentando } }( <h d>4
% alternativ %      
% alternativ %        <e, g c e>8\p^\markup { \italic (a tempo) } ) } \\
% alternativ %      { \tieDown  <c g'>2 ~ <c ~ f> }
% alternativ %    >>
% alternativ %    as'''16\ff-\markup { \italic ed appassionato } g
% alternativ %    e c des c b g as g e c des c                                % Takt 80 - 81
% alternativ %  %%%%%%%%%%%%% ----------------------------------------------- --------------
  %%%%%%%%%%%%% ----------------------------------------------- --------------
  << {
    c'2.^\markup { \italic { poco rallent. } }( \p\< <h d>4
     <e, g c e>8-.\ff ) \oneVoice}
    \new Voice {\voiceTwo g2 f } \new Voice {\voiceThree <c as'>1 } >>
    \tempo \markup { \normal-text \italic { a tempo } }
    as'''16([ g ] e c des c b! g as g e! c des c                        % Takt 80 - 81
  %%%%%%%%%%%%% ----------------------------------------------- --------------
  b g as g e c des c \unten \voiceOne b g as g e! c des c)        % Takt 82
  %%%%%%%%%%%%% ----------------------------------------------- ---------
% alternativ %  <c f a c>2^.( <c f as c>)^\fff^.           % Takt 83
% alternativ %  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <c f a c>2^.^> <c f as c>^.^>                                 % Takt 83
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <c f g c>4^.^> <c e g c>^.^> << 
  f2\rest \\ s >>                                               % Takt 84
  %%%%%%%%%%%%% ----------------------------------------------- ---------
}

links = \new Voice = "links" \relative c{
  \override DynamicLineSpanner #'avoid-slur = #'inside
  \override DynamicLineSpanner #'outside-staff-priority = ##f
  \slurDown
  \once\override Script #'stencil = ##f % an invisible forte sign for the midi
    r8\f as''16^>^\markup { \italic legatissimo }(
    g f^> d es d h^> g as g f^> d es d                          % Takt  1
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d c-> g c g c-> g c g                  % Takt  2
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h8-.) as'''16^>[( g] f^> d es d h^> g as g f^> d es d      % Takt  3
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d c-> g c g c-> g c g                  % Takt  4
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h8-.) \clef violin as''''16->^\markup { \italic
    { con fuoco } }[( g] f-> d es d h_> g as g f_> d es d       % Takt  5
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \clef bass h_> g as g f_> d es d
  \voiceTwo h_> g as g f_> d es d                             % Takt  6
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c h) g'( f es d es d c h) b'!( as g f g f                     % Takt  7
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  es d) es'( d c \!  h c h as g as g f es f es)           % Takt  8
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \slurUp c( g' \< c d es g c d\!
     es \> d c g es d c\! g)                   % Takt  9
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \oneVoice  c,(  g' \< c  d\! \> es d \! c g )
  c,(  g' \< c  d\! \> es d \! c g ) % Takt 10
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,( g' \< c d es g c d\!  es \> d c g es d c\! g)        % Takt 11
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,(  g' \< c  d\! \> es d \! c g ) c,(  g' \< c  d\! \> es d \! c g )
                                                                % Takt 12
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    c,( g' \< c d es g c d\! 
    es \> d c g es d c\! g)                                     % Takt 13
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,( fis c' d es d c fis,) c( fis c' d es d c fis,)            % Takt 14
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   h,16( h' \< d g \! d' g, d  h) b,( b' des g des' g, des  b)       % Takt 15
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    a,16( a' c f c' f, c  a) as,( as' c f c' f, c  as)          % Takt 16
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  g,( g'  c \< h des c d cis
    es d e dis f e ges f\!                                      % Takt 17
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    g! \> fis as g b! as g f es d c h as g \! f d )             % Takt 18
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c( g' \< c d es g c d\!  es \> d c g es d c\! g)        % Takt 19
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    c,(  g' \< c  d\! \> es d \! c g )
    c,(  g' \< c  d\! \> es d \! c g )
                                                                % Takt 20
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,( g' \< c d
    es g c d\!  es \> d c g es d c\! g)        % Takt 21
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    c,(  g' \< c  d\! \> es d \! c g )
    c,(  g' \< c  d\! \> es d \! c g )
                                                                % Takt 22
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,( g' \< c d es g c d\!  es \> d c g es d c\! g)        % Takt 23
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \repeat unfold 2 {
    c,(  f \< c'  d\! \> es d \! c f, )
  }                                                             % Takt 24
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  d( b' ces b b' b, ces b) 
    es,^\markup { \italic cresc. }( b' ces b b' b, ces  b)      % Takt 25
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  e,( b' c! b b' b, c b)  f( b b' b,) ges( b b' b,)    % Takt 26
  %%%%%%%%%%%%% ----------------------------------------------- ---------
%% alternativ:
%%  f b d f b d \oben g16. f32
%%    f16_> d \unten b g f^>  es c f,                        % Takt 27
   f( b d f b d g16. f32) 
    f16^( d b g f  es c f,           % Takt 27
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  b,-.) des'[( c ces ] b c ces b a ces b a gis b a gis          % Takt 28
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \Axpiano
  gis,8-.) fisis'16( [ gis ] h dis ais h dis gis cisis,
    dis gis  h fisis  gis                  % Takt 29
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  dis,-.)  dis''[( eis, fis ] ais dis cisis, dis
    fis ais gisis, ais dis  fis eis, fis   % Takt 30
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   fis,8-.) eis'16([ fis] a cis gis a
      cis fis his, cis  fis a eis fis       % Takt 31
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  cis,-.)  cis''[( dis, e] gis cis his, cis e gis fisis, gis
    cis  e dis, e              % Takt 32
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  his-.)  dis''[(\> fisis, gis]\! a\> gis fis
    e dis cis his \! a  fisis gis dis gis   % Takt 33
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \Axdefault
  d!-.)  f''![(\> a, \! b! ] ces\> b as ges
    f es d! ces \! a  b f  b              % Takt 34
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  e,-.) g''[( h, c ]
  des c b as g f e g f e des c                                  % Takt 35
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h c des c b as g f e des c h c b as  g)                                        % Takt 36
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  f( c' f g as c f g 
    as \< c f \!  g \> as g \! f c              % Takt 37
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  des f des as f des as f des as des f des as des f)            % Takt 38
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  f,( c' f g as c f g as c f g as g f c                         % Takt 39
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  d! f d c as f d! c as f d! c as c d as') % Takt 40
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   
  <g, g'>8-. as'''16^>([ g] f^> d es d h^> g as g f^> d es d    % Takt 41
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d c-> g c g c-> g c g                  % Takt 42
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  
    h8-.^\f) as'''16^>[( g] f^> d es d h^> g as g f^> d es d    % Takt 43
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h-> g as g f-> d es d c-> g c g c-> g c g                  % Takt 44
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h'8-.) \clef violin \slurDown as'''16-> [( g]
    f-> d es d h_> g as g f_> d es d                            % Takt 45
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \clef bass h_> g as g f_> d es d
  \voiceTwo h_> g as g f_> d es d                             % Takt 46
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  
  c h) g'( f es d es d c h) b'!( as g f g f                     % Takt 47
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   es d) es'( d c 
     h c h as g as g f es f  es)          % Takt 48
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    \slurUp c(  g' \< c d es g c d\!
     es \> d c g es d c\! g)                   % Takt 49
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \oneVoice c,(  g' \< c  d\! \> es d \! c g )
    c,(  g' \< c  d\! \> es d \! c g )
                                                                % Takt 50
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,( g' \< c d
    es g c d\!  es \> d c g es d c\! g)        % Takt 51
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    c,(  g' \< c  d\! \> es d \! c g )
    c,(  g' \< c  d\! \> es d \! c g )
                                                                % Takt 52
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    c,( g' \< c d es g c d\! 
    es \> d c g es d c\! g)                                     % Takt 53
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,( fis c' d es d c fis,) c( fis c' d es d c fis,)            % Takt 54
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  h,16( h' d g d' g, d  h) b,( b' des g des' g, des  b)         % Takt 55
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    a,16( a' c f c' f, c  a) as,( as' c f c' f, c  as)          % Takt 56
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  g,( g'  c \< h des c d cis es d e dis f e ges  f\!                                     % Takt 57
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  
    g! \> fis as g b! as g f es d c h as g \! f d )             % Takt 58
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c(  g' \< c d
    es g c d\!  es \> d c g es d c\! g)        % Takt 59
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    c,(  g' \< c  d\! \> es d \! c g )
    c,(  g' \< c  d\! \> es d \! c g )
                                                                % Takt 60
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,( g' \< c d es g c d\!  es \> d c g es d c\! g)        % Takt 61
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    c,(  g' \< c  d\! \> es d \! c g )
    c,(  g' \< c  d\! \> es d \! c g )
                                                                % Takt 62
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,( g' \< c d es g c d\!  es \> d c g es d c\! g)        % Takt 63
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c,(  fis \< c'
     d \! \> es d \! c fis, )
  c(  fis \< c'
     d \! \> es d \! c fis, )                   % Takt 64
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  
  \repeat unfold 2 {
    des(  des' \< ges
     as \! \> b as \! ges des)
  }                                                             % Takt 65
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   des,(  des' \< g! b \!
     des \> c b as g f e des! c b \! as g)      % Takt 66
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \repeat unfold 2 {
    ces,(  ces' \< fes
     ges \! \> as ges \! fes ces)
  }                                                             % Takt 67
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   ces,(  ces' \< f! as \!
    ces \> b as ges f es d! ces! b as \! ges f) % Takt 68
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <<{\repeat unfold 2 {
    b,(  b' \< es
     f \! \> g! f \! es b)
  }} {s\p}>>                                                             % Takt 69
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \repeat unfold 2 {
    h,16(  h' \< d
     g \! \> d' g, \! d h)
  }                                                             % Takt 70
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    c,( g' \< c d es g c d \!
     es \> d c g es d c\! g)                   % Takt 71
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   f,( des' \< f g as des f g \!
     as \> g f des as f \! des as             % Takt 72
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  g8-.) e'16_( [ dis ] f e ges f g fis as g a gis b a           % Takt 73
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    ces b c h des c d cis es d e dis f e ges f                  % Takt 74
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    g! fis as g b! as g f es d f es g f es d                    % Takt 75
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c h d c h as! g fis g as f g es f d es                        % Takt 76
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c8-.) des''16( [ c ] b! g as g e c des c b! g as g            % Takt 77
  %%%%%%%%%%%%% ----------------------------------------------- ---------
    f_\pp  c f c f c f c f c f c f c f c  % Takt 78
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  c'8-.) des'16( [ c ] b g as g e c des c b g as g         % Takt 79
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  f_\pp c f c \repeat unfold 5 { f c } f c      % Takt 80
  %%%%%%%%%%%%% ----------------------------------------------- ---------
   c'8-.) \clef violin 
    as'''16_(^\markup { \italic { ed appassionato } } [ g ]
    e c des c b! g as g e c des c                               % Takt 81
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  \clef bass b g as g  e c des c \voiceTwo b g as g e c des c)   % Takt 82
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <f, f'>2_._> <f f'>_._>                                       % Takt 83
  %%%%%%%%%%%%% ----------------------------------------------- ---------
  <c c'>4_._> <c c'>_._> r2           % Takt 84
  %%%%%%%%%%%%% ----------------------------------------------- ---------
}

\score {
    \new PianoStaff
    <<
      \set GrandStaff.instrumentName = \markup { \huge 12. }
      \new Staff = "up" << 
        \global 
        \clef violin
        \rechts
      >>
      \new Staff = "down" <<
        \global
        \clef bass
        \links
      >>
    >>
  \layout {
     \context {
       \Score
       \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 2)
       \override SpacingSpanner #'shortest-duration-space = #1.5
     }
  }
  \midi {
    \tempo 2=80
  }
}
