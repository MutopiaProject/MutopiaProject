\version "2.14.2"

\header {
  mutopiatitle = "Prelude"
  mutopiacomposer = "ChopinFF"
  mutopiaopus = "Op. 45"
  mutopiainstrument = "Piano"
  source = "Edition by Herrmann Scholtz (1845-1918)"
  style = "Romantic"
  copyright = "Public Domain"
  maintainer = "Keith OHara"
  title = "Prelude, Opus 45"
  composer = "Frederic Chopin (1810-1849)"
 footer = "Mutopia-2012/02/12-1776"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-0.5 MutopiaProject \hspace #-0.5 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-0.5 LilyPond \hspace #-0.5 \teeny .org } by \maintainer \hspace #-0.6 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\paper {
  %#(set-paper-size "letter")
  %#(set-paper-size "a4")
  bottom-margin = 13
  % annotate-spacing = ##t
  % ragged-right = ##t
  % page-count = 4
  #(layout-set-staff-size 18)
  ragged-last-bottom = ##f
  first-page-number = #2
}
\pointAndClickOff

% Definitions to override page-breaking
myBreak = {
  %  \break
}
myPageBreak = {
  \pageBreak
}

%%% Definitions for brevity
% Change staff
cu = { \change Staff = "upper" }
cl = { \change Staff = "lower" }
% cross-staff stem
cross = {
  \once\override Stem #'cross-staff = ##t
  \once\override Stem #'length = #20
}
% simpler sustain commands
ss =  \sustainOn
us =  \sustainOff
% suspend collision-resolution so that notes line up
lu = {\once \override NoteColumn #'ignore-collision = ##t }
% supress the dashed leader after "cresc"
dd = \once\override DynamicTextSpanner #'style = #'none
% fingering slides
fingerChangeA = -\tweak #'text #(markup #:tied-lyric "3~2") -0
fingerChangeB = -\tweak #'text #(markup #:tied-lyric "2~3") -0
fingerChangeC = -\tweak #'text #(markup #:tied-lyric "3~5") -0
fingerChangeD = -\tweak #'text #(markup #:tied-lyric "5~3") -0

% Grace notes with no slur
startSlashedGraceMusic =  { \override Stem  #'stroke-style = #"grace" }
stopSlashedGraceMusic =  { \revert Stem #'stroke-style }
slashedGrace = #(def-grace-function startSlashedGraceMusic stopSlashedGraceMusic)
% More textual dynamics
pocoCresc = #(make-music 'CrescendoEvent 'span-direction START
'span-type 'text 'span-text "poco cresc.")
dimin = #(make-music 'DecrescendoEvent 'span-direction START
'span-type 'text 'span-text "dimin.")

%%% Note entry
\include "english.ly"
\parallelMusic #'(rhPrimaryA rhGreenA lhRedA lhBlueA pedalA) {
  r4 cs''^3\p b a |
  \override Fingering #'avoid-slur = #'outside %not needed for ver 2.16
  \cl r4 <e'_3 gs_1>4_\( <d fs> <cs_3 e_1> |
  s1 |
  s1 |
  s1 |

  gs4^2 \acciaccatura b8^5 a4^4\< g fs |
  <bs ds>4 <cs e_1>_\fingerChangeA <b_3 d_1> <a cs> |
  s1 |
  s1 |
  s1 |

  es4 fs^3 e d |
  <gs!_5 b_3>4 <a_4 cs_2> <gs_3 b_1> s |
  s1 |
  s2 s4  <fs a>4^~ |
  s1 |

  cs2.\>^4 bs4\! |
  e2\) \voiceOne ds! |
  s2 r4 \stemDown gs,,4_2_( |
  \stemUp a gs2.^\markup\italic "m.d." |
  s1 |

  \barNumberCheck #5
  ds4.\> cs8\! r2 |
  <e gs>2 s2 |
  cs,8) cs'_5\( gs'_4 e'_1 ds-4 cs-5 gs'-2 e'-1 |
  s1^\markup\italic"sempre legato" |
  s8\ss s\< s r\us s s\ss s s |

  \stemUp r2 <gs' gs'>2\> |
  s1 \revert Fingering #'avoid-slur |
  \cu ds8_2 cs e_1 fs_2 gs8 cs^2 ds \acciaccatura fs e |
  s2 r2 |
  s8 s s r\us\! s s s s |

  <gs gs'>1\> |
  \cu s4 s4^\fingerChangeB s2 |
  \tieDown ds2.~ds8 cs\) |
  \stemNeutral r8 cs,,\( gs' e' ds-4[ cs gs' e'] |
  s8 s\ss s s s\< s s s |

  r2\! <gs gs'^4>4. <as as'>8 |
  s2. <e''-3>4 |
  \cl\stemNeutral s8 s s s r4 r8 fs,,,8-2~ |
  \cu\stemDown ds8_2 cs e fs_2 gs8 cs e as, |
  s8 s r\us s s s s\! s |

  \barNumberCheck #9
  s2\> r2\! |
  s1 |
  fs8\( b, fs' ds'_1 cs-4[ b fs' ds'] |
  \slashedGrace as8_2 <as_1 e' cs'>4.\arpeggio <b ds b'>8\) s2 |
  s8\ss s r\us s s\< s\ss s s |

  r2 <fs fs'>2 \> |
  s1 |
  \cu\stemDown cs8_3 b ds_2 e fs8 b cs \acciaccatura e d |
  \cl\stemNeutral s2 r2 |
  s8 s s r\us\! s s s s |

  <fs fs'>1\> |
  s4 s4^\fingerChangeB s2 |
  cs2.~cs8 b\) |
  r8 b,,,8\( fs' d' cs-4[ b fs' d'] |
  s8 s\ss s s s\< s s s |

  r2\! <fs fs'^4>4. <gs gs'^5>8 |
  s2 s4 d4 |
  \cl\stemNeutral s8 s s s r4 r8 e,,,-2~( |
  \cu\stemDown cs8_3 b d_2 e fs8 b d gs, |
  s8 s s r\us s s s\! s |

  \barNumberCheck #13
  s4.\> s8\! r4 \stemDown<a cs a'>\( |
  s1 |
  e8 a, e' cs' b-4 a e' cs') |
  \slashedGrace gs8_2 \stemNeutral <gs_1 d' b'>4.\arpeggio <a cs a'>8\) s2 |
  s8\ss s r\us s s s\ss s r\us |

  <a cs a'>4 <gs b gs'> <fs a fs'> <gs b gs'> |
  s1 |
  \stemDown r8 es,,( cs'_3 cs') r fs,,( cs' cs') |
  s1 |
  s8 s\ss s r\us s s\ss s r\us |

  <fs fs'>2.~<fs fs'>8. <e e'^4>16 |
  a1 |
  \stemNeutral\dynamicUp\endSpanners r8\pocoCresc d,,( a'_2 fs' e_4 d a' fs') |
  s1 |
  s8 s\ss s s s s s r\us |

  <e e'-5>4 <d d'-4>2 \stemUp <d a'^3>4-> |
  a2. s4 |
  r8 d,,( a' fs' e d a' fs') |
  s1 |
  s8 s\ss s s s s s r\us |

  \barNumberCheck #17
  \once\override NoteColumn #'force-hshift = #0.5
  d2.~d8\>e |
  \stemDown <b, g' b>1_\markup{\italic "ten."} |
  r8 g,,,8 g'_1 d'_2 e d_3 g e |
  s1 |
  s8 s\ss s s s s s r\us |

  <fs a>4. <d fs>8 <a~ fs' a>2 |
  a2 s4 s8 s8|
  d8_1 a d, fs'_1 d_2 a_3 g_4 fs_1 |
  s1|
  s8\ss s s s s s r\us s |

  <a cs fs a>2\!\) r2 |
  s1 |
  fs,8\( fs'_5 cs' a' gs!-4 fs cs' a' |
  s1 |
  s8\ss s\< s s s s s s |

  r2 <cs' cs'-5>2\> |
  s1 |
  \cu\stemDown gs8_3 fs a b cs8 fs gs \acciaccatura b a |
  \cl\stemNeutral s8 s s s r2 |
  s8 s s r\us\! s s s s |

  \barNumberCheck #21
  <cs cs'>1\> |
  s4 s4^\fingerChangeB s2 |
  gs2.~gs8 fs\) |
  r8 \stemDown fs,,8\( cs' a' gs-4 fs cs' a' |
  s8 s\ss s s s s s s |

  r2\< <cs cs'-4>4. <ds ds'>8\! |
  s2 s4 \stemUp a''4 |
  \cl\stemNeutral s2 r4 r8 b,,,-2~ |
  \cu\stemDown gs8_3 fs a b cs fs a
  \once\override Script #'minimum-Y-extent = #'(0 . 4)
  \once\override Script #'transparent = ##t % Push the slur up
  ds,-. |
  s8 r\us s s s s s s |

  s2\> r2\! |
  s1 |
  b8\( e, b' gs'_1 fs-4 e b' gs' |
  \slashedGrace ds8_2 \stemNeutral <ds_1 a' fs'>4.\arpeggio <e gs e'>8\)  s2 |
  s8 s\ss s r\us s\< s\ss s s |

  r2 <b b'>\> |
  s1 |
  \cu\stemDown fs8_3 e gs a b e-2 fs \acciaccatura a g |
  \cl\stemNeutral s8 s s s r2 |
  s8 r\us s s\! s s s s |

  \barNumberCheck #25
  <b b'>1\> |
  s4 s4^\fingerChangeB s2 |
  fs2.~fs8 e\) |
  r8 e,,,\( b' g' fs-4[ e b' g'] |
  s8 s\ss s s s\< s s s |

  r2\! <b b'>4. <cs cs'>8|
  s1|
  s2 \cl\stemNeutral r4 r8 a,,,-5~|
  \cu\stemDown fs8_3 e g a b e g cs,|
  s8 s r\us s s s s s\! |

  s4 \hideNotes d'2^\( \unHideNotes <c, f c'>4 |
  s1 |
  a8[_\( bf-4 f'-2 d'_1] c_4 bf \cu\stemDown f' d'\) |
  \stemNeutral\endSpanners <cs g' cs>4\cresc <d f d'>2\) s4 \cl |
  s8 s\ss s s s s s r\us |

  <c ef c'>4 <bf g' bf-5> <g ef' g-4> <bf g' bf> |
  s1|
  \cl\stemNeutral r8 ef,,,( bf' g' f-4 ef bf' g') |
  s1|
  s8 s\ss s s s s s r\us |

  \barNumberCheck #29
  <f bf d f>1\> |
  s1|
  r8 f,,( d' f_1 g_4 f ef'_1 d_2) |
  s1 |
  s8 s\ss s s s s s r\us |

  <d'^4 f-5>2~<d f>4. ef8-5 |
  \stemDown <ef,_1 a_2>1 |
  f,,,8( f'_1 c'_3 ef_2 g_1 f_5 d' c) |
  s1 |
  s8\ss s s s s s s r\us |

  df4-4\)\! r4 \stemNeutral <bf df bf'>2\f\(|
  <df bf'>4 s4 s2 |
  gf,,8_( gf'_1 df'_3 bf'_1 af_4 gf df' bf') |
  s1|
  s8\ss s s s s s s r\us |

  <af cf af'>4 <gf cf gf'> <ef cf' ef-4> <gf cf gf'> |
  s1 |
  r8 cf,,,( gf' ef' df-4 cf gf' ef') |
  s1 |
  s8 s\ss s s s s s r\us |

  \barNumberCheck #33
  \dd <df gf bf df-4>2\cresc <ef bf' df ef>\! |
  s2 s2 |
  df,,8( df'_1 gf_3 bf_1 af g cf bf) |
  s1 |
  s8\ss s s s r\us s s s |

  <ef af cf ef>2.\< <f cf' df f>4 |
  s1 |
  df,8( g_3 af cf bf af ef'_1 df) |
  \shiftOnn df,,1 |
  s1 |

  \stemDown <f f'>4.\> <gf gf'-5>8\p \) r2|
  \stemUp <bf' df>2 s2 |
  gf,,,8\( gf'_1 df'_3 bf'_1 af_4 gf df' bf' |
  s1 |
  s8\ss s s s s s s s |

  \stemUp r2
  \once\override Stem #'length = #7 df' |
  s2 \lu df'4.. df16 |
  \cu\stemDown\dynamicDown af8_3\< gf bf cf df\> ff bf af^3 |
  \cl\stemNeutral s2 r2 |
  s8 s r\us s s2 |

  \barNumberCheck #37
  <df ff df'>1 |
  s8 s^\markup\finger"4" s4 s2 |
  af2.\>~af8 gf\) |
  gf,,8 gf'_1\( df'_3 bf'_1 af_4 gf df' bf' |
  s1\ss | \noBreak

  r2 <df df'>4. <d d'>8 |
  s1|
  s2\! \cl\stemNeutral r4 r8 ff,,,8-4~ |
  \cu\stemDown af8_3 gf bf cf df\< ff
  \once\override Accidental #'minimum-Y-extent = #'(0 . 4)% Push the slur up
  bf af |
  s8 s r\us s s2 |

  s1 |
  s1 |
  ff8\( ef bf' g' f_4 ef bf' g' |
  \stemNeutral <ef g ef'>2\> <bf g' bf-4>4\)\! r4 |
  s8 s\ss s s s2 |

  r2 \once\override Stem #'length = #7 bf |
  s2 \lu bf4.. bf16\! |
  \cu\stemDown f8\< ef g af_2 bf\> ef g f |
  \cl\stemNeutral s2 r2 |
  s8 s r\us s s2 |

  \barNumberCheck #41
  <bf g' bf>1\> |
  s1 |
  f2.^4\!~f8 ef\) |
  ef,,,,8 ef'_5\( bf'_3 g'_1 f_4 ef bf' g' |
  s1\ss |

  r2\! <bf bf'>4. <b b'>8 |
  s2 s4 g |
  s2\! \cl\stemNeutral r2 |
  \cu\stemDown f8\< ef g_1 af_2 bf ef g^4 b, |
  s8 s r\us s s2 |

  ef2 r2 |
  s1 |
  af,,,,8\( af'_5 ef'_3 c'_1 bf_4 af ef' c' |
  \stemNeutral <b! g'^3 b!^5>4\> <c af' c>4\)\! s2 |
  s8\ss s s s s2 |

  r2 \once\override Stem #'length = #7 ef |
  s2 \lu ef'4.. ef16\! |
  \cu\stemDown bf8\< af c_1 df_2 ef\> gf c^4 bf |
  \cl\stemNeutral s2 r2 |
  s8 s r\us s s2 |

  \barNumberCheck #45
  <ef gf ef'>1\> |
  s8 s^\markup\finger"4" s4 s2 |
  bf2.\!~bf8 af\) |
  af,,,8 af'\(_5 ef' c'_1 bf_4 af ef' c' |
  s1\ss |

  r2\! <ef ef'>4. <e e'>8 |
  s1|
  s2 \cl\stemNeutral r4 r8 gf,,,8-4~ |
  \cu\stemDown bf8\< af c df_2 ef gf
  \once\override Accidental #'minimum-Y-extent = #'(0 . 3)% Push the slur up
  c bf |
  s8 s r\us s s2 |

  s1 |
  s1 |
  gf8\( f c' a'_1 g_4 f c' a' |
  \stemNeutral <f a f'>2\> <c a' c>4\) r4\! |
  s8 s\ss s s s2 |\myPageBreak

  r2  \once\override Stem #'length = #7 c |
  s2 \lu c4.. c16\! |
  \cu\stemDown g8\< f a bf_2 c\> f a^4
  \once\override Accidental #'minimum-Y-extent = #'(0 . 4)% Push the slur up
  g |
  \cl\stemNeutral s2 r2 |
  s8 s r\us s s2 |

  \barNumberCheck #49
  <c a' c>1 |
  s1 |
  g2.^3\>~g8 f\) |
  f,,,,8 f'_5\( c' a' g_4 f c' a' |
  s1\ss |

  r2 <c c'>4.\< <cs cs'>8 |
  s2 s4 a |
  s2\! \cl\stemNeutral r2 |
  \cu\stemDown g8\! f a_1 bf_2 c f a cs, |
  s8 s r\us s s2 |

  \hideNotes\lu cs'1\!^\( \unHideNotes |
  s1 |
  e,,,,8[ e'_5( a e'_1] fs_4 e cs'_2 a') |
  \dd <cs e a cs>1\)\cresc |
  s8\ss s s s s s s r\us |

  \stemNeutral <b, b'>4 <a a'> <fs a b fs'> <a b a'> |
  \stemUp fs2 s2|
  r8 ds,,,!( b' fs'_1 cs'-2 ds,! b'-3 a') |
  \cl \stemUp s2\! cs,4 b |
  s8\ss s s s s r\us s s |

  \barNumberCheck #53
  <e a cs e>1 |
  s1|
  \dynamicUp r8\> e,,( a e' fs-4 e d' cs) |
  s1|
  s8 s\ss s s s s s r\us |

  \stemUp <cs'^4 e^5>2~<cs e>4. d8-4 \stemNeutral |
  \cu\stemDown <d,_1 e_1 gs>1 |
  e,,,8( e'_1 b'_3 e_1 fs_4 e cs'_1 b) |
  s1 |
  s8\ss s s s s s s r\us |

  <d, gs d'-5>4\cresc <c a' c-4>2 <a' c a'>4 |
  s4 s4 s2 |
  f,,8(\! f'_1 c'_3 a'_1 g_4 f c' a') |
  s1 |
  s8\ss s r\us s s s\ss s r\us |

  <g g'>4 <f f'> <d bf'-2 d-4> <f d'-3 f-5> |
  \stemUp <bf' d>2 s2 |
  r8 bf,,,( f' d' c_4 bf f' d') |
  s1 |
  s8 s\ss s s s s s r\us |

  \barNumberCheck #57
  <c f a c>2 <d a' c d> |
  s1 |
  c,,8( c' f_3 a g fs bf_1 a) |
  s1 |
  s8\ss s s r\us s s s s |

  <d g bf d>2.\< <e bf' c e>4 |
  s1 |
  c,8( fs!_3 g bf_1 a g d' c) |
  \stemUp c,1 |
  s1 |

  \stemDown <e e'>4.\> <f f'>8\!\) r2|
  <a c>2 s2 |
  r8 f,,( c' a'_1 g_4 f c' a' |
  s1 |
  s8\ss s s r\us s s\ss s s |

  R1 |
  s1 |
  f8 c\dimin a df-2 c-1 a-4 f a' |
  s1 |
  s8 s r\us s s s s s |

  \barNumberCheck #61
  R1 |
  s1 |
  f8 c-4 a-5 df-2 c-1 a-3 f-5 bf-2 |
  s1 |
  s1 |

  R1 |
  s1 |
  a8-1 f-3 c gf'-2 f-1 c-4 a df-2 |
  s1 |
  s1 |

  r4 r8 s8 \once\override Stem #'length = #0 f2 |
  s4 s8 \cl f,8^>_~\cross f2 |
  \hideNotes\stemDown f,8\!) \unHideNotes s4 r8 r2|
  \cl\stemNeutral\dynamicUp f,8\(\cresc c'_3 a'\! s
  \cu f'[ bf,-2 b-2 \acciaccatura df c\)] |
  s2\ss s2\us |

  r4 r8 s8 \once\override Stem #'length = #0 fs2 |
  s4 s8 fs8^>_~\cross fs2 |
  s8 s s r8 r2 |
  \cl e,,8\( cs' as' s \cu fs'[ b,-2 bs-3 \acciaccatura ds cs\)] |
  s2\ss s2\us |

  r4 r8 s8 \once\override Stem #'length = #0 fss2 |
  s4 s8 fss8^>_~\cross fss2 |
  s8 s s r8 r2 |
  \cl ds,,8\( cs' as' s \cu fss'[ cs-2 ds \acciaccatura fs e\)] |
  s2\ss s2\us |

  r2 \stemUp\cl gs,8[^\markup\italic"m.d." bs e^4 ds^3] \cu |
  s2 \cl\stemDown gs4. fs8 |
  s2 \stemDown r2 |
  \cl\stemNeutral gs,,,8[^\( gs'_1 fs'_2 a] \cu gs'2 |
  s8\ss s\< s s s\us s s\! s |

  \barNumberCheck #67
  \stemNeutral s4. s8 r2 |
  \stemUp e2 s2 \cu |
  \stemDown cs,8 cs'_5\( gs'_2 e'_1 ds_4[ cs gs' e'] |
  \stemNeutral\dynamicDown ds4.-4\> cs8\p\) s2 \cl |
  s8\ss s s r\us s\<
  \once\override Staff.SustainPedalLineSpanner #'staff-padding = #3.5
  s\ss s s |

  \stemUp r2 <gs gs'>2\> |
  s1 |
  \cu ds8 cs e fs_2 gs8 cs^2 ds \acciaccatura fs e |
  s2 r2 |
  s8 s s r\us\! s s s s |

  <gs gs'>1\> |
  s4 s4^\fingerChangeB s2 |
  \tieDown ds2.~ds8 cs\) |
  r8 cs,,\( gs' e' ds_4[ cs gs' e'] |
  s8 s\ss s s s s s s |

  r2\! <gs gs'-4>4.\< <as as'>8 |
  s2. e''4 |
  \cl\stemNeutral s8 s s s r4 r8 fs,,,8~ |
  \cu\stemDown ds8_2 cs e fs_2 gs8 cs e^3 as, |
  s8 s r\us s s s s s |

  \barNumberCheck #71
  s2\> r2\! |
  s1 |
  fs8\( b, fs' ds'_1 cs-4[ b fs' ds'] |
  \slashedGrace as8_2 <as_1 e' cs'>4.\arpeggio <b ds b'>8\) s2 |
  s8\ss s r\us s s\< s\ss s s |

  r2 <fs fs'>2 \> |
  s1 |
  \cu\stemDown cs8_3 b ds_2 e fs8 b^2 cs \acciaccatura e d |
  \cl\stemNeutral s2 r2 |
  s8 s s r\us\! s s s s |

  <fs fs'>1\> |
  s4 s4^\fingerChangeB s2 |
  cs2.~cs8 b\) |
  r8 b,,,8\( fs' d' cs_4[ b fs' d'] |
  s8 s\ss s s s s s s |

  r2\! <fs fs'-4>4. <gs gs'-5>8 |
  s2 s4 d4 |
  \cl\stemNeutral s8 s s s r4 r8 e,,,-2~ |
  \cu\stemDown\dynamicDown cs8_3\< b d_2 e fs8 b d gs, |
  s8 s s r\us s s s s |

  \barNumberCheck #75
  \stemNeutral <gs d' b'>4\(\arpeggio\cresc <a cs a'>2\! <gs cs gs'-4>4 |
  s1 |
  e8[( a, e' cs'] b_4 a e' cs' |
  \hideNotes\stemUp b'4\)\! \unHideNotes s2. |
  s8\ss s r\us s s s\ss s r\us |

  <gs gs'-5>2..->\> <fss fss'-4>8\)\! |
  cs1 |
  b8_4 a cs fs_1 e_2 cs a ds!_1 |
  s1 |
  s1 |

  R1 |
  s1 |
  cs8-2 a-3 e fs'-1 e cs a ds-1 |
  s1 |
  s1 |

  r2 \stemDown fss8\(\f\< cs'^2 ds \acciaccatura fs
  \once\override Script #'minimum-Y-extent = #'(0 . 3)
  \once\override Script #'transparent = ##t % Push the slur up
  e-- |
  s2 fss,2 |
  cs8^\markup{\italic "riten."} a e b'_2 a_1 e_2 ds_3 cs_4) |
  s1 |
  s1 |

  \barNumberCheck #79
  ds4.\f\> cs8\) \stemUp r2\! |
  <fss a'>1-\fermata |
  <a cs'>1-\fermata \arpeggio |
  s1 \cl |
  s2\ss s2\us |

}
rhCadenza = {
  \set Timing.measureLength = #(ly:make-moment 16 2)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
  \stemNeutral
  <a^1 e'^3>8\p
  <cs!^2 a'^5>_\markup{\italic "legerissimo e legato"}
  <a ds!^3> <cs a'>
  <af! ef'!>  <c af'!>    <af d^3>  <c af'>  \bar""
  <g d'>      <b g'>      <g cs!>   <b g'>   \bar""
  <fs! cs'!>  <as! fs'!>  <fs c'>   <as fs'> \bar""
  <f c'>      <a f'>      <f b>     <a f'>   \bar""
  <e b'>      <gs! e'>    <e as>    <gs e'>  \bar""
  <ef! bf'!>  <g ef'!>    <ef a>    <g ef'>  \bar""
  <d a'^3>    <fs! d'>    <d gs!^3> <fs d'>  \bar"dashed"

  <d^1 gs!^3> <g^1 cs!^4> <af!^2 d^5> <f^1 b^3>    \bar""
  <af!^2 d^5> <a^1 ds!^4> <bf!^2 e^5> <g^1 cs!^3>  \bar""
  <bf!^2 e^5> <b^1 es!^4> <c^2 fs!^5> <a ds!>      \bar""
  <c fs!>     <df!^1 g^4> <d^2 gs!^5> <b^1 es!^3>  \bar""
  <d^2 gs!^5> <ef!^1 a^4> <e^2 as!^5> <df!^1 g^3>  \bar""
  <e as!>     <f^1 b^4>   <gf! c>     <ef!^1 a^3>  \bar""
  \ottava #1
  \dd <gf!^2 c^5>\dimin <g^1 cs!^2> <bf!^1 e^3> <cs^2 g'^5>\! \bar""
  <bf!^1 e^3> <df!^2 g^5> <e^1 bf'!^3><g^2  e'!^5>  \bar "|"
  \ottava #0
  \dimHairpin
  \unset Timing.measureLength
  \unset Timing.beatStructure
}

lhCadenza = {
  \stemNeutral
  <cs'!_3 g'_1>8 <a_5 e'_2><cs_3 fs!>  <fs,! ds'!>
  <c'  gf'>   <af! ef'!>  <c_3 f>     <f, d'>
  <b   f'>    <g   d'>    <b e>       <e, cs'!>
  <as!  e'>   <fs! cs'!>  <as ds!>    <ds,! c'>
  <a' ef'!>   <f c'>      <a d>       <d, b'>
  <gs ! d'>   <e b'>      <gs cs!>    <cs,! as'!>
  <g' df'!>   <ef! bf'!>  <g c>       <c, a'>
  <fs!_3  c'> <d a'>      <fs_3 b>    <b, gs'!>

  <f'_3 b_1>  <e_5 as!_2> <f_4 b_1>   <af!_3 d_1>
  <f_5 b_2>   <gf!_4 c_1> <g_5 cs!_2> <bf!_3 e_1>
  <g_5 cs!_2> <af!_4 d_1> <a_5 ds!_2> <c_3 fs!_1>
  <a ds!>     <bf! e>     <b_5 es_2>   <d gs!>
  \clef treble
  <b es!>     <c fs!>     <df!_5 g_2> <e as!>
  <df! g>     <d gs!>     <ef!_5 a_2> <gf! c>
  <ef!_5 a_2> <e_4 as!_1> <g_5 cs!_2> <as e'>
  <g df'!>    <as! e'>    <df!_5 g_2> <e_3 as!_1>
  \clef bass
  \key cs \minor
}

\parallelMusic #'(rhPrimaryB rhGreenB lhRedB lhBlueB pedalB) {

  \once\override PhrasingSlur #'height-limit = #10
  \stemNeutral <gs,, cs e gs>2^\fingerChangeD\(\f~ gs'8 cs-5 b a |
  s1 |
  s1 |
  \stemNeutral gs,,,,4 r <e'' gs cs e> r |
  s1\ss |

  fss8-1 gs-4 e-2 bs-1 ds-3 e cs fss, |
  s1 |
  s1 |
  R1 |
  s8 s r\us s s2 |

  gs1_\fingerChangeC |
  s1 |
  R1 |
  s1\> |
  s1 |

  \cl\stemUp <fs,^1 bs^2>1 |
  s1 |
  s1 |
  \stemDown gs,1_3 |
  s1 |

  <e cs'>2 \) \cu\stemUp r2 |
  s1 |
  s1 |
  r8 cs,[^\p\( gs' e'] ds-4[ cs a'-2-> \cu e'] |
  s8\ss s s r\us s s s\< s |

  r2 a''4..\> a16\! |
  s2 \lu\stemUp a4. s8 |
  s2 r2 |
  ds8_3 cs e g a cs fs^4
  \once\override Script #'minimum-Y-extent = #'(0 . 3)
  \once\override Script #'transparent = ##t % Push the slur up
  <g, e'>-. |
  s8 s s s\! s2 |

  \stemDown <fs, a'>2\( \arpeggio <a^1 fs'^4> |
  \voiceThree \once\override NoteColumn #'force-hshift = #0.4 d1 |
  r8 d,,,8( a' fs' e_4 d a' fs') |
  \hideNotes\voiceOne a'2\) \unHideNotes s2 |
  s1\ss |

  <fs bs gs'!>2\< \stemUp <bs bs'>4.\> bs'8 |
  s2 s8 \stemUp e4 s8 |
  r8 gs,,!( ds'_3 bs'_1 fs'4_2) r4 |
  \stemDown\oneVoice s2 bs,8 e gs^4 <ds fs> |
  s1\us\ss |

  \stemDown <bs, bs'>2.\>~<bs bs'>8 <cs cs'>8\!\) |
  e1 |
  \revert PhrasingSlur #'height-limit
  r8 cs,,\( gs' e' ds_4 cs gs' e' |
  s1 |
  s8\us\ss s s s s s s s\us |

  \stemUp r2\! r4 r8 cs'^1 |
  s1 |
  \cu\stemDown ds8_4 cs gs' e'_\markup\italic"smorz."
  ds_3 cs_4 e_2 r8 |
  s1 |
  s8 s\ss s s s2 |

  \stemNeutral s8 r8 r4 \cl\stemUp <e,,, gs e'^5>2^\( |
  s1 |
  cs''8^4\) s8 s4\pp s2 |
  \cl r2 \voiceTwo <cs,,,_5 gs'_2>2 |
  s4 r4\us s4\ss s4 |

  <e cs'>1\) |
  s1 |
  s1 |
  <cs gs'>1 |
  s1 |
}

%%% Definitions affecting typesetting style
% shaping for the long slurs on the rising cross-staff phrases
bigSlur = {
  \override PhrasingSlur #'height-limit = #10
  \override PhrasingSlur #'eccentricity = #3
}
% upward slanting dynamics, if desired
%% Place dynamics in last priority, otherwise the pedal marks are
%%  set outside where the hairpins would have been before rotation
rotDyn = {
  %\override DynamicLineSpanner #'outside-staff-priority = #2000
  \override DynamicLineSpanner #'Y-extent = #'(0 . 0)
  \override Hairpin #'rotation = #'(20 -0.7 0)
}


%%% Score block
% showLastLength = R1*16
\score {
  \new PianoStaff \with {
    \override TextScript #'whiteout = ##t
    \override TextScript #'layer = #2
    \override TextScript #'avoid-slur = #'inside
    \override Fingering #'avoid-slur = #'inside
    \override PhrasingSlur  #'height-limit = #3
    \override Hairpin #'layer = #0
    \override DynamicLineSpanner #'staff-padding = #2
    \override Fingering #'whiteout = ##t
    \override Fingering #'layer = #2
    \override StaffGrouper #'staff-staff-spacing #'padding = #0.5
    % bug 1779
    \override BarLine #'space-alist #'next-note = #'(fixed-space . 1.0)
    % bug 2051
    \override PhrasingSlur #'Y-extent = #'(0 . 0)
  } <<
    \override Score.SpacingSpanner #'shortest-duration-space = #1.5
    \new Staff = "upper" {
      \clef treble
      \time 2/2
      \tempo "Sostenuto"
      \key cs \minor
      #(set-accidental-style 'piano 'PianoStaff)
      #(add-grace-property 'Voice 'Fingering 'font-size -6)
      <<
        \new Voice = "primary" \relative f {
          \rhPrimaryA
          \tempo \markup{\medium\italic\normalsize "Cadenza, a piacere"}
          \bar "||"
          \set Staff.lastKeySignature = #`()
          \set Staff.keySignature = #`()
          \small
          \override Score.Fingering #'add-stem-support = ##t
          \rhCadenza
          \revert Score.Fingering #'add-stem-support
          \normalsize
          \bar "||"
          \key cs \minor
          \rhPrimaryB
          \bar "|."
        }
        \new Voice ="green" \relative f {
          %\override NoteHead #'color = #darkgreen %colorize
          %\override Hairpin #'color = #darkgreen %colorize
          %\override PhrasingSlur #'color = #darkgreen %colorize
          \shiftOn
          \mergeDifferentlyHeadedOn
          \mergeDifferentlyDottedOn
          \rhGreenA
          #(ly:export (skip-of-length rhCadenza))
          \rhGreenB
        }
      >>
    }
    \new Staff = "lower" {
      \clef bass
      \key cs \minor
      <<
        \new Voice = "red" \relative f {
          %\override NoteHead #'color = #darkred %colorize
          %\override Hairpin #'color = #darkred %colorize
          %\override PhrasingSlur #'color = #darkred %colorize
          \shiftOn
          \bigSlur
          \lhRedA
          \set Staff.lastKeySignature = #`()
          \set Staff.keySignature = #`()
          \small
          \lhCadenza
          \normalsize
          \key cs \minor
          \lhRedB
        }
        \new Voice = "blue" \relative f  {
          %\override NoteHead #'color = #darkblue %colorize
          %\override Hairpin #'color = #darkblue %colorize
          %\override PhrasingSlur #'color = #darkblue %colorize
          \shiftOn
          \mergeDifferentlyHeadedOn
          \mergeDifferentlyDottedOn
          \bigSlur
          \lhBlueA
          #(ly:export (skip-of-length rhCadenza))
          \lhBlueB
        }
        \new Voice = "pedal" \relative f {
          % Problem: pedaling brackets need a placed note or rest
          %    at the pedal release point (i.e., not R1 or s8)
          % Workaround: place dummy r8 rests in the pedal voice
          %    Make these rests invisible and take no space
          \override Rest #'stencil = ##f
          \override Rest #'Y-extent = #'(+inf.0 . -inf.0)
          \set Staff.pedalSustainStyle = #'mixed
          \rotDyn
          \pedalA
          #(ly:export (skip-of-length rhCadenza))
          \pedalB
        }
      >>
    }
  >>
  \layout {}
}
\score {
  \new PianoStaff << \new Staff = "upper" <<
    \key cs \minor
    \new Voice = "primary" \relative f {
      \rhPrimaryA
      \rhCadenza
      \rhPrimaryB
    }
    \new Voice ="green" \relative f {
      \rhGreenA
      #(ly:export (skip-of-length rhCadenza))
      \rhGreenB
    }
  >> \new Staff = "lower" <<
    \new Voice = "red" \relative f {
      \lhRedA
      \lhCadenza
      \lhRedB
    }
    \new Voice = "blue" \relative f {
      \lhBlueA
      #(ly:export (skip-of-length rhCadenza))
      \lhBlueB
    }
    \new Voice = "pedal" \relative f {
      \pedalA
      #(ly:export (skip-of-length rhCadenza))
      \pedalB
    }
  >> >>
  \midi {
    \context {
      \PianoStaff
      \consists "Piano_pedal_performer"
      \consists "Staff_performer"
    } \context {
      \Staff
      \remove "Staff_performer"
    } \context {
      \Voice
      \remove "Dynamic_performer"
      \remove "Piano_pedal_performer"
    } \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 60 2)
    }
  }
}
