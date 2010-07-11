\version "2.12.3"

%%% Definitions for brevity
% Change staff
cu = { \change Staff = "upper" }
cl = { \change Staff = "lower" }
% simpler sustain commands
ss =  \sustainOn
us =  \sustainOff
% suspend collision-resolution so that notes line up
lu = {\once \override NoteColumn #'ignore-collision = ##t }
% grace note with slashed stem but no slur following
sl = \once\override Stem #'stroke-style = #"grace"
% supress the dashed leader after "cresc"
dd = \once\override DynamicTextSpanner #'dash-period = #-1.0
% fingering slides
fingerChangeA = \markup\finger\tied-lyric#"3~2"
fingerChangeB = \markup\finger\tied-lyric#"2~3"
fingerChangeC = \markup\finger\tied-lyric#"3~5"
fingerChangeD = \markup\finger\tied-lyric#"5~3"
% temporarily let markup collide with or come inside slurs
inside = {
  \once \override TextScript #'outside-staff-priority = ##f
  \once \override TextScript #'staff-padding = #'()
}

%%% Note entry
\include "english.ly"
\parallelMusic #'(rhPrimaryA rhGreenA lhRedA lhBlueA pedalA) {
  r4 cs^3\p b a |
  s1 |
  r4 <e_3 gs_1>4_\( <d fs> <cs_3 e_1> |
  s1 |
  s1 |\noPageBreak

  gs4^2 \acciaccatura b8^5 a4^4\< g fs |
  s1 |
  \override TextScript #'avoid-slur = #'inside
  <bs ds>4 \inside <cs e_1>_\fingerChangeA <b_3 d_1> <a cs> |
  s1 |
  s1 |\noPageBreak

  es4 fs^3 e d\! |
  s1 |
  <gs!_5 b_3>4 <a_4 cs_2> <gs_3 b_1> s |
  s2 s4  <fs a>4^~ |
  s1 |\noPageBreak

  cs2.\>^4 bs4\! |
  \cl\stemUp s2 ds! |
  e2\) r4 \stemDown gs,,4_2_( |
  \stemUp a gs2.^\markup{\italic "m.d."} |
  s1 |\noPageBreak

  \barNumberCheck #5
  % Problem: dynamics and/or pedal sometimes collide with beams
  %  when a voice changes staff at the end of an auto-beamed group.
  % Workaround: mark beams explicitly where this problem occurs
  ds4.\> cs8\! r2 |
  <e gs>2 s2 |
  cs,8) cs'-5\( gs'-4 e'-1 ds-4[ cs-5 gs'-2 e'-1] |
  s1^\markup{\italic "sempre legato"} |
  s8\ss s\< s r\us s s\ss s s |\allowPageTurn

  \stemUp r2 <gs' gs'>2\> |
  s1 |
  \cu ds8_2 cs e_1 fs_2 gs8 cs^2 ds \acciaccatura fs e |
  s2 r2 |
  s8 s s r\us\! s s s s |\noPageBreak

  <gs gs'>1\> |
  \cu s4 \inside s4^\fingerChangeB s2 |
  \tieDown ds2.~ds8 cs\) |
  \stemNeutral r8 cs,,\( gs' e' ds-4[ cs gs' e'] |
  s8 s\ss s s s\< s s s |\noPageBreak

  r2\! <gs gs'^4>4. <as as'>8 |
  s2. <e''-3>4 |
  \cl\stemNeutral s8 s s s r4 r8 fs,,,8-2~ |
  \cu\stemDown ds8_2 cs e fs_2 gs8 cs e as, |
  s8 s r\us s s s s\! s |\noPageBreak

  \barNumberCheck #9
  s2\> r2\! |
  s1 |
  fs8\( b, fs' ds'_1 cs-4[ b fs' ds'] |
  \sl\grace as8_2 <as_1 e' cs'>4.\arpeggio <b ds b'>8\) s2 |
  s8\ss s r\us s s\< s\ss s s |\allowPageTurn

  r2 <fs fs'>2 \> |
  s1 |
  \cu\stemDown cs8_3 b ds_2 e fs8 b cs \acciaccatura e d |
  \cl\stemNeutral s2 r2 |
  s8 s s r\us\! s s s s |\noPageBreak

  <fs fs'>1\> |
  s4 \inside s4^\fingerChangeB s2 |
  cs2.~cs8 b\) |
  r8 b,,,8\( fs' d' cs-4[ b fs' d'] |
  s8 s\ss s s s\< s s s |\noPageBreak

  r2\! <fs fs'^4>4. <gs gs'^5>8 |
  s2 s4 d4 |
  \cl\stemNeutral s8 s s s r4 r8 e,,,-2~( |
  \cu\stemDown cs8_3 b d_2 e fs8 b d gs, |
  s8 s s r\us s s s\! s |\noPageBreak

  \barNumberCheck #13
  s4.\> s8\! r4 \stemDown<a cs a'>\( |
  s1 |
  e8 a, e' cs' b-4 a e' cs') |
  \sl\grace gs8_2 \stemNeutral <gs_1 d' b'>4.\arpeggio <a cs a'>8\) s2 |
  s8\ss s r\us s s s\ss s r\us |\noPageBreak

  <a cs a'>4 <gs b gs'> <fs a fs'> <gs b gs'> |
  s1 |
  \stemDown r8 es,,( cs'_3 cs') r fs,,( cs' cs') |
  s1 |
  s8 s\ss s r\us s s\ss s r\us |\noPageBreak

  <fs fs'>2.~<fs fs'>8. <e e'^4>16 |
  a1 |
  \stemNeutral r8^\markup{\italic "poco cresc."} d,,( a'_2 fs' e_4 d a' fs') |
  s1 |
  s8 s\ss s s s s s r\us |\noPageBreak

  <e e'-5>4 <d d'-4>2 \stemUp <d a'^3>4-> |
  a2. s4 |
  r8 d,,( a' fs' e d a' fs') |
  s1 |
  s8 s\ss s s s s s r\us |\noPageBreak

  \barNumberCheck #17
  \once\override NoteColumn #'force-hshift = #0.5
  d2.~d8\>e |
  \stemDown <b, g' b>1-\markup{\italic "ten."} |
  r8 g,,,8 g'_1 d'_2 e d_3 g e |
  s1 |
  s8 s\ss s s s s s r\us |\noPageBreak

  <fs a>4. <d fs>8 <a~ fs' a>2 |
  a2 s4 s8 s8|
  d8_1 a d, fs'_1 d_2 a_3 g_4 fs_1 |
  s1|
  s8\ss s s s s s r\us s |\noPageBreak

  <a cs fs a>2\!\) r2 |
  s1 |
  fs,8\( fs'_5 cs' a' gs!-4 fs cs' a' |
  s1 |
  s8\ss s\< s s s s s s |\allowPageTurn

  r2 <cs' cs'-5>2\> |
  s1 |
  \cu\stemDown gs8_3 fs a b cs8 fs gs \acciaccatura b a |
  \cl\stemNeutral s8 s s s r2 |
  s8 s s r\us\! s s s s |\allowPageTurn

  \barNumberCheck #21
  <cs cs'>1\> |
  s4 s4^\fingerChangeB s2 |
  gs2.~gs8 fs\) |
  r8 \stemDown fs,,8\( cs' a' gs-4 fs cs' a' |
  s8 s\ss s s s s s s |\noPageBreak

  r2\< <cs cs'-4>4. <ds ds'>8\! |
  s2 s4 \stemUp a''4 |
  \cl\stemNeutral s2 r4 r8 b,,,-2~ |
  \cu\stemDown gs8_3 fs a b cs fs a ds, |
  s8 r\us s s s s s s |\noPageBreak

  s2\> r2\! |
  s1 |
  b8\( e, b' gs'_1 fs-4 e b' gs' |
  \sl\grace ds8_2 \stemNeutral <ds_1 a' fs'>4.\arpeggio <e gs e'>8\)  s2 |
  s8 s\ss s r\us s\< s\ss s s |\allowPageTurn

  r2 <b b'>\> |
  s1 |
  \cu\stemDown fs8_3 e gs a b e-2 fs \acciaccatura a g |
  \cl\stemNeutral s8 s s s r2 |
  s8 r\us s s\! s s s s |\noPageBreak

  \barNumberCheck #25
  <b b'>1\> |
  s4 \inside s4^\fingerChangeB s2 |
  fs2.~fs8 e\) |
  r8 e,,,\( b' g' fs-4[ e b' g'] |
  s8 s\ss s s s\< s s s |\noPageBreak

  r2\! <b b'>4. <cs cs'>8|
  s1|
  s2 \cl\stemNeutral r4 r8 a,,,-5~|
  \cu\stemDown fs8_3 e g a b e g cs,|
  s8 s r\us s s s s s\! |\noPageBreak

  s4 \hideNotes d'2^\( \unHideNotes <c, f c'>4 |
  \crescTextCresc\dd\endSpanners s4\< s4 s2 |
  a8[_\( bf-4 f'-2 d'_1] c_4 bf \cu\stemDown f' d'\) |
  \stemNeutral <cs g' cs>4 <d f d'>2\) s4 \cl |
  s8 s\ss s s s s s r\us |\noPageBreak

  <c ef c'>4 <bf g' bf-5> <g ef' g-4> <bf g' bf> |
  s1|
  \cl\stemNeutral r8 ef,,,( bf' g' f-4 ef bf' g') |
  s1|
  s8 s\ss s s s s s r\us |\noPageBreak

  \barNumberCheck #29
  <f bf d f>1\> |
  s1|
  r8 f,,( d' f_1 g_4 f ef'_1 d_2) |
  s1 |
  s8 s\ss s s s s s r\us |\allowPageTurn\myExplicitPageBreak

  <d'^4 f-5>2~<d f>4. ef8-5 |
  \stemDown <ef,_1 a_2>1 |
  f,,,8( f'_1 c'_3 ef_2 g_1 f_5 d' c) |
  s1 |
  s8\ss s s s s s s r\us |\noPageBreak

  df4-4\)\! r4 \stemNeutral <bf df bf'>2\f\(|
  <df bf'>4 s4 s2 |
  gf,,8_( gf'_1 df'_3 bf'_1 af_4 gf df' bf') |
  s1|
  s8\ss s s s s s s r\us |\noPageBreak

  <af cf af'>4 <gf cf gf'> <ef cf' ef-4> <gf cf gf'> |
  s1 |
  r8 cf,,,( gf' ef' df-2 cf gf' ef') |
  s1 |
  s8 s\ss s s s s s r\us |\noPageBreak

  \barNumberCheck #33
  <df gf bf df-4>2 <ef bf' df ef> |
  \dd s2\< s2\! |
  df,,8( df'_1 gf_3 bf_1 af g cf bf) |
  s1 |
  s8\ss s s s r\us s s s |\noPageBreak

  <ef af cf ef>2.\< <f cf' df f>4 |
  s1 |
  df,8( g_3 af cf bf af ef'_1 df) |
  \shiftOnn df,,1 |
  s1 |\noPageBreak

  \stemDown <f f'>4.\> <gf gf'-5>8\p \) r2|
  \stemUp <bf' df>2 s2 |
  gf,,,8\( gf'_1 df'_3 bf'_1 af_4 gf df' bf' |
  s1 |
  s8\ss s s s s s s s |\allowPageTurn

  \stemUp r2 df' |
  s2 \lu df'4.. df16 |
  \cu\stemDown af8_3\< gf bf cf df\> ff bf af^3 |
  \cl\stemNeutral s2 r2 |
  s8 s r\us s s2 |\noPageBreak

  \barNumberCheck #37
  <df ff df'>1 |
  s8 s^\markup\finger"4" s4 s2 |
  af2.\>~af8 gf\) |
  gf,,8 gf'_1\( df'_3 bf'_1 af_4 gf df' bf' |
  s1\ss | \noBreak

  r2 <df df'>4. <d d'>8 |
  s1|
  s2\! \cl\stemNeutral r4 r8 ff,,,8-4~ |
  \cu\stemDown af8_3 gf bf cf df\< ff bf af |
  s8 s r\us s s2 |\noPageBreak

  s1 |
  s1 |
  ff8\( ef bf' g' f_4 ef bf' g' |
  \stemNeutral <ef g ef'>2\> <bf g' bf-4>4\)\! r4 |
  s8 s\ss s s s2 |\allowPageTurn

  r2 bf |
  s2 \lu bf4.. bf16\! |
  \cu\stemDown f8\< ef g af_2 bf\> ef g f |
  \cl\stemNeutral s2 r2 |
  s8 s r\us s s2 |\noPageBreak

  \barNumberCheck #41
  <bf g' bf>1 |
  s1 |
  f2.^4\>~f8 ef\) |
  ef,,,,8 ef'_5\( bf'_3 g'_1 f_4 ef bf' g' |
  s1\ss |\noPageBreak

  r2 <bf bf'>4. <b b'>8 |
  s2 s4 g^4 |
  s2\! \cl\stemNeutral r2 |
  \cu\stemDown f8\< ef g_1 af_2 bf ef g b, |
  s8 s r\us s s2 |\noPageBreak

  ef2 r2 |
  s1 |
  af,,,,8\( af'_5 ef'_3 c'_1 bf_4 af ef' c' |
  \stemNeutral <b! g'^3 b!^5>4\> <c af' c>4\)\! s2 |
  s8\ss s s s s2 |\allowPageTurn

  r2 ef |
  s2 \lu ef'4.. ef16\! |
  \cu\stemDown bf8\< af c_1 df_2 ef\> gf c^4 bf |
  \cl\stemNeutral s2 r2 |
  s8 s r\us s s2 |\noPageBreak

  \barNumberCheck #45
  <ef gf ef'>1 |
  s8 s^\markup\finger"4" s4 s2 |
  bf2.\>~bf8 af\) |
  af,,,8 af'\(_5 ef' c'_1 bf_4 af ef' c' |
  s1\ss |\noPageBreak

  r2 <ef ef'>4. <e e'>8 |
  s1|
  s2\! \cl\stemNeutral r4 r8 gf,,,8-4~ |
  \cu\stemDown bf8\< af c df_2 ef gf c bf |
  s8 s r\us s s2 |\noPageBreak

  s1 |
  s1 |
  gf8\( f c' a'_1 g_4 f c' a' |
  \stemNeutral <f a f'>2\> <c a' c>4\) r4\! |
  s8 s\ss s s s2 |\allowPageTurn\myExplicitPageBreak

  r2 c |
  s2 \lu c4.. c16\! |
  \cu\stemDown g8\< f a bf_2 c\> f a^4 g |
  \cl\stemNeutral s2 r2 |
  s8 s r\us s s2 |\noPageBreak

  \barNumberCheck #49
  <c a' c>1 |
  s1 |
  g2.^3\>~g8 f\) |
  f,,,,8 f'_5\( c' a' g_4 f c' a' |
  s1\ss |\noPageBreak

  r2 <c c'>4.\< <cs cs'>8 |
  s2 s4 a |
  s2\! \cl\stemNeutral r2 |
  \cu\stemDown g8\! f a_1 bf_2 c f a cs, |
  s8 s r\us s s2 |\noPageBreak

  \hideNotes\lu cs'1\!^\( \unHideNotes |
  \crescTextCresc\dd\endSpanners s8\< s s4 s2 |
  e,,,,8[ e'_5( a e'_1] fs_4 e cs'_2 a') |
  <cs e a cs>1\)|
  s8\ss s s s s s s r\us |\allowPageTurn

  \stemNeutral <b, b'>4 <a a'> <fs a b fs'> <a b a'> |
  \stemUp fs2 s2|
  r8 ds,,,!( b' fs'_1 cs'-2 ds,! b'-3 a') |
  \cl \stemUp s2 cs,4 b |
  s8\ss s s s s r\us s s |\noPageBreak

  \barNumberCheck #53
  <e a cs e>1 \> |
  s1|
  r8 e,,( a e' fs-4 e d' cs) |
  s1|
  s8 s\ss s s s s s r\us |\allowPageTurn

  \stemUp <cs'^4 e^5>2~<cs e>4. d8-4 \stemNeutral |
  \cu\stemDown <d,_1 e_1 gs>1 |
  e,,,8( e'_1 b'_3 e_1 fs_4 e cs'_1 b) |
  s1 |
  s8\ss s s s s s s r\us |\noPageBreak

  <d, gs d'-5>4\! <c a' c-4>2 <a' c a'>4 |
  s4\< s4 s2 |
  f,,8( f'_1 c'_3 a'_1 g_4 f c' a') |
  s1 |
  s8\ss s r\us s s s\ss s r\us |\noPageBreak

  <g g'>4 <f f'> <d bf'-2 d-4> <f d'-3 f-5> |
  \stemUp <bf' d>2 s2 |
  r8 bf,,,( f' d' c_4 bf f' d') |
  s1 |
  s8 s\ss s s s s s r\us |\noPageBreak

  \barNumberCheck #57
  <c f a c>2 <d a' c d> |
  s1 |
  c,,8( c' f_3 a g fs bf_1 a) |
  s1 |
  s8\ss s s r\us s s s s |\noPageBreak

  <d g bf d>2.\< <e bf' c e>4 |
  s1 \! |
  c,8( fs!_3 g bf_1 a g d' c) |
  \stemUp c,1 |
  s1 |\noPageBreak

  \stemDown <e e'>4.\> <f f'>8\!\) r2|
  <a c>2 s2 |
  r8 f,,( c' a'_1 g_4 f c' a' |
  s1 |
  s8\ss s s r\us s s\ss s s |\allowPageTurn

  R1 |
  \set decrescendoText = \markup{\italic "dimin."}
  \set decrescendoSpanner = #'text
  s8 s\> s4 s2 |
  f8 c a df-2 c-1 a-4 f a' |
  s1 |
  s8 s r\us s s s s s |\allowPageTurn

  \barNumberCheck #61
  R1 |
  s1 |
  f8 c-4 a-5 df-2 c-1 a-3 f-5 bf-2 |
  s1 |
  s1 |\allowPageTurn

  R1 |
  s1 |
  a8-1 f-3 c gf'-2 f-1 c-4 a df-2 |
  s1 |
  s1 |\allowPageTurn

  \stemNeutral r4 r8 s8 f2 |
  \dd\endSpanners s4\< s8 \cl\stemUp f,8^>^\markup{\italic "m.d."}~f2 |
  \hideNotes\stemDown f,8\!) \unHideNotes s4 r8 r2|
  \cl\stemNeutral f,8\( c'_3 a' s \cu f' \cl bf,^2 b^2 \acciaccatura df c\) |
  s2\ss s2\us |\noPageBreak

  \stemNeutral r4 r8 s8 fs2 |
  s4 s8 fs8^>~fs2 |
  s8 s s r8 r2 |
  e,,8\( cs' as' s \cu fs' \cl b,^2 bs^3 \acciaccatura ds cs\) |
  s2\ss s2\us |\noPageBreak

  \stemNeutral r4 r8 s8 fss2 |
  s4 s8 fss8^>~fss2 |
  s8 s s r8 r2 |
  ds,,8\( cs' as' s \cu\stemDown fss' cs^2 ds \acciaccatura fs e\) |
  s2\ss s2\us |\noPageBreak

  r2 \cl\stemUp gs,8[ bs e^4 ds^3] |
  s2 \stemDown gs4. fs8 |
  s2 \stemDown r2 |
  \cl\stemNeutral gs,,,8[^\( gs'_1 fs'_2 a] \cu gs'2 |
  s8\ss\< s s s s\us s s s |\noPageBreak

  \barNumberCheck #67
  \cu\stemNeutral s4.-4\> s8\p r2 |
  \stemUp e2 \cu s2 |
  \stemDown cs,8 cs'_5\( gs'_2 e'_1 ds_4[ cs gs' e'] |
  ds4. cs8\) s2 \cl |
  s8\ss\! s s r\us s\< s\ss s s |\allowPageTurn

  \stemUp r2 <gs gs'>2\> |
  s1 |
  \cu ds8 cs e fs_2 gs8 cs^2 ds \acciaccatura fs e |
  s2 r2 |
  s8 s s r\us\! s s s s |\noPageBreak

  <gs gs'>1\> |
  s4 \inside s4^\fingerChangeB s2 |
  \tieDown ds2.~ds8 cs\) |
  \stemNeutral r8 cs,,\( gs' e' ds_4[ cs gs' e'] |
  s8 s\ss s s s\< s s s |\noPageBreak

  r2\! <gs gs'-4>4. <as as'>8 |
  s2. e''4-3 |
  \cl\stemNeutral s8 s s s r4 r8 fs,,,8~ |
  \cu\stemDown ds8_2 cs e fs_2 gs8 cs e as, |
  s8 s r\us s s s s s\! |\noPageBreak

  \barNumberCheck #71
  s2\> r2\! |
  s1 |
  fs8\( b, fs' ds'_1 cs-4[ b fs' ds'] |
  \sl\grace as8_2 <as_1 e' cs'>4.\arpeggio <b ds b'>8\) s2 |
  s8\ss s r\us s s\< s\ss s s |\allowPageTurn\myExplicitPageBreak

  r2 <fs fs'>2 \> |
  s1 |
  \cu\stemDown cs8_3 b ds_2 e fs8 b^2 cs \acciaccatura e d |
  \cl\stemNeutral s2 r2 |
  s8 s s r\us\! s s s s |\noPageBreak

  <fs fs'>1\> |
  s4 \inside s4^\fingerChangeB s2 |
  cs2.~cs8 b\) |
  r8 b,,,8\( fs' d' cs_4[ b fs' d'] |
  s8 s\ss s s s s s s |\noPageBreak

  r2\< <fs fs'-4>4. <gs gs'-5>8 |
  s2 s4 d4 |
  \cl\stemNeutral s8 s s s r4 r8 e,,,-2~ |
  \cu\stemDown cs8_3 b d_2 e fs8 b d gs, |
  s8 s s r\us s s s s |\noPageBreak

  \barNumberCheck #75
  \stemNeutral <gs d' b'>4\(\arpeggio\! <a cs a'>2 <gs cs gs'-4>4 |
  \dd\endSpanners s4\< s4\! s2 |
  e8[( a, e' cs'] b_4 a e' cs' |
  \hideNotes\stemUp b'2\) \unHideNotes s2 |
  s8\ss s r\us s s s\ss s r\us |\noPageBreak

  <gs gs'-5>2..->\> <fss fss'-4>8\)\! |
  cs1 |
  b8_4 a cs fs_1 e_2 cs a ds!_1 |
  s1 |
  s1 |\noPageBreak

  R1 |
  s1 |
  cs8-2 a-3 e fs'-1 e cs a ds-1 |
  s1 |
  s1 |\allowPageTurn\myExplicitBreak

  r2 \stemDown fss8\(\f\< cs'^2 ds \acciaccatura fs e |
  s2 fss,2 |
  cs8^\markup{\italic "riten."} a e b'_2 a_1 e_2 ds_3 cs_4) |
  s1 |
  s1 |\noPageBreak

  \barNumberCheck #79
  ds4.\f\> cs8\) \stemUp r2\! |
  <fss a'>1-\fermata |
  <a cs'>1-\fermata \arpeggio |
  s1 \cl |
  s2\ss s2\us |\allowPageTurn

}
rhCadenza = \relative c'' {
  \cadenzaOn
  \stemNeutral
  <a-1 e'-3>8\p
     <cs!-2 a'-5>_\markup{\italic "legerissimo e legato"}
        <a ds!-3> <cs a'>
  <af! ef'!>  <c af'!>    <af d-3>  <c af'>  \bar""\noPageBreak
  <g d'>      <b g'>      <g cs!>   <b g'>   \bar""\noPageBreak
  <fs! cs'!>  <as! fs'!>  <fs c'>   <as fs'> \bar""\noPageBreak
  <f c'>      <a f'>      <f b>     <a f'>   \bar""\noPageBreak
  <e b'>      <gs! e'>    <e as>    <gs e'>  \bar""\noPageBreak\myExplicitBreak
  <ef! bf'!>  <g ef'!>    <ef a>    <g ef'>  \bar""\noPageBreak
  <d a'^3>    <fs! d'>    <d gs!^3> <fs d'>  \bar""\noPageBreak

  <d-1 gs!-3> _"(tritones)"
        <g-1 cs!-4> <af!-2 d-5> <f-1 b-3>          \bar""\noPageBreak
  <af!-2 d-5> <a-1 ds!-4> <bf!-2 e-5> <g-1 cs!-3>  \bar""\noPageBreak
  <bf!-2 e-5> <b-1 es!-4> <c-2 fs!-5> <a ds!>      \bar""\noPageBreak
  <c fs!>     <df!-1 g-4> <d-2 gs!-5> <b-1 es!-3>  \bar""\noPageBreak
  <d-2 gs!-5> <ef!-1 a-4> <e-2 as!-5> <df!-1 g-3>  \bar""\noPageBreak
  <e as!>     <f-1 b-4>   <gf! c>     <ef!-1 a-3>  \bar""\noPageBreak
  \ottava #1
  \set decrescendoText = \markup{\italic "dimin."}
  \set decrescendoSpanner = #'text \dd\endSpanners
  <gf!-2 c-5>\> <g-1 cs!-2> <bf!-1 e-3> <cs-2 g'-5> \bar""\noPageBreak
  <bf!-1 e-3> <df!-2 g-5> <e-1 bf'!-3><g-2  e'!-5>  \bar "|"
  \ottava #0
  \dimHairpin
  \cadenzaOff
}
lhCadenza = \relative c' {
  \stemNeutral
  <cs!-3 g'-1>8 <a-5 e'-2><cs-3 fs!>  <fs,! ds'!>
  <c'  gf'>   <af! ef'!>  <c-3 f>     <f, d'>
  <b   f'>    <g   d'>    <b e>       <e, cs'!>
  <as!  e'>   <fs! cs'!>  <as ds!>    <ds,! c'>
  <a' ef'!>   <f c'>      <a d>       <d, b'>
  <gs ! d'>   <e b'>      <gs cs!>    <cs,! as'!>
  <g' df'!>   <ef! bf'!>  <g c>       <c, a'>
  <fs!_3  c'> <d a'>      <fs_3 b>    <b, gs'!>

  <f'-3 b-1>  <e-5 as!-2> <f-4 b-1>   <af!-3 d-1>
  <f-5 b-2>   <gf!-4 c-1> <g-5 cs!-2> <bf!-3 e-1>
  <g-5 cs!-2> <af!-4 d-1> <a-5 ds!-2> <c-3 fs!-1>
  <a ds!>     <bf! e>     <b-5 es-2>   <d gs!>
  \clef treble
  <b es!>     <c fs!>     <df!-5 g-2> <e as!>
  <df! g>     <d gs!>     <ef!-5 a-2> <gf! c>
  <ef!-5 a-2> <e-4 as!-1> <g-5 cs!-2> <as e'>
  <g df'!>    <as! e'>    <df!-5 g-2> <e-3 as!-1>
  \clef bass
  \key cs \minor
}

\parallelMusic #'(rhPrimaryB rhGreenB lhRedB lhBlueB pedalB) {

  \once\override PhrasingSlur  #'height-limit = #12
  \stemNeutral <gs cs e gs>2^\fingerChangeD\(\f~ gs'8 cs-5 b a |
  s1 |
  s1 |
  \stemNeutral gs,,,,4 r <e'' gs cs e> r |
  s1\ss |\noPageBreak

  fss8-1 gs-4 e-2 bs-1 ds-3 e cs fss, |
  s1 |
  s1 |
  R1 |
  s8 s r\us s s2 |\noPageBreak

  gs1_\fingerChangeC |
  s1 |
  s1 |
  R1^\> |
  s1 |\noPageBreak

  \cl\stemUp <fs,-1 bs-2>1 |
  s1 |
  s1 |
  \stemDown gs,1_3 |
  s1 |\noPageBreak

  <e cs'>2 \) \cu\stemUp r2 |
  s1 |
  s1 |
  r8 cs,[^\p\( gs' e'] ds-4[ cs a'-2-> \cu e'] |
  s8\ss s s r\us s s s\< s |\allowPageTurn\myExplicitBreak

  r2 a''4..\> a16\! |
  s2 \lu\stemUp a4. s8 |
  s2 r2 |
  ds8_3 cs e g a cs fs^4 <g, e'> |
  s8 s s s\! s2 |\noPageBreak

  \stemDown <fs, a'>2\( \arpeggio <a^1 fs'^4> |
  \once\override Staff.AccidentalPlacement #'right-padding = #0.6
  \once\override NoteColumn #'force-hshift = #0.5
  d1 |
  r8 d,8( a' fs' e_4 d a' fs') |
  \shiftOff \hideNotes\stemUp a'2\) \unHideNotes s2 |
  s1\ss |\noPageBreak

  <fs bs gs'!>2\< \stemUp <bs bs'>4.\> bs'8 |
  s2 s8 \stemUp e4 s8 |
  r8 gs,,!( ds'_3 bs'_1 fs'4_2) r4 |
  \stemDown s2 bs,8 e gs^4 <ds fs> |
  s1\us\ss |\noPageBreak

  \stemDown <bs, bs'>2.\>~<bs bs'>8 <cs cs'>8\!\) |
  e1 |
  r8 cs,,\( gs' e' ds_4 cs gs' e' |
  s1 |
  s8\us\ss s s s s s s s\us |\noPageBreak

  \stemUp r2\! r4 r8 cs'^1 |
  s1 |
  \set decrescendoText = \markup{\italic "smorz."}
  \set decrescendoSpanner = #'text
  \cu\stemDown ds8_4 cs gs' \dd\endSpanners e'\> ds_3 cs_4 e_2 r8 |
  s1 |
  s8 s\ss s s s2 |\noPageBreak

  \stemNeutral s8 r8 r4 \cl\stemUp <e,,, gs e'^5>2^\( |
  s1 |
  cs''8^4\) s8 s4\pp s2 |
  \cl r2 <cs,,,_5 gs'_2>2 |
  s4 r4\us s4\ss s4 |\noPageBreak

  <e cs'>1\) |
  s1 |
  s1 |
  <cs gs'>1 |
  s1 |
}

