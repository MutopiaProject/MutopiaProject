%%--------------------------------------------------------------------
% LilyPond typesetting of Rachmaninoff Prelude Op. 23 No. 5
%%--------------------------------------------------------------------

\version "2.19.16"
\language "deutsch"
\include "articulate.ly"

% values between 17 and 19 look acceptable (some tweaks needed though)
#(set-global-staff-size 18)

%----- Notes ---------------------------------------------------------
% - the choice between r and s in voices follows the Gutheil source,
%   however, LilyPond prefers to put them them in the order of the
%   voices, i.e. mostly below the staff.
% - stems and articulations are not always consistent in the source
% - the maintainer does not recommend the original tempo

%----- Known problems ------------------------------------------------
% - midi is not nice
% - quite some slurs would need further adjustments (\shape)
% - some hairpins could be better aligned (extra-offset)
% - there are many semiquaver rests at odd places
% - a larger staff size would be possible if clef changes required
%   less space (cf. m. 69 - 71). This would reduce the white space
%   between staves
% - there are 'Impossible or ambiguous (de)crescendo in MIDI.' errors
% - there may be typos

%--------Definitions and shorthands

% shrink hairpin (like in second measure)
hairpin = {
  \once \override Hairpin.extra-offset = #'(0 . -0.8)
  \once \override Hairpin.height = 0.5
}

% same for the lower voice
hairpinII = {
  \once \override Hairpin.height = 0.5
}

% switch from upper staff (main droite) to lower (main gauche) and vice versa
mg = { \change Staff = "mg" \voiceOne }
md = { \change Staff = "md" \voiceTwo }

% merge note heads of same pitches from different voices like in measure 41
merge = {
  \once \override Staff.NoteColumn.force-hshift = 0
}

% new dynamic mark: ff with white background for measure 24
whiteff = #(make-dynamic-script #{
  \markup \whiteout \pad-markup #0.4 \dynamic ff
#})

% new dynamic mark: pp leggiero for measure 84
ppLeg = #(make-dynamic-script #{
  \markup {
    \dynamic pp
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \normal-text \italic leggiero
  }
#})

% move dynamics (either in x and y by a pair or in y by a number)
dyn =
#(define-music-function (parser location shift) (number-or-pair?)
   (_i "Shift dynamics.")
   (if (pair? shift)
       #{
         \once \override DynamicText.extra-offset = $shift
         \once \override DynamicTextSpanner.extra-offset = $shift
         \once \override Hairpin.extra-offset = $shift
       #}
       #{
         \once \override DynamicText.extra-offset = #(cons 0 shift)
         \once \override DynamicTextSpanner.extra-offset = #(cons 0 shift)
         \once \override Hairpin.extra-offset = #(cons 0 shift)
       #}))


% paper and header -------------------------------------

barLinePad = { % some dynamics sticking too close to bar lines
  \once \override Staff.BarLine.space-alist.next-note = #'(semi-fixed-space . 2.0)
}

hideTempo = { % for controlling midi speed
  \once \omit Score.MetronomeMark
}

%----- musical content -----------------------------------------------------------

RHone = \relative c' {
  \tempo "Alla marcia." 4 = 108
  s8 <b d>16[ q q8] s4 q8 s q | 
  s8 <b d>16[ q q8] s4 q8 s q |
  s8 <b d>16[ q q8] s r <g' b>16[ q q8] r |
  r8 q16[ q q8] r r <g c g'>16[ q q8] r |
  r8 <fis d' fis>16[ q q8] r s <g, d' e>8 s <b d e> |
  r8 <d fis d'>16[ q q8] s s <g, d' e> s <b d e> |
  r8 <d fis d'>16[ q q8]
  <fis, a>16( b <es, g c>8->[) <g c es>-.] <a c es a>-. <a d fis>-. |
  <g d' g>8-. <b d b'>-. <c d a'>16(-- q <b d b'>8-.) 
  <a d fis>-. <g d' g>-.  <g cis es>16-> q-. q8-. |
  \time 2/4
  <g cis e>8-. <fis d' fis>-. d-> r |
  \time 4/4
  s8 <b' d>16[ q q8] s4 q8 s q | 
  s8 <b d>16[ q q8] s4 q8 s q |
  s8 <b d>16[ q q8] s r <g' b>16[ q q8] r |
  r8 <b d>16[ q q8] r r <fis b es>16[ q q8] r |
  r8 <fis d' fis>16 q q8 r r <b g' b>16 q q8 r |
  s4 <a es' a>8-.[ <fis d' fis>-. <g d' g>->] s4 <es g es'>8-.
  \time 2/4
  s8 <a, c fis>8-.[ <g b g'>->] r
  \time 4/4
  
  % Seite 2
  s8 <g' b es g>16-.[ q-. q8-.] \beam <g, b es g>16-.[ q-. q8-.] <g' b es g>-. s4 |
  s8 <f b d  f>16-.[ q-. q8-.] <f, b d  f>16-.[ q-. q8-.] <f' b d  f>-. s4 |
  s8 <a d f  a>16-.[ q-. q8-.] <a, d f  a>16-.[ q-. q8-.] <f' a d f>8-. s4 |
  s8 <a c f  a>16-.[ q-. q8-.] <c, f a  c>16-.[ q-. q8-.] <a' c f a>8-. s4 |
  s8 \beam <c,  g'  >16-.[ q-. q8-.]  s4   <d g>16-.[ q-. q8-.] s8 |
  s8 <d'  e  a>16-.[ q-. q8-.] <d, e a   >16-.[ q-. q8-.]
  \clef bass 
  <cis, g' a>16-.[ q-. q8-.] s8

  \oneVoice
  a'''8\rest <a='' d fis a>16-. q-. \repeat unfold 3 { q-. <b d fis b>-. q-.  <a d fis a>16-. } q8\noBeam-.
  <fis fis'>16-. <es es'>-. <d d'>-. <c c'>-. <b b'>-. <a a'>-.
  <fis fis'>-. <es es'>-. <d d'>-. <c c'>-. <b b'>-. <a a'>-. fis'^>^( d)
  
  \voiceOne
  r8 <g b d>16[ q q8] r s q8 s q | 
  r8 q16[ q q8] s4 q8 s q |
  r8 q16[ q q8] r r <g b>16[ q q8] r |
  r8 <b d>16[ q q8] r r <g c g'>16[ q q8] r |
  r8 <fis d' fis>16[ q q8] r r <es fis a es'>4-> r8 |
  r8 <es g h es>4-> r8 r <d g d'>4-> r8 |
  r8 q16 q q8 s s2 |
  r8 \clef treble <d g d'>16[ q q8] r r <g, d'>16 q q8 s|
  r8 <fis d'>16 q q8 \oneVoice \stemUp r r q16 q q8 r |
  r8 d16 d d8 r r d16 d d8 r |
  
  % page 3
  \tempo "Un poco meno mosso" 4 = 50
  r8 \voiceOne <a'' d fis a>--( q-- <b d fis b>-- <c d fis c'>4-- <b b'>8 <a a'> |
  <g g'>8 <a a'> <b b'>4--) <fis fis'>--( <a a'>) |
  r8 <a d fis a>--( q-- <b d fis b>-- <c c'>4--) <b b'>8--( <a a'>) |
  <g g'>8--( <a a'> <b b'>4) <fis fis'>--( <a a'>) |
  r8 <b b'>--( <d g b>-- <c c'> <d d'>4 <c c'>8 <b b'>) |
  <c c'>8--( <d d'> <es es'>4) ~ <es es'>8 <e e'>( <fis fis'> <g g'>) |
  <fis, fis'>8( <g g'> <d' a'>2) ~ <cis a'>4 |
  r8 <fis a>8--( q-- <b, d fis b>-- <c d fis c'>4-- <b b'>8 <a a'>) |
  <g g'>8( <a a'> <b b'>4--) <fis c' d fis>8--( <g g'> <a c d a'>4) |
  r8 <fis' a>--( q-- <b, d fis b>-- <c es g c>4--) <b b'>8--( <a a'>) |
  
  %page 4
  <g g'>8--( <a a'> <b b'>4) <fis c' d fis>8--( <g g'> <a c d a'>4) |
  r8 <b b'>--( <d g b> <c c'> <d as' b d>4) <c c'>8( <b b'>) |
  <c es c'>8( <d d'> <es es'> <f f'>) <g g'>( <a a'>4 <b b'>8) |
  <fis, fis'>8( <a a'> <c c'>4) <fis, fis'>8( <a a'> <h h'>4) |
  <fis fis'>8( <g g'> <b b'>2) <g a a'>4 |
  
  s8 <d fis d'>16[ q q8] s s <g, d' e> s <b d e> |
  s8 <d fis d'>16[ q q8] s s <g, d' e> s <b d e> |
  \tempo "poco a poco accelerando e cresc. al Tempo I"
  s8 <d fis d'>16[ q q8] s r <d g>16 q q8 r |
  r8 <d gis>16 q q8 r r a' r a |
  \stemDown
  r8 <g b>16 q q8 r s q s q |
  s8 q16[ q q8] s s q s q |
  s8 q16[ q q8] s r <c, g' c>16[ q q8] r |
  
  r8 <cis g' cis>16[ q q8] r s <d g d'> s q |
  \tempo "Tempo I." %\voiceTwo
  s <g c es g>16[ q q8] s s q s <as c es as> |
  s8 <a c es a>16[ q q8] s s <g c es g> s <a c es a> |
  r8 <b es b'>16[ q q8] r r <d g d'>16[ q q8] r |
  \voiceOne
  r8 << { d--[( cis]) <b g' b>4-> <d d'>8->[( <cis cis'>]) } \\
        { <g b>4 d'8--[( cis]) <g' b>4 } >> \oneVoice <g b cis g'>8-> |
  
  r8 <b d g b>16 q q q q q q8 <d, b' d>->[ <e b' e>-> <fis d' fis>->] |
  <g d' g>8->  <d, g d'>->[ <es c' es>->] as,-.[ a-.] <a c fis>->[ <b d g>->] r |
  s8 <g' b es g>16-.[ q-. q8-.] \beam <g, b es g>16-.[ q-. q8-.] <g' b es g>-. s4 |
  s8 <f b d  f>16-.[ q-. q8-.] <f, b d  f>16-.[ q-. q8-.] <f' b d  f>-. s4 |
  s8 <a d f  a>16-.[ q-. q8-.] <a, d f  a>16-.[ q-. q8-.] <f' a d f>8-. s4 |
  s8 <a c f  a>16-.[ q-. q8-.] <c, f a  c>16-.[ q-. q8-.] <a' c f a>8-. s4 |
  s8 \beam <c,  g'  >16-.[ q-. q8-.]  s4   <d g>16-.[ q-. q8-.] s8 |
  s8 <d'  e  a>16-.[ q-. q8-.] <d, e a   >16-.[ q-. q8-.]
  \clef bass 
  <cis, g' a>16-.[ q-. q8-.] s8

  \oneVoice
  a'''8\rest <a='' d fis a>16-. q-. \repeat unfold 3 { q-. <b d fis b>-. q-.  <a d fis a>16-. } q8\noBeam-.
  <fis fis'>16-. <es es'>-. <d d'>-. <c c'>-. <b b'>-. <a a'>-.
  <fis fis'>-. <es es'>-. <d d'>-. <c c'>-. <b b'>-. <a a'>-. fis'^>^( d)
  
  \voiceTwo
  s8 <g b d g>16[  q q8] s r <g b d>16[ <g b es>] q[ <g b e> q8] | 
  s8 <f b d f>16[  q q8] s r <g b c>16[ <g b cis>] q[ <g b d> q8] |
  r8 <g b es>16[   q q8] r r <d g d>16[ q q8] r |
  r8 <cis g' cis>16[ q q8] r s <c a' c> s <h f' h> |
  s8 <c es g c>16[ q q8] s r <c es g>16[ <c es as>] q[ <c es a> q8] |
  s8 <es b>16[     q q8] s r <c es f>16[ <c es fis>] q[ <c es g> q8] |
  r8 <c es as>16[  q q8] r r <c es g>16[ q q8] r |
  r8 <c es fis>16  q q8] r r <c d fis >16[ q q8] r |
  s1*3
  \oneVoice
  \clef bass
  s1
  r8 g,=,16( a b d a d <b g'> d g) g( b d a d |
  \clef treble 
  <b g'> d g) g( b d a d <b g'> d g) g( b d a d |
  <b g'>8) r g,-. r r2
}

RHtwo = \relative c' {
  \set followVoice = ##t
  g8-_ s4 \mg b,8-_ d-_ \md s b'-_ s |
  g8-_ s4 \mg 
  \once \override Script.avoid-slur = #'inside
  \once \override Script.outside-staff-priority = ##f
  \once \override Script.extra-offset = #'(0.5 . -2.4)
  a,16[( b\espressivo d8]) \md s b'8-_ s |
  g8-_ s4 d'16( f g4.->) b,16( d |
  f4.->) b,16( d es4.->) g,16( a |
    \once \override Script.extra-offset = #'(0 . -3.3) %TODO
  d4.^>) fis,8-_ b-_ s g-_ s |
  d4.-> \mg fis,16[( a b8]) \md s g'-_ s |
  d4. s8 s2 | s1 |
  \time 2/4
  s2
  \time 4/4
  g8-_ s4 \mg b,8-_ d-_ \md s b'-_ s |
  g8-_ s4 \mg a,16[(^\< b\> d8\!]) \md s b'8-_ s |
  g8-_ s4 d'16( f g4.->) b,16( d |
  f4.->) f16( a b4.->) d,16( f |
  a4.^>) a16( c d4.->) d,8-. |
  cis8-. c-. s s s b-. h-. s |
  \time 2/4
  c8-. s4.
  \time 4/4
  
  \oneVoice
  <b'=' es g b>8-> s8*5 <b g' b>16( <c c'> <d d'> <es es'> |
  <d='' b' d>8->)  s8*5 <d b' d>16( e' <f f,> g |
  <f,='' d' f>8->) s8*5 <a f a,>16( h <c c,> d |
  <c,='' a' c>8->) s8*5 <c' as c,>16( d <es es,> f |
  <es,='' c' es>8->) s4 <es es'>16( <f f'> <g b d g>8->) s4 d'16( f |
  <a, d a'>8->) s2.
  \clef treble \once \slurUp \stemUp
  g,,16( a |
  <d, d'>1^>)
  s1
  \voiceTwo
  g4.-> b8-. d-. s b-. s |
  g4.-> b8-. d-. s b-. s |
  g4.-> d'16( f g4.->) b,16( d |
  f4.->) b,16( d es4.->) g,16( a |
  d4.->) c8-. d,4.-> h'8-. |
  d,4.-> b'8 d,4.-> a'8 |
  d,4.-> \clef bass a'8-. d,-. gis-. d-. g-. | 
  d4.-> \clef bass g8-. d4.-> fis8-. |
  d4.-> s8 s2 |
  s1
  
  % page 3
  \clef treble
  s2. <d'' fis>4 | <c es>2 <c d> |
  s2 <es g>4 <c es> | <cis e>2 <c d> |
  s2 <g' b>4 g | q q2 <a e'>4 |
  <a, d>4 a( g2) | s8 a16( c d4--) s <d fis> |
  <c es>4 q a2-- | s8 a16( c d4) s <c es> |
  
  % page 4
  <cis e>4 q s2 | s1 |
  s4 <g' b> <b d>2 | s dis, ~ |
  dis4 <d e>--( <cis f>-- <cis fis>--)
  
  d,,8 s s fis-. b-. s g-. s |
  d8-. s s fis-. b-. s g-. s |
  d8-. s s d'-. es,4.-- d'8-. |
  e,4.-. d'8-. f,-. d'-. fis,-. d'-. |
  \voiceOne
  g,4.-- b8-. d-. s b-. s |
  g-. s s b-. d-. s b-. s |
  g-. s s g'-. as,4.-. g'8-. |
  
  %page 5
  a,4.-- g'8-. b,-. s h-. s |
  c8-. s s es-. g-. s es-. s |
  c8-. s s es-. g-. s es-. s |
  cis4.-> b'8-. d,4.-> b'8-. |
  \voiceTwo \stemUp
  e,2.-> r4
  s1*2
  \stemDown
  <b'=' es g b>8-> s8*5 <b g' b>16( <c c'> <d d'> <es es'> |
  <d='' b' d>8->)  s8*5 <d b' d>16( e' <f f,> g |
  <f,='' d' f>8->) s8*5 <a f a,>16( h <c c,> d |
  <c,='' a' c>8->) s8*5 <c' as c,>16( d <es es,> f |
  <es,='' c' es>8->) s4 <es es'>16( <f f'> <g b d g>8->) s4 d'16( f |
  <a, d a'>8->) s2.
  \clef treble \once \slurUp \stemUp
  g,,16( a |
  <d, d'>1^>)
  s1
  \voiceOne
  g8-> s s a16( b d2->) |
  g,8-> s s a16( b d2->) |
  g,4.-- es'8-. g,4.-- e'8-. |
  g,4.-- f'8-. g,-. fis'-. g,-. g'-. |
  g,8 s s h16( c es2->) |
  g,8 s s a16( b es2->) |
  g,4.-- as'8-. g,4.-- a'8-. |
  es,4.-- b''8-. d,,4.-- <d' d'>8-. |
  g,8-. s2..
  s1*3
  s1*3
}

%---------- Left Hand parts

LHone = \relative c, {
  <g g'>8-_ s4 \voiceTwo b8-_ d-_ \voiceOne s <b b'>-_ s |
  <g g'>8-_ s4 \voiceTwo a16[(_\< b\> d8\!]) \voiceOne s <b b'>-_ s |
  <g g'>8-_ s4 d''16( f <g, g'>4.->) b16( d |
  <f, f'>4.->) b16[( d] <es, es'>4.->) g16[( a] |
  <d, d'>4.->) <fis, fis'>8-_ <b b'>-_ s <g g'>-_ s |
  <d d'>4.-> \voiceTwo fis16[( a b8]) \voiceOne s <g g'>-_ s |
  <d d'>4.-> <d' d'>8-. <c c'>-. <b b'>16( <a a'> \beam <fis fis'>8->) <c' c'>-. | \beam
  <b b'>-.[ <e, e'>-.] <fis fis'>-. <g g'>-. <c c'>-. <b b'>-. \beam <es b'>16-> q-. q8-. | \beam
  <b b'>-. <a a'>-. d-> <d d,>-.
  
  <g, g'>8-_ s4 \voiceTwo b8-_ d-_ \voiceOne s <b b'>-_ s |
  <g g'>8-_ s4 \voiceTwo a16[(_\< b\> d8\!]) \voiceOne s <b b'>-_ s |
  <g g'>8-_ s4 d''16( f <g, g'>4.->) b16( d |
  <f, f'>4.->) f'16[( a] <b, b'>4.->) d16[( f] |
  <a, a'>4.->) <a a'>16[(-_ <c c'>-_] <d d'>4.->) <d, d'>8-. |
  <cis cis'>8 <c c'> s4. <b b'>8 <h h'> s |
  \time 2/4
  <c c'>8-. <d d'>-. <g, g'>-> r |
  \time 4/4

  s8 <g'' b es>16-.[ q-. q8-.] \beam <es, b'>16-.[ q-. q8-.] <g' b es>8-. s4 |
  s8 <f b d>16-.[    q-. q8-.] \beam <b, b,>16-.[  q-. q8-.] <f' b d>8-.  s4 |
  s8 <f a d f>16-.[  q-. q8-.] <d, a'>16-.[  q-. q8-.] <f' a d>8-.  s4 |
  s8 <f a c f>16-.[  q-. q8-.] <f, c'>16-.[  q-. q8-.] <f' a c>8-.  s4 |
  s8 <g, es'>16[(    c,  q8]) s4 <b' g'>16[(  es, q8]) s8 |
  s8 <a' e' g>16-.[  q-. q8-.] <a, e' g>16-.[ q-. q8-.] <a, e'>16-.[ q-. q8-.] s8 |
  
  f''8\rest \clef treble <a d fis a>16-. q-. \repeat unfold 3 { q-. <b d fis b>-. q-.  <a d fis a>16-. } q8-.\noBeam
  \oneVoice
  fis'16-. es-. d-. c-.
  \clef bass
  b-. a-. fis-. es-. d-. c-. b-. a-. fis->( d)
  
  <g, g'>4.^> <b b'>8-. <d d'>-. s <b b'>-. s |
  <g  g'>4.^> <b b'>8-. <d d'>-. s <b b'>-. s |
  <g  g'>4.-> d''16( f <g, g'>4.->) b16( d |
  <f, f'>4.->) b16[( d] <es, es'>4.->) g16[( a] |
  <d, d'>4.->) c'8-.  <d,, d'>4.-. h''8-. |
  <d,, d'>4.-. b''8-. <d,, d'>4.-. a''8-. |
  <d,, d'>4.-. a''8   <d,, d'>8-.  gis'8-. <d, d'>8-. g'8 |
  <d, d'>4.-. g'8   <d, d'>4.-. fis'8 |
  <d, d'>4.-. a''8 d,4.-- a'8-. |
  d,4.-- a'8-. d,4.-- s8 |
  
  % page 3
  s1 | s2. \md \slurUp r8 a''=16( c ~ |
  <fis, c' d>2--) s | s2. r8 a16( c |
  <b d>2--) s | s1 \mg |
  s2. a8-- b-- | \md <c fis,>2-- ~ c8 \mg d-- e-- fis-- | \mg  
  \once \offset X-offset -5 TextScript
  g4---\markup \italic "m.d." fis8-- \md g-- s4 \mg a,8-- b-- |
  \md <c fis,>2 ~ c8 \mg d-- es-- f-- |
  \once \offset X-offset -5 TextScript
  g4---\markup \italic "m.d." fis8-- \md g-- a4.-- a16( c |
  <d, b' d>2--) r8 d'-- es-- f-- |
  g4 \mg g, ~ g8 a-- b-- c-- \md |
  d2 s \mg
  \oneVoice
  \omit TupletNumber
  s4 \tuplet 3/2 { 
    <d, e>16--( b g a, g' g)(
    <cis f>-- b g a, g')( g <cis fis> a) a( g a,) a( |
  }
  \voiceOne
  <d,, d'>8)  s s <fis fis'>-. <b b'>-. s <g g'>-. s |
  <d d'>8-. s s <fis fis'>-. <b b'>-. s <g g'>-. s |
  <d d'>8-. s s d'-. <es, es'>4.-- d'8-. |
  <e, e'>4.-. d''8-. <f,, f'>8-. d''-. <fis,, fis'>-. d''-. |
  <g,, g'>4.-- <b b'>8-. <d d'>-. s <b b'>-. s |
  <g g'>8-. s s <b b'>8-. <d d'>-. s <b b'>-. s |
  <g g'>8-. s s <g' g'>-. <as, as'>4. <g' g'>8-.
  
  <a, a'>4.-- g''8-. <b,, b'>8-. g''-. <h,, h'>-. g''-. |
  <c,, c'>8-. s s <es es'>-. <g g'>-. s <es es'>-. s |
  <c c'>8-. s s <es es'>-. <g g'>-. s <es es'>-. s |
  <cis cis'>4.-> <b' b'>8-. <d, d'>4.-> <b' b'>8-. |
  <e, e'>2.-> s8 <es es'>8-> |
  <d d'>1-> |
  s1 |
  
  s8 <g' b es>16-.[  q-. q8-.] <es, b'>16-.[ q-. q8-.] <g' b es>8-. s4 |
  s8 <f b d>16-.[   q-. q8-.] \beam <b, b,>16-.[  q-. q8-.] <f' b d>8-.  s4 |
  s8 <f a d f>16-.[ q-. q8-.] <d, a>16-.[  q-. q8-.] <f' a d>8-.  s4 |
  s8 <f a c f>16-.[ q-. q8-.] <f, c'>16-.[  q-. q8-.] <f' a c>8-.  s4 |
  s8 <g, es'>16[(   c,  q8]) s4 <b' g'>16[(  es, q8]) s8 |
  s8 <a' e' g>16-.[ q-. q8-.] <a, e' g>16-.[ q-. q8-.] <a, e'>16-.[ q-. q8-.] s8 |
  
  f''8\rest \clef treble <a d fis a>16-. q-. \repeat unfold 3 { q-. <b d fis b>-. q-.  <a d fis a>16-. } q8-.\noBeam
  \oneVoice
  fis'16-. es-. d-. c-.
  \clef bass
  b-. a-. fis-. es-. d-. c-. b-. a-. fis->( d)
  \voiceOne
  <g, g'>8^> s s a'16( b <d, d'>2->) |
  <g, g'>8^> s s a'16( b <d, d'>2->) |
  <g, g'>4. es''8-. <g,, g'>4. es''8-. |
  <g,, g'>4. f''8-. <g,, g'>8-. fis''-. <g,, g'>8-. g''-. |
  <g,, g'>8^> s s h'16( c <es, es'>2->) |
  <g, g'>8^> s s a'16( b <es, es'>2->) |
  <g, g'>4. <as' as'>8-. <g, g'>4. <a' a'>8-. |
  <es, es'>4. <b' b'>8-. <d, d'>4. d''8-. |
  <g,, g'>8^> s2..
  s1*3
  g=,,8 r r d' <g, d'> r d''16( e fis8) |
  <g, d' g>8 r \clef treble d''16( e fis8) 
  <g, d' g>8 r \clef treble d''16( e fis8) |
  <g, d' g>8 r \clef bass g,-. r r2 |
}

LHtwo = \relative c {
  s8 <d g>16[ q q8] s4 <d g>8 s q | 
  s8 <d g>16[ q q8] s4 <d g>8 s q |
  s8 <d g>16[ q q8] s r <d b' d>16[ q q8] s |
  r8 <d b' d>16[ q q8] s s <g a c>16[ q q8] s |
  s8 <fis a d>16[ q q8] s s <d e> s q |
  r8 <a fis' a>16[ q q8] s4 <d e>8 s q |
  r8 <a fis' a>16[ q q8] s8 s2
  s1.
  
  s8 <d g>16[ q q8] s4 <d g>8 s q | 
  s8 <d g>16[ q q8] s4 <d g>8 s q |
  s8 <d g>16[ q q8] s r <d b' d>16[ q q8] s |
  r8 <d b' d>16[ q q8] s s <fis b es>16[ q q8] s |
  s8 <fis d'>16[ q q8] s s <b d g>16[ q q8] s |
  s4 <a es fis>8-. <fis a d>-. <g d'>-> s4 <es g>8-. |
  \time 2/4
  s2
  \time 4/4
  
  <g= b es g>8-> s8*5 <g b>16( c d es |
  <f,= b d>8->)  s8*5 <f b d>16( e' f g |
  <a,= d f>8->)  s8*5 <f a>16( h c d |
  <f,= a c>8->)  s8*5 <f as c>16( d' es f |
  <g,= c es>8->) s4 es'16( f <g d b>8->) s4 d16( g |
  <a,= e' a>8->) s2. 
  \once \slurUp \stemUp
  g,,16( a | \voiceTwo
  
  %\once \override Script.extra-offset = #'(0 . +7.3)
  <d d,>1->) | s |
  
  r8 <d' g b d>16[ q q8] r s q s q | 
  r8 q16[ q q8] r s q s q |
  r8 q16[ q q8] r r <d b' d>16[ q q8] s |
  r8 <d b' d>16[ q q8] s s <g a c>16[ q q8] s |
  r8 <fis a d>16[ q q8] r r <c fis a c>4 r8 |
  r8 <h es g h>4 r8 r <b d g b>4 r8 |
  r8 <a d g a>16 q q8 s8 s2 |
  r8 <a d g>16 q q8 r r <a d>16 q q8 r |
  r8 q16 q q8 s s2 |
  s2.. 
  \oneVoice
  <d,, d'>16-. q
  
  % page 3
  \omit TupletNumber
  \tuplet 3/2 {
    <d=,, d'>16( 
       a'' d fis c' d fis d c fis, d a)
    d,( a' d fis c' d fis d c fis, d a) |
    c,( a' d g c es g es c g d a)
    d,( a' d fis c' d fis d c fis, d a) |
    d,( a' d fis c' d fis d c fis, d a)
    d,( a' d g c es g es c g d a) |
    \once \stemDown
    d,( a' g' a b cis g' cis, b g a, d,) ~
    d(  a' d fis c' d fis d c fis, d a) |
    g(  d' g b \clef treble d g b g d \clef bass b g d)
    f,( d' g a b d g d a g d f,) |
    es( b' g' b es f g es b g b, es,)
    d(  b' g' a b g') cis,,,( a' g' a g' a) |
    d,,,( a' d g a d) fis,( a d fis e fis
    e d e d a d) a( g e) b'( g e) |
    \mergeDifferentlyHeadedOn
    \voiceTwo
    d,( a' d fis c' d fis d c fis, d a)
    d,( a' fis') d'( c fis,) e'( c fis,) fis'( c fis,) |
    d,( a' d g c es) fis( es c g d a)
    d,( a' d d a' d) a( fis d) b'( fis d) |
    d,( a' d fis c' d fis d c fis, d a)
    d,( a' g') d'( c g) es'( c g) f'( c g) |
    
    % page 4
    d,( a' g'a b cis) fis( cis b g a, d,) ~
    d( a' d d a' d c a d, d d, d') |
    g,( d' g b \clef treble d g b g d \clef bass b g d)
    f,( d' g as b \clef treble d as' es b d \clef bass as b,) |
    es,( b' g' b es f) \voiceTwo g( es b g b, es,) 
    e( g' <b d>) \clef treble a'( g d) b'( g d) c'( g d) | \clef bass
    a,,( a' fis' a d e fis d a fis a, a,) ~ 
    a( a' fis' a h dis fis dis h a fis a,) |
    a,( a' fis' g b es) 
  }
  s2. |
  s8 <a,, fis' a>16[ q q8] s s <d e> s q |
  s8 <a fis' a>16[ q q8] s s <d e> s q |
  s8 <a fis' a>16[ q q8] s r <d g>16[ q q8] r |
  r8 <d gis>16[ q q8] r s2 |
  r8 <d b' d>16[ q q8] r s q s q |
  s8 q16[ q q8] s s q s q |
  s8 q16[ q q8] s r <c g'>16[ q q8] r |
  
  % page 5
  r8 <cis g'>16[ q q8] r8 s2 |
  r8 <g' c es>16[ q q8] s s q s q |
  s q16[ q q8] s s q s q |
  r8 <g b es>16[ q q8] r r <b d g>16[ q q8] r |
  r8 << { d--[( cis]) \clef treble <b g'>4-> <g' b>-> } \\
        { <g, b>4 d'8--[( cis]) d--[( cis]) } >> \clef bass s8
  \oneVoice
  r8 \clef treble <b d g b>16 q q q q q q8 <d g b>8->[ <cis g' b>-> <c d a'>->] |
  <b d g>8-> \clef bass <h, g'>->[ <c g'>->] <as, as'>-. <a a'>-. <d d'>-> <g, g'>-> r8
 
  <g''= b es g>8-> s8*5 <g b>16( c d es |
  <f,= b d>8->)  s8*5 <f b d>16( e' f g |
  <a,= d f>8->)  s8*5 <f a>16( h c d |
  <f,= a c>8->)  s8*5 <f as c>16( d' es f |
  <g,= c es>8->) s4 es'16( f <g d b>8->) s4 d16( g |
  <a,= e' a>8->) s2. 
  \once \slurUp \stemUp
  g,,16( a | \voiceTwo
  
  %\once \override Script.extra-offset = #'(0 . +7.3)
  <d d,>1->) | s |
  
  s8 <d' g b d>16[ q q8] s r <g b d>16[ <g b es>]  q[ <g b e> q8] |
  s8 <d  f b d>16[ q q8] s r <g b c>16[ <g b cis>] q[ <g b d> q8] |
  r8 <g  b es>16[  q q8] r r <e g b>16[ q q8] s |
  r8 <f  g b>16[   q q8] r s2 |
  r8 <es g>16[     q q8] s s <es g>16[ <es as>] q[ <es a> q8] |
  s8 <es b'>16[    q q8] s r <es f>16[ <es fis>] q[ <es g> q8] |
  r8 <es as>16[    q q8] r r <es a>16[   q q8] r |
  r8 <es as>16[    q q8] r r <d b'>16[   q q8] r |
  s8 <g, d'>16[   q q8] s s2

  % page 6
}



%------------ Dynamics

whiteFFMarkup = \markup {\whiteout \pad-markup #0.2 \dynamic ff}
whiteff = #(make-dynamic-script whiteFFMarkup)

dynamics = {
  \once \offset X-offset -3 DynamicText 
  %\once \override DynamicText.extra-offset = #'(0 . -2)
  s4\p s2. | s1 | s4 s\cresc s2 |
  s1 | 
  \once \offset X-offset #0.3 DynamicText
  s8\f 
  \once \override Dynamics.DynamicTextSpanner.extra-offset = #'(8 . 5.45) %TODO
  s\dim s2. | s1 |
  s4. s8\p \< s4 s8\! s\> | s8 s\! s4 s\dim s |
  \time 2/4 s4\pp s |
  \time 4/4 
    \once \offset X-offset -3 DynamicText 
  s4\p s2. |
  s1 | s4 s\cresc s2 |
  s1 | s2 s8 s\f s s-\markup \whiteout "marcato" |
  s1 | s2 |
  
  \pageBreak
  % page 2
  s4\f s2. | s1 | s |
  s | s | s4\f s2. |
  \once \offset X-offset -4 DynamicText
  s8\ff s\p\< s4*3 | s1\! |
  \once \offset X-offset -3 DynamicText
  %\once \override DynamicText.whiteout = ##t
  s1\whiteff | s1*5 | s4. s8\dim s2 |
  s1*2 | s2\p s4\dim s\! |
  
  \pageBreak
  
  s1\pp | s |
  s1 | s |
  s8 s\cresc s2. | s8\mf s4. s8\< s\! s\> s\! |
  s1\p | s |
  s1 | s |
  
  \pageBreak
  
  s1 | s8 s\cresc s2. |
  s2\mf s8 s\> s s\! |
  s4\p s\< s\! s |
  s16 s8\> s32 s\! s4 s2-\markup "dim. e rit." |
    \once \offset X-offset -4 DynamicText

  s1\ppp | s1*6 |
  
  \pageBreak
  s1 | s1\f | s2 s\cresc |\break
  s1*2 | s1\ff |
  s1 | s\f | s | \break | s1*3 |
  s1\f | s8\ff s\p \< s2. | s1\! |
  
  \pageBreak
  
  s1\ff | s1*7 | s8 s\dim s2. |
  s1 | s\p | s\dim |
  s\pp-\markup \italic "leggiero" | s1*2 |
  \bar "|."
  
}

breaks = {
  s1 \noBreak s \noBreak s \break
  s1 \noBreak s \noBreak s \break
  s1 \noBreak s \noBreak s2 \break
  s1 \noBreak s \noBreak s \break
  s1 \noBreak s \noBreak s \noBreak s2 \break
  \repeat unfold 6 { s1 \noBreak s \noBreak s \break }
  \repeat unfold 8 { s1 \noBreak s \break }
  \repeat unfold 12 { s1 \noBreak s \noBreak s \break }
}

pagebreaks = {
  \repeat unfold 8 { s1 \noPageBreak } s2 \noPageBreak
  \repeat unfold 6 { s1 \noPageBreak } s2 \pageBreak
  \repeat unfold 18 { s1 \noPageBreak } \pageBreak
}

%-------Typeset music and generate midi
\score {
  \context PianoStaff <<
    %-Midi instrument values at 
    % http://lilypond.org/doc/v2.18/Documentation/snippets/midi#midi-demo-midiinstruments
    \set PianoStaff.midiInstrument = "acoustic grand"
    \new Staff = "md" <<
      \clef treble \global 
      \new Voice { \voiceOne \voiceStyleOne \RHone }
      \new Voice { \voiceTwo \voiceStyleTwo \RHtwo } 
    >>
    \new Dynamics { \dynamics }
    \new Staff = "mg" <<
      \clef bass \global 
      \new Voice { \voiceOne \voiceStyleThree \LHone }
      \new Voice { \voiceTwo \voiceStyleFour \LHtwo }
      %\breaks
      \pagebreaks
    >>
  >>
  \layout {
    \accidentalStyle piano
    \context {
      \Score
      \override TupletBracket.bracket-visibility = ##f
      \override DynamicTextSpanner.style = #'none
        \mergeDifferentlyHeadedOn \mergeDifferentlyDottedOn
       %\set Staff.followVoice = ##t
    }
  }
  \midi {
    \tempo 4 = 80
    \context {
      \Score
      midiMinimumVolume = #0.3
      midiMaximumVolume = #1
    }
  }
}
