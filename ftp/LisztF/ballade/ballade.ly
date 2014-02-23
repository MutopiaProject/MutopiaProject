\version "2.18.0"

\header {
  mutopiatitle = "Second Ballade"
  mutopiacomposer = "LisztF"
  mutopiainstrument = "Piano"
  date = "1853"
  style = "Romantic"
  license = "Public Domain"
  maintainer = "Vassily Checkin"
  maintainerEmail = "ly@auriga.com"
  lastupdated = "2003/Jun/5"
  title="Deuxième Ballade"
  composer="F. Liszt"
  date="1853"

 mutopiasource = "Unknown"

 footer = "Mutopia-2014/02/23-236"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

tupletOff = {
  \override TupletNumber.transparent = ##t
  \override TupletBracket.transparent = ##t
}
tupletOn = {
  \revert TupletNumber.transparent
  \revert TupletBracket.transparent
}

% portamentoDown = \override Slur.attachment-offset = #'((0 . -1.0) 0 . -1.0)
% portamentoUp = \override Slur.attachment-offset = #'((0 . 1.0) 0 . 1.0)
% portamentoOff = \revert Slur.attachment-offset

% $Id: ballade_p1.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
%measures 1 to 16
upperVoiceItoXVI =
\context Voice = "upper" {
  \voiceOne
  s1. s1. fis1.^^ ^"marcato" g2.^^ a2.^^
  b1.^^ ~ b2
  fis4 ^\< ( a2 g4) ^\! |
  % msr 7
  g1.^^ ( fis2.) r2. |
  % msr 9
  cis1.^^ d2.^^ e2.^^
  fis1.^^ ~ fis2.
  a2 g4 |
  % msr 13
  cis1.^^ d2.^^ e2.^^ |
  %15 - 16
  fis1.^^ g2.^^ a2.^^ |
}

middleBarI = {
  \voiceTwo r4 r4 <b, d>4 ~ <b, d>2 <b, d>4
}

middleBarII = {
  \voiceTwo r4 r4 <g, b,>4 ~ <g, b,>2 <g, b,>4
}

PIbassoBarI = {
  \tuplet 9/6 {
    b,,8[ c,! cis, d,! dis, e, eis, fis, g, ]
  }
  \tuplet 9/6 {
    fis,[ eis,! e, dis,! d, cis,! c, b,, fis,,]
  }
}

PIbassoBarII = {
  \tuplet 9/6 {
    b,,8[ c,! cis, d,! dis, e, eis, fis, eis, ]
  }
  \tuplet 9/6 {
    e,[ dis,! d, cis,! c, b,, g,, a,, ais,,]
  }
}

middleVoiceItoIX =
\context Voice = "middle" {
  {
    R1. R1.
  }
  \clef bass
  \repeat unfold 6 \middleBarI
  \repeat unfold 2 \middleBarII
  \repeat unfold 2 \middleBarI
  \repeat unfold 2 \middleBarII
  \middleBarI
  {
    \stemDown r4 r4 <a, cis>4 ~ <a, cis>2 <a, cis?>4
  }
}

bassoVoiceItoXVI =
\context Voice = "basso" {
  \repeat unfold 5 \PIbassoBarI
  \tupletOff
  \repeat unfold 3 \PIbassoBarI
  \repeat unfold 2 \PIbassoBarII
  \repeat unfold 2 \PIbassoBarI
  \repeat unfold 2 \PIbassoBarII
  {
    \stemUp
    \tuplet 9/6 {
      b,,8[ c,! cis, d,! dis, e, eis, fis, g, ]
    }
    \tuplet 9/6 {
      fis,[ eis,! e, dis,! d, cis,! c, b,, ais,,]
    }
    \tuplet 9/6 {
      a,,![ ais,, b,, bis,, cis, d, dis, e, eis, ]
    }
    \times 4/6 {
      fis,[ eis,! e, dis,! d, cis,!
    } c,16 b,, ais,, a,,] |
  }
}

besTypeI = {
  \relative b,, {
    \tuplet 9/6 {
      bes b c des d ees e f ges f e ees d des c ces bes f
    }
  }
}

besTypeII = {
}

% $Id: ballade_p2.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PIIRH = {
  % msr 17
  r4_"rinforz. molto"
  <<
    \context Voice = AII {
      \stemUp b4. r8
    }
    \context Voice = BII {
      \stemDown <d fis>4 r4
    }
  >> r2. |
  % msr 18
  R1.
  \time 4/4
  %msr 19
  R1 \clef treble
  %msr 20
  r2^\fermata r4 <ais fis' cis''>4 |
  %msr 21
  <b fis' cis''>2 <b e' cis''>2 |
  % msr 22
  <ais fis' cis''>2.\arpeggio ^\fermata <ais' fis'' cis'''>4 |
  % msr 23
  <b' fis'' cis'''>2 <b' e'' cis'''>2 |
  % msr 24
  \break
  <<
    \context Voice = AII {
      \slurUp
      <ais' fis'' ais''>2_"dolce" ~
      <ais' fis'' ais''>8 <cis'' ais''>( <fis'' cis'''>
      <ais'' fis'''> | % msr 25
      \stemUp
      dis'''8[ b'' gis'' ais '']
      \acciaccatura { cis'''8 }
      b''[ ais'' b'' dis''' ] | % msr 26
      \stemDown \tieDown
      <fis'' bis''>2-~<fis'' cis'''>8 ) r8 r4 | %msr 27
    }
    \context Voice = BII {
      s1 | % msr 25
      \tieDown
      fis''4 dis''2 ~ dis''8 eis'' | %msr 26
      s1
    }
  >>
  % msr 27
  <<
    \context Voice = AII {
      \stemUp r8 ais'[ ( cis'' fis''] dis''[ b' gis' ais' ] | %msr 28
      \acciaccatura { cis'' }
      b'[ ais' b' dis''] bis'4.^- cis''8) | %msr 29
      \acciaccatura { dis'' }
      cis''[^"poco cresc."
      ( bis' cis'' eis''] cisis''4.^- dis''8) | %msr 30
      \acciaccatura { eis'' }
      dis''[ ( cisis'' dis'' fis'' ] \stemNeutral
      <b' ais''>[\arpeggio^"dim. molto"
      <gis' fis''> <fis' dis''> <gis' fis''> ] | %msr 31
      <b' ais''>[ <gis' fis''> <fis' dis''> <gis' fis''> ]
      \tuplet 3/2 {
        <b' ais''>4 <gis' fis''> <fis' dis''>)
      } | %msr32
      <gis' fis''>4-._"smorz."( <fis' dis''>)-.
      \stemUp
      \tuplet 5/4 {
        b'16 ( cis'' b' ais' b'
      } <eis' gis' dis''>4 | %msr33
      \tieNeutral
      <eis' gisis'>1 ~ |
      <eis' gisis'>4 <fis'ais'> ) r2 |
    }
    \context Voice = BII {
      \stemDown
      s8 fis'4 ais'8 fis'4 dis'~dis'4. eis'8 ~ eis'4 fis'~ | % msr 29
      fis'4. fis'8 ~ fis'4 fisis'4 ~ | %msr 30
      fisis' gis' s2 | %msr 31
      s1 s2 dis'4 s4 s1
    }
  >>
}

PIILH = {
  % msr 17
  <<
    \context Voice = "cbasso" {
      \stemDown g,,4
    }
    {
      \stemUp g,,8[ ( d, fis, b, ]
    }
  >>
  \tupletOn
  \slurUp
  \tuplet 3/2 {
    \stemDown d8[ fis)] \stemUp cis'
  } e'2.^^ ( ~ |
  % msr 18
  e'8[ d' a cis' b fis ] a g d4 dis |
  \time 4/4
  fis8^"molto rit." e4) b,8 ( d4 \> cis ~
  % msr 20
  cis2)_\fermata \! r4 <fis,, fis,>4( |
  %msr 21
  <g,, g,>2 <a,,! a,!>4 <b,, b,> |
  %msr 22
  <cis, cis>2.)\arpeggio_\fermata
  <<
    \context Voice = CII {
      s4 |
      s2 \stemUp fis'2
    }
    \context Voice = DII {
      \slurDown
      \stemDown <fis fis'>4_"una corda" ( |
      <g fis'>2 a!4 b)
    }
  >> |
  \noBreak
  % msr 24 "Allegretto"
  \clef treble
  <<
    \context Voice = CII {
      \tieUp \slurUp
      fis'2 ~ fis'8 ( fis'8 ais' dis'' |
      b' gis' b' fis' gis' fisis' gis' b' gisis'2 ais'8) r8 r4 | %msr 27
      \stemDown \clef bass
      r8 cis'[ ( ais dis' ] b[ gis b fis ] | % msr 28
      \stemUp
      s2 gisis4^- ais ~ |
      ais8) gisis (ais cis' ais4^- b4 ~| %msr30
      b8)[ ais ( b dis'] \stemNeutral fis'[ dis' b dis' ] | %msr31
      fis'[ dis' b dis' ]
      \tuplet 3/2 {
        fis'4 dis' b)
      } | %msr 32
      dis'4-. ( b)-.
      \tuplet 5/4 {
        gis16 ( ais gis fisis gis
      }
      <cis b>4 | %msr33
      \stemUp dis'1 ~ dis'4 cis') r2 |
    }
    \context Voice = DII {
      \tieDown \dotsDown cis'1 ~ cis'2.. cis'8 ~ |
      cis'2 ~ cis'8 s8 s4 | % msr 27
      s1 | %msr28
      gis8[ fisis gis <b cis> ~ ] cis2 ~ | %msr 29
      cis4. cis8 ~ cis2 ~ |
      cis4 cis2. | %msr31
      s1 s1 | %msr 33
      fis1 ~ fis2 \dotsNeutral
    }
  >>
}

% $Id: ballade_p3.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
% part 3 -- Starting with "Allegro deciso"
PIIIRH = {
  \context Voice=AIII{
    R1 R1 \key b \minor |
    \repeat unfold 2 {
      <a' d'' a''>8
      \f ^! ^^ r8 \tuplet 5/4 {
        cis'16 d' e' f' gis'
      } a'8-! r8
      \tuplet 3/2 {
        <a' d'' a''>8 \< <a' d'' a''>8 <a' d'' a''>8 \!
      } |
      <e'' a'' cis''' e'''>8^! r8 r4 r2 |
    }
    <e'' bes'' cis''' e'''>8^!^^ r8
    \tuplet 6/4 {
      cis'16_2 d'_1 dis'_2 e'_1 g'_2 bes'_3
    } cis''8_4^! r8
    \tuplet 3/2 {
      <e'' bes'' cis''' e'''>8
      <e'' bes'' cis''' e'''>8
      <e'' bes'' cis''' e'''>8
    } | % msr8
    <a'' c''' ees''' a'''>8^! r8 r4 r2 | % msr 9
    <e'' bes'' cis''' e'''>8^!^^ r8
    \tuplet 6/4 {
      cis'16 d' dis' e' g' bes'
    } cis''8^! r8
    \tuplet 3/2 {
      <e'' bes'' cis''' e'''>8
      <e'' bes'' cis''' e'''>8
      <e'' bes'' cis''' e'''>8
    } | % msr10
    <a'' c''' ees''' a'''>8 r8 r4 r4
    \tuplet 3/2 {
      <a'' c''' ees''' a'''>8_"più cresc"
      <a'' c''' ees''' a'''>8
      <a'' c''' ees''' a'''>8
    } |
    %msr 11
    <a'' c''' ees''' a'''>8 r8 r4 r4
    \tuplet 3/2 {
      <a'' c''' ees''' a'''>8
      <a'' c''' ees''' a'''>8
      <a'' c''' ees''' a'''>8
    } |
    %msr 12
    <a'' c''' e'''! a'''>8-! r8 <a'' c''' f''' a'''>8-! r8
    <a'' c''' fis''' a'''>8-! r8 <b'' fis''' b'''>8-! r8 |
    %msr 13
    <cis''' fis''' a''' cis''''>8-. r8
    \tuplet 15/12 {
      <d''' d''''>16[-^ b''' a''' fis''' e'''^1]
      d'''[^3 b'' a'' fis''^4 e''] d''[ b'^1 a'^3 fis' e']
    } |
    %msr 14
    \tuplet 18/12 {
      r16 eis'16[ \< gis' b' d'' eis'']
      d'''[-^ b'' \! gis'' eis'' d'' b'] gis'[ eis' d' b gis eis]
    } r4 |
    %msr 15
    r4
    \tuplet 15/12 {
      <d'' d'''>16[-^ b'' a'' fis'' e'']
      d''[ b' a' fis' e'] d'[ b a fis e]
    } |
    %msr 16
    \tuplet 18/12 {
      r16 eis16[ gis b d' eis']
      d''[-^ b' gis' eis' d' b] \clef bass gis![ eis d b, gis, eis,]
    } r4 |
    %msr 17
    r4 r8 d-.-- ~ d a4-.-- gis8-.-- ~ |
    %msr 18
    gis cis'4-.-- fis8-.-~fis
    <eis b e'>4-^( ~ <eis b d'>8) |
  }
  %msr 19
  \clef treble
  <<
    \context Voice = AIII {
      \stemUp \slurUp
      r4 <d' f' b'>2^^_"rinforzando"( <cis' f' a'>4 | % msr 20
      <b d' g'>4 fis' eis'2) | %msr 21
      r4 <d' f' b' d''>2(-^_"rinforz." <cis' f' a'>4 | % msr 22
      <b d' g'>4 fis' eis'2) | %msr 23
    }
    \context Voice = BIII {
      \stemDown \shiftOn
      s1 |
      s4 d'2. |
      s1 |
      s4 d'2. |
    }
    \context Voice = BIIIprim {
      \stemDown \slurDown
      s1 |
      s4 a2 ( gis4) |
      s1 |
      s4 a2 ( gis4) |
    }
  >>
  %msr 23
  r4 <g? cis' e'>4-.-- r4 <fis b dis'>-.-- |
  %msr 24
  r4 <fis a d'>-.-- <fis a>-.-- <fis b>-.-- \clef bass |
  <<
    \context Voice = AIII {
      \stemUp \slurUp r2 g2 ( ~ g2 gis)
    }
    \context Voice = BIII {
      \tieDown s2 d2 ~ d1
    }
  >>
}

PIIILH = {
  \context Voice=CIII {
    r2 r4 <a a'>8^\mf -! r8 |
    <a a'>-! r8 <a a'>-. r16 <a a'>16-.
    <a a'>8-. r8 <a a'>8-.r8 \key b \minor |
    \repeat unfold 2 {
      <bes, bes,,>8-!-^ r8
      \tuplet 5/4 {
        cis16 d e f gis
      } a8^! r8
      \tuplet 3/2 {
        <bes, bes,,>8 <bes, bes,,> <bes, bes,,>
      } |
      <a, a,,>8_! r8 <a a'>-. r16 <a a'>16-. <a a'>8-. r8 <a a'>8-. r8 |
    }
    % msr 7
    <g, g,,>8_!_^ r8
    \tupletOff
    \tuplet 6/4 {
      cis16_3 d_1 dis_3 e_2 g_1 bes_3
    } cis'8^!_2 r8
    \tuplet 3/2 {
      <g, g,,>8 <g, g,,> <g, g,,>
    } | % msr 8
    <fis, fis,,>8-! r8 <a a'>-. r16 <a a'>16-. <a a'>8-. r8 <a a'>8-. r8 | % msr 9
    <g, g,,>8_!_^ r8
    \tuplet 6/4 {
      cis16 d dis e g bes
    } cis'8^! r8
    \tuplet 3/2 {
      <g, g,,>8 <g, g,,> <g, g,,>
    } | % msr 10
    <fis, fis,,>8 r8 <a a'>-. r16 <a a'>16-. <a a'>8-. r8
    \tuplet 3/2 {
      <fis, fis,,>8 <fis, fis,,> <fis, fis,,>
    } | %msr11
    <f, f,,>8 r8 <a a'>-. r16 <a a'>16-. <a a'>8-. r8
    \tuplet 3/2 {
      <f, f,,>8 <f, f,,> <f, f,,>
    } | %msr12
    <e, e,,>8-! r8 <dis, dis,,>-! r8 <d, d,,>-! r8 <d d,>-! r8 |
    %msr13
    <cis cis,>-. r8 \clef treble <cis' fis' a' d''>2-^ ^"rinforz molto"
    <cis fis a d'>4-! |
    %msr 14
    \clef bass
    <cis eis gis b d'>2\arpeggio-^ r4
    \tuplet 3/2 {
      <cis cis,>8 \< <cis cis,>8 <cis cis,>8 \!
    } |
    %msr 15
    <cis cis,>-. r8 <cis fis a d'>2-^
    <cis, fis, a, d>4-! |
    %msr 16
    <cis, eis, gis, b, d>2\arpeggio-^ r4
    \tuplet 3/2 {
      cis,8^"marcato" cis, cis,
    } |
    %msr 17
  }
  <<
    \context Voice = CIII {
      \stemUp
      \tuplet 3/2 {
        cis,8 cis, cis,
      }
      \tuplet 3/2 {
        cis,8 cis, cis,
      }
      \tupletOff
      \repeat unfold 22 \tuplet 3/2 {
        cis,8 cis, cis,
      }
      cis,8^"decresc." cis, cis, cis, cis, cis, cis, cis,
      |
      \dynamicUp cis,4 cis, cis, d, |
      \slurUp s2 b,2 ( ~ b, eis,) \dynamicNeutral
    }
    \context Voice = DIII {
      \stemDown
      \slurDown
      s2 b,,2_> ( |
      a,,_> gis,,)_> |
      %msr 19
      r4 g,,!2 ( a,,4 |
      %msr 20
      b,,1) |
      %msr 21
      r4 g,,2 ( a,,4 |
      %msr 22
      b,,1) |
      %msr 23
      r4 ais,,4_- r4 b,,_- |
      cis,_- b,,_- cis,_- cis,_- |
      %msr 25
      \tieDown r2 cis,2 ~|
      cis,1
    }
  >>
}

% $Id: ballade_p4.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
% part IV (starting at broken octaves, agitato in tempo)
PIVRH = {
  <<
    \context Voice= AIV {
      \stemUp \break
      %%FIXME
      a,16[^"agitato (in tempo)"
      a b, b bis, bis cis cis' ]
      d[ \< d' e e' eis eis' fis fis' ] |
      %msr 2
      a[ a' gis gis' g g' fis \! fis' ] \clef treble
      d'[ d'' cis' cis'' bis bis' b b'] |
      %msr 3
      a16[ a' b b' bis bis' cis' cis'' ]
      d'[ d'' e' e'' eis' eis'' fis' fis'' ] |
      %msr 4
      a'[ a'' gis' gis'' g' g'' fis' fis'' ]
      d''[ d''' cis'' cis''' bis' bis'' b' b''] |
      %msr 5
      ais'[ ais'' b' b'' bis' bis'' cis'' cis''']
      g''[ g''' fis'' fis''' f'' f''' e'' e'''] |
      %msr 6
      dis''[ dis''' e'' e''' eis'' eis''' fis'' fis''']
      c'''[ c '''' b'' b''' bes'' bes''' a'' a'''] |
      %msr 7
      s8 gis''16[ gis''' a'' a''' g'' g''' ]
      s8 fis''16[ fis''' g'' g''' fis'' fis'''] |
      %msr 8
      s8 eis''16[ eis''' fis'' fis''' eis'' eis''' ]
      e''[ e''' d'' d''' cis'' cis''' b' b''] |
      %msr 9
      a'[ a'' gis' gis'' fis' fis'' eis' eis'' ]
      e'[\> e'' dis' dis'' d' d'' cis'\! cis''] |
      %msr 10
    }
    \context Voice= BIV {
      \stemDown
      a,8[ b, bis, cis ] d[ e eis fis ] |
      %msr 2
      a[ gis g fis] d'[ \> cis' bis b\!] |
      %msr 3
      a8[ b bis cis' ] d'[ e' eis' fis' ] |
      %msr 4
      a'[ gis' g' fis'] d''[ cis'' bis' b'] |
      %msr 5
      ais'[ b' bis' cis''] g''[ fis'' f'' e''] |
      %msr 6
      dis''[ e'' eis'' fis''] c'''[ b'' bes'' a''] |
      %msr 7
      r8 gis''[\< a'' g''\! ] r8 fis''[\< g''fis''\!] |
      %msr 8
      r8 eis''[\< fis'' eis''\! ] e''[ d'' cis'' b' ]|
      %msr 9
      s1
    }
  >>
  %msr 10
  <<
    \context Voice= AIV {
      \slurUp
      r4 <cis' fis' cis''>( b'^> a') |
      %msr 11
      <d' d''>2^^ s2 |
      %msr 12
      r4 \stemDown <cis'' fis'' cis'''>4( \stemUp b''^> a'') |
      %msr 13
      <d'' d'''>2^^ s2 |
    }
    \context Voice= AIVprim {
      \stemUp \shiftOn
      s2 fis' |
      s1 |
      s2 fis'' |
      s1
    }
    \context Voice= BIV {
      \slurDown \shiftOn
      s2 cis'4. ( d'8) |
      %msr 11
      \slurUp b'4 ( bes' \stemNeutral <eis' a'>_> ~ <eis' gis'>8 ) r8 |
      %msr 12
      s2 \slurDown \stemDown cis''4. ( d''8) |
      %msr 13
      \slurUp
      b''4 ( bes'' \tieDown <a'' eis''>^> ~ <gis'' eis''>8 ) r8 |
    }
  >>
  <<
    \context Voice= AIV {
      %msr 14
      r4 \ottava #1
      cis''' c'''4 ( b''8)-. s8 |
      %msr 15
      s4 fis''' f'''4( e'''8)-. s8 |
      %msr 16
      r4 \stemNeutral
      <gis'' d''' f''' gis'''>^> <a'' d''' f''' a'''>^>
      <bes'' d''' f''' bes'''>^> |
      %msr 17
      <b'' d''' gis''' b'''>4^> <bis'' eis''' gis''' bis'''>^>
      <cis''' eis''' gis''' cis''''>4.. ^>
      \ottava #0
      \clef bass
      <cis cis'>16 |
    }
    \context Voice= BIV {
      %msr 14
      \shiftOff s4
      <e'' g'' e'''>4 <e'' g'' e'''>4.^> r8 |
      %msr 15
      r4 <a'' c''' a'''> <a'' c''' a'''>4.^> r8 |
      %msr 16 - 17
      s1 s1
    }
  >>
}

PIVLH = {
  <<
    \context Voice= CIV {
      \stemUp \tieUp \slurUp
      <fis,, cis, fis,>8\arpeggio^\p r8 r4 r4
      <fis, a, d>4( ~ |
      d2 eis |
      %msr 3
      <fis cis fis,>8)-. r8 r4 r4
      <fis a d'>4 ~ |
      d'2 eis'( ~|
      %msr 5
      eis'4 e'!) r4 \clef treble g' ( ~|
      %msr 6
      g'^"cresc." fis') r <dis' fis' c''>( |
      %msr 7
      <d'! fis' b'> a'2) a'4 ( |
      %msr 8
      gis' fis'2) s4 |
      %msr 9
      s1
      %msr 10
      a,,16[ a, b,, b, bis,, bis, cis, cis] d,[ d e, e eis, eis fis, fis] |
      %msr 11
      a,[ a gis, gis g, g fis, fis] d[ d' cis cis' bis, bis b, b] |
      %msr 12
      a,[ a b, b bis, bis cis cis'] d[ d' e e' eis eis' fis fis'] |
      %msr 13
      a[ a' gis gis' g g' fis fis' ]
      \clef treble d'[ d'' cis' cis'' bis bis' b b'] |
      %msr 14
      ais[ ais' b b' bis bis' cis' cis''] \clef bass g[ g' fis fis' f f' e e'] |
      %msr 15
      dis[ dis' e e' eis eis' fis fis'] c[ c' b, b bes, bes a, a] |
      %msr 16
      gis,[ gis a, a ais, ais b, b] a,[ a gis, gis g, g fis, fis] |
      %msr 17
      eis,[ eis e, e dis, dis d, d] cis,[ cis b,, b, a,, a, gis,, gis,] |
    }
    \context Voice= DIV {
      \stemDown \slurDown
      s1 b,4 bes, a, gis, |
      s2. fis4 ( b4 bes a gis |
      %msr 5
      <g! cis'>2 s4) <ais cis'>4 |
      <a! c'>2 s2 |
      %msr 7
      s4 <cis'! e'>4( <c' ees'> <b d'> ~ |
      %msr 8
      <b d'>) <a cis'>( <gis b> <d' fis'> |
      %msr 9
      <cis' fis'> ) r4 \clef bass <cis eis gis b> r4 |
      \stemDown
      %msr 10
      a,,8[_"tempestuoso" b,, bis,, cis, ] d,[ e, eis, fis, ] |
      %msr 11
      a,[ \< gis, g, fis, \!] d[ cis bis, b,] |
      %msr 12
      a,[ b, bis, cis ] d[ e eis fis ] |
      %msr 13
      a[ gis g fis ] \clef treble d'[ cis' bis b] |
      %msr 14
      ais[ b bis cis'] \clef bass g[ fis f e] |
      %msr 15
      dis[ e eis fis] c[ b, bes, a,] |
      %msr 16
      gis,[ a, ais, b,] a,[ gis, g, fis,] |
      %msr 17
      eis,[ e, dis, d,] cis,[ b,, a,, gis,,] |
    }
  >>
}

% $Id: ballade_p5.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PVRH = {
  <<
    \context Voice=AV{
      \stemUp
      %msr 1
      <cis cis'>2^^ s2 |
      s1 |
      %msr 3
      <fis fis'>2^^ s2 |
      s1 |
      %msr 5
      <d d'>1 s1 |
      s1 |
      s1 |
      s1 |
      s1 |
      s1 |s1 |
      s1
      %msr 14
      s1 s1 s1
      %msr 17
      r4 <des' f' des''>2 <des' e' des''>4 ~ |
      %msr 18
      %\portamentoUp
      <des' e'des''>4_"espressivo" <des' ees' des''>-.(
      <des' ees' des''>-.
      <des' ees' c''>)-.|
      %\portamentoOff
      %msr 19
      \stemUp \relative a' {
        a4.( bes8 ~ <bes f'>2 ~ |
        \stemNeutral
        f'4 ees des4.) c8 |
        \slurUp \tieUp
        %msr 20
        c2 (
      } <bes ees' bes'> ~ |
      \stemUp
      bes'4 a' cis''!8 b'!4 a'8) |
      %msr 22
    }
    \context Voice=BV{
      \stemDown
      cis16[ fis cis' cis'] \clef treble
      fis'[ cis'' cis'' fis'']
      cis'''[ cis''' fis''' cis'''' ] r4 \clef bass |
      <d fis a d'>2-> <e cis' e'>-> |
      fis16[ cis' fis' fis'] \clef treble
      cis''[ fis'' fis'' cis'''] fis'''[ fis''' cis'''' fis''''] r4 \clef bass|
      %msr 4(116)
      r4 <cis fis cis'> <e fis e'>4..-^ <d d'>16 |
      %msr 5
      d16[ fis d' d'] \clef treble fis'[ d'' d'' fis'']
      d'''[ d''' fis''' d''''] cis''''[^4 fis'''^2 d'''^1 cis'''^4] |
      fis''[ d'' cis'' fis' ] \clef bass d'[ cis' fis d]
      cis[ fis, d, cis,] r4 \clef treble|
      %msr 7
      \stemNeutral <gis d' gis'>8-! r16 <gis' d'' gis''>16[ <gis' d'' gis''>8-!]
      r16 <gis'' d''' gis'''>16[ <gis'' d''' gis'''>8-!] r8 r4 |
      %msr 8
      <a d' fis' a'>2-^ <b d' fis' b'>-^ |
      %msr 9
      <cis' fis' cis''>8-.-^ r16 <cis'' fis'' cis'''>[<cis'' fis'' cis'''>8-!] r16
      <cis''' fis''' cis''''>16[<cis''' fis''' cis''''>8-!] r8 r4 |
      %msr 10
      r4 <cis' fis' a' cis''>-> <e' fis' a' e''>4.(^^ <d' d''>8) |
      %msr 11
      \stemNeutral <gis d' gis'>8-! r16 <gis' d'' gis''>16[ <gis' d'' gis''>8-!]
      r16 <gis'' d''' gis'''>16[ <gis'' d''' gis'''>8-!] r8 r4 |
      %msr 12
      <a d' fis' a'>2-^ <b d' fis' b'>-^ |
      %msr 13
      <cis' fis' cis''>8-.-^ r16 <cis'' fis'' cis'''>[<cis'' fis'' cis'''>8-!] r16
      <cis''' fis''' cis''''>16[<cis''' fis''' cis''''>8-!] r8 r8. \clef bass
      <cis fis cis'>16 |
      %msr 14
      <cis eis b cis'>8-.-^ r16 \clef treble
      <cis'' eis'' cis'''>[<cis'' eis'' cis'''>8-.] r16
      <cis''' eis''' cis''''>16[<cis''' eis''' cis''''>8-.] r8 r8. \clef bass
      <eis b cis'>16 |
      %msr 15
      <f bes des'>8 r8 r8. \clef treble <f' bes' des''>16[ \> <f' bes' des''>8] r16
      <f'' bes'' des'''>16[ <f'' bes'' des'''>8] r16 <f''' bes''' des''''>16 |
      <f''' bes''' des''''>8 r16 <f'' bes'' des'''>16[ <f'' bes'' des'''>8] \! r16
      <f' bes' des''>16[ <f' bes' des''>8] s4. |
      %msr 17
      s1 s1 s1 s1 s1 \stemDown <cis'! e'!> |
      %msr22
    }
  >>
}

PVLH = {
  <<
    \context Voice=CV{
      %msr 1 (113)
      \stemNeutral <fis,, cis, fis,>8^\ff-.-^ r8 r8. <cis fis cis'>16
      <cis fis cis'>8-.-^ r8 r8 \stemUp \slurUp eis,,16[ ( eis,] |
      %msr 2 (114)
      fis,,16[ fis, g,, g, gis,, gis, a,, a,]
      ais,,[ ais, b,, b, bis,, bis, cis, cis) ] |
      %msr 3
      \stemNeutral <fis,, cis, fis,>8^\ff-.-^ r8 r8. <fis cis' fis'>16[
      <fis cis' fis'>8^.^^] r8 r8 \stemUp \slurUp eis,,16[ ( eis,] |
      %msr 4
      fis,,16[ fis, g,, g, gis,, gis, a,, a,]
      ais,,[ ais, b,, b, bis,, bis, cis, cis) ] |
      %msr 5
      \stemNeutral <fis,, d, fis,>8\arpeggio-.-^ r8 r8.
      <d fis d'>16[ <d fis d'>8-.-^] r8 r8. <cis fis cis'>16 |
      <cis fis cis'>8-.-^ r8 r4 r4 fis,,8-. r8 |
      %msr 7
      <b,, fis, b,>8^\ff -! r16 <b, fis gis>16[ <b, fis gis>8-!]
      r16 <b fis' gis'>16[ <b fis' gis'>8-!] r8 r8 \stemUp
      ais,,16[ ais,] |
      %msr 8
      b,,[ b, bis,, bis, cis, cis d, d]
      dis,[ dis e, e eis, eis fis, fis] |
      \stemNeutral
      %msr 9
      <a,, fis, a,>8\arpeggio-.-^ r16
      <cis fis a cis'>16[ <cis fis a cis'>8-!] r16 \clef treble
      <cis' fis' a' cis''>16[ <cis' fis' a' cis''>8-!] r8 r8 \clef bass \stemUp
      fis,16[ ( fis]
      %msr 10
      eis,[ eis e, e dis, dis d, d]
      cis,[ cis bis,, bis, b,, b, ais,, ais,)] \stemNeutral
      %msr 11
      <b,, fis, b,>8^\ff -! r16 <b, fis gis>16[ <b, fis gis>8-!]
      r16 <b fis' gis'>16[ <b fis' gis'>8-!] r8 r8 \stemUp
      ais,,16[ ais,] |
      %msr 12
      b,,[ b, bis,, bis, cis, cis d, d]
      dis,[ dis e, e eis, eis fis, fis] |
      \stemNeutral
      %msr 13
      <a,, a,>8-.-^ r16
      <cis fis a cis'>16[ <cis fis a cis'>8-!] r16 \clef treble
      <cis' fis' a' cis''>16[ <cis' fis' a' cis''>8-!] r8 r8. \clef bass
      <a,, a,>16 |
      %msr 14
      <gis,, gis,>8-.-^ r16
      <eis b cis'>16[ <eis b cis'>8-.] r16 \clef treble
      <eis' b' cis''>16[ <eis' b' cis''>8-.] r8 r8. \clef bass
      <gis,, gis,>16 |
      %msr 15
      <g,,! g,!>8-.-^ s8 s2. |
      s2 s8 r16 <f bes des'>16[ <f bes des'>8] r16 s16 |
      %msr 17
      f4\rest \stemDown <f bes>2 <g, e bes>4\arpeggio ~ |
      %msr 18
      %\portamentoUp
      <g, e bes> <g, ees bes>-.( <g, ees bes>-. <a,fis>)-. |
      %\portamentoOff
      % 19
      <des g bes ees'>1 R1
      r2 <des g> <g, e! a>1 |
      %22
    }
    \context Voice=DV{
      \stemDown
      s2 s4 s8 eis,,8 |
      %msr 2 (115)
      fis,,[\< g,, gis,, a,,] ais,,[ b,, bis,, \! cis,] |
      s2 s4 s8 eis,,8 |
      fis,,[\< g,, gis,, a,,] ais,,[ b,, bis,, \! cis,] |
      s1 s1 s2.. ais,,8 |
      %msr 8
      b,,[ bis,, cis, d,] dis,[ e, eis, fis, ] |
      s2.. fis,8 |
      %msr 10
      \relative c, {
        eis[ e dis d] cis[ bis b ais] |
      }
      %msr 12
      s2.. ais,,8 |
      b,,[ bis,, cis, d,] dis,[ e, eis, fis, ] |
      s1 |
      s1 s1 |
      s2... g,16 |
      %msr 17
      g,2. s4 |
      s1 |
      s1 |
      s1 s1 s1 |
      %msr22
    }
  >>
}

% $Id: ballade_p6.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PVIRH= {
  <<
    \context Voice=AVI {
      \stemUp
      \relative a' {
        <a>4.^"a piacere cantando"\arpeggio \( \stemNeutral
        \tuplet 3/2 {
          b16[ a gis]
        } a8 \< e'4 d8\) \! |
        cis4.
        \( \tuplet 3/2 {
          d16[ cis b]
        } cis8 \< g'4 fis8\) \! |
        fis-.\( e4-. d8-.~d cis\)-. cis4 ~ |
        cis2 b4 r4 |
        bes4.
        \( \tuplet 3/2 {
          c16[ bes a]
        } bes8 \< f'4 ees8\) \! |
        d4.
        \( \tuplet 3/2 {
          e!16[ d cis]
        } d8 \< a'4 bes8\) \! |
        ais4 ( b~ b8[^"rit." a-. g8.-. fis16)]
      }
    }
    \context Voice=BVI {
      \stemDown
      <d'>8_\p\arpeggio s2.. s1 s1 s1
    }
  >>
}

PVILH= {
  <<
    \context Voice=CVI {
      \stemUp \tieUp
      fis,8 fis16[ a d' fis' ~ fis'8 ] r2 |
      fis,8 fis16[ ais d' ais' ~ ais'8 ] r2 |
      g,8 g16[ b d' e' ~ e'8 ] r2 |
      R1 %\break
      g,8 g16[ bes ees' g' ~ g'8 ] r2 |
      bes,8 \clef treble bes16[ d' g' bes' ~ bes'8 ] r2 |
      \clef bass a,8 \clef treble a16[ cis' e' g' ~ <g' b'>8 ~ ] <g' b'>2
      \clef bass |
    }
    \context Voice=DVI {
      \stemDown \tieDown
      \set autoBeaming = ##f
      \override Stem.length = #12
      s8 s8 d'8 ~ d'8 s2 |
      s8 s8 d'8 ~ d'8 s2 |
      s8 s8 d'8 ~ d'8 s2 |
      s1
      s8 s8 es'8 ~ es'8 s2 |
      s8 s8 g'8 ~ g'8 s2 |
      s8 s8 e'4 ~ e'2 |
    }
    \context Voice=EVI {
      \stemDown \tieDown
      \override Stem.transparent = ##t
      \override Flag.transparent = ##t
      \set autoBeaming = ##f
      s8 s16 a16 ~a8 ~a8 s2 |
      s8 s16 ais16 ~ais8 ~ais8 s2 |
      s8 s16 b16 ~b8 ~b8 s2 |
      s1
      s8 s16 bes16 ~bes8 ~bes8 s2 |
      s8 s16 d'16 ~d'8 ~d'8 s2 |
      s8 s16 cis'16 ~cis'4 ~cis'2 |
    }
    \context Voice=FVI {
      \stemDown \tieDown
      s8 fis4 ~
      \override Stem.transparent = ##t
      \override Flag.transparent = ##t
      fis8 s2 |
      \revert Stem.transparent
      \revert Flag.transparent
      s8 fis4 ~
      \override Stem.transparent = ##t
      \override Flag.transparent = ##t
      fis8 s2 |
      \revert Stem.transparent
      \revert Flag.transparent
      s8 g4 ~
      \override Stem.transparent = ##t
      \override Flag.transparent = ##t
      g8 s2 |
      s1
      \revert Stem.transparent
      \revert Flag.transparent
      s8 g4 ~
      \override Stem.transparent = ##t
      \override Flag.transparent = ##t
      g8 s2 |
      \revert Stem.transparent
      \revert Flag.transparent
      s8 bes4 ~
      \override Stem.transparent = ##t
      \override Flag.transparent = ##t
      bes8 s2 |
      \revert Stem.transparent
      \revert Flag.transparent
      s8 a8 ~
      \override Stem.transparent = ##t
      \override Flag.transparent = ##t
      a4 ~ a2 |
    }
  >>
}

% $Id: ballade_p7.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PVIIRH = {
  <<
    \context Voice=AVII {
      \oneVoice
      fis''4 ( e''2) <g' b' cis'' eis''>4( |
      %2
      <fis' a' d'' fis''>)(\arpeggio_"dolce"
      <d'' fis'' a''>8 <fis'' a'' d'''> <d'' fis'' b''> <b' d'' g''>
      <g' b' e''> fis'' |
      %3
      \grace { a'' }
      \voiceOne g'' fis'' g'' b'' \oneVoice
      <b' eis'' gis''>4 <fis'' a''>8 ) r8 |
      %4
      \ottava #1
      r8 <a'' d''' fis'''>[(
      <d''' fis''' a'''>8 <fis''' a''' d''''>] <d''' fis''' b'''> <b'' d''' g'''>
      <g'' b'' e'''> fis''' |
      %5
      \acciaccatura { a''' }
      \voiceOne
      g''' fis''' g''' b''' \oneVoice
      <b'' eis''' gis'''>4 <c''' fis''' a'''>8 ) r8 |
      \ottava #0
      %6
      r8
      <c'' fis'' a''>[( <e'' g'' c'''> <fis'' a'' e'''>]
      <e'' g'' c'''>4~<fis'' a'' c'''>8 ) r8 |
      %7
      r8 <e'' g'' c'''>[( <fis'' a'' e'''> <b'' e''' g'''>]
      <g'' c''' e'''> <e'' a'' c'''> <c'' fis'' a''>) <b'' e''' g'''>( |
      %8
      <g''c''' e'''> <e'' a'' c'''> <c'' fis'' a''>) <b'' e''' g'''>(
      <g'' c''' e'''>4 <e'' a'' c'''>)
      %9
      <c'' fis'' a''>2(~
      \tuplet 6/4 {
        <c''fis'' a''>8[^"poco rall."
        <g'' b''> <fis'' a''>
        <e''g''> <fis'' a''>8. <g'' b''>16)]
      } |
      %10
      \tieDown <b' g'' b''>4_"sempre dolce"( ~ <b' d''>8[ <b' d'' g''> ]
      <g'b'e''><e'g' c''><c' e' a'> b' |
      \acciaccatura { d'' }
      \voiceOne
      c''[ b' c'' e'' ] \oneVoice
      <e' ais' cis''>4 <b' d''>8 ) r8 
      %12
      r8 <d'' g'' b''>8[( <g'' b'' d'''>8 <b'' d''' g'''> ]
      <g''b''e'''><e''g'' c'''><c'' e'' a''> <d'' fis'' b''> |
      \acciaccatura { d''' }
      \voiceOne
      c'''[ b'' c''' e''' ]
      \oneVoice
      <e'' ais'' cis'''>4 <f'' b'' d'''>8 ) r8 |
      %14
      r8 <f' b' d''>8[( <a'c''f''> <b'd'' a''>] <a'c''f''>4~<b' d''f''>8 ) r8 |
      %15
      r8 <a' c'' f''>[(<b'd''a''><f''b''d'''>]
      <c''f''a''><a' d''f''><f'b'd''>) <f''b''d'''>( |
      <c''f''a''><a' d''f''><f'b'd''>) <f''b''d'''>(
      <c'' f''a''>4_"più dim."<a' d''f''> |
      %msr17
      <f'b' d''> <e' a' c''> <c' f'a'> <b d' f'>) \clef bass |
      \tupletOff
      \tupletOff
      \tuplet 6/4 {
        <bes ees'>8[\( ees bes ees' bes ees ]
      }
      \tuplet 6/4 {
        bes[ ees'_"un poco marcato" bes ees bes ees']
      } |
      \tuplet 6/4 {
        r8 ees[ bes ees' bes ees~]
      }
      \tuplet 6/4 {
        ees[ ees bes ees' bes ees]
      } |
      \tuplet 6/4 {
        r8 ees[ bes ees' bes ees]
      }
      \tuplet 6/4 {
        r8 ees[ bes ees' bes ees\)]
      } |
    }
    \context Voice=BVII{
      s1 s1 \voiceTwo
      %3
      <b' d''>4. <cis'' e''>8 s2 s1
      %5
      <b'' d'''>4. <cis''' e'''>8 s2
      s1 s1 s1 s1 s1
      %11
      <e' g'>4. <fis' a'>8 s2 s1
      <e'' g''>4. <fis'' a''>8 s2 s1
      s1 s1 s1 s1 s1 s1 |
    }
  >>
}

PVIILH = {
  <<
    \context Voice=CVII {
      \stemUp
      s1
      \tuplet 6/4 {
        a8\rest a[ d' a' d' a~]
      }
      \tuplet 6/4 {
        a[ a d' a' d' a~]
      }
      %3
      \tuplet 6/4 {
        a[ a d' a' d' a~]
      }
      \tuplet 6/4 {
        a[ a d' a' d' a]
      }
      \tupletOff
      \tuplet 6/4 {
        r8 a[ d' a' d' a~]
      }
      \tuplet 6/4 {
        a[ a d' a' d' a~]
      }
      %5
      \tuplet 6/4 {
        a[ a d' a' d' a~]
      }
      \tuplet 6/4 {
        a[ a d' a' d' a]
      }
      \tuplet 6/4 {
        r8 a[ d' a' d' a~]
      }
      \tuplet 6/4 {
        a[ a d' a' d' a]
      }
      %7
      \tuplet 6/4 {
        r8 a[ d' a' d' a~]
      }
      \tuplet 6/4 {
        a[ a d' a' d' a~]
      }
      \tuplet 6/4 {
        a[ a d' a' d' a~]
      }
      \tuplet 6/4 {
        a[ a d' a' d' a~]
      }
      %9
      \tuplet 6/4 {
        a[ a d' a' d' a]
      } r4 \clef treble <d' c''>4 \clef bass |
      %10
      \tuplet 6/4 {
        r8 d[ g d' g d ~]
      }
      \tuplet 6/4 {
        d[ d g d' g d~]
      }
      \tuplet 6/4 {
        d[ d g d' g d ~]
      }
      \tuplet 6/4 {
        d[ d g d' g d]
      }
      \tuplet 6/4 {
        r8 d[ g d' g d ~]
      }
      \tuplet 6/4 {
        d[ d g d' g d~]
      }
      \tuplet 6/4 {
        d[ d g d' g d]
      }
      \tuplet 6/4 {
        r8 d[ g d' g d ]
      }
      \tuplet 6/4 {
        r8 d[ g d' g d ~]
      }
      \tuplet 6/4 {
        d[ d g d' g d]
      }
      \tuplet 6/4 {
        r8 d[ g d' g d ~]
      }
      \tuplet 6/4 {
        d[ d g d' g d]
      }
      \tuplet 6/4 {
        r8 d[ g d' g d ]
      }
      \tuplet 6/4 {
        r8 d[ g d' g d ]
      }
      s1 r2 r8
      ees,8[_\pp ( g, ces] |
      bes, g, ees,) ces (bes, g, ees,) ces (|
      bes,4 g, ees, des,) |
    }
    \context Voice=DVII{
      \stemDown
      r2 r4 a ( d,1) |
      s1 |
      d,1 |
      s1
      d,1 |d,1 |
      s1 s1 g, s2 g,2 g,1 s2 g,2 g,1 g,1 g,2 g,2 R1 g,, s1 s1 |
    }
  >>
}

% $Id: ballade_p8.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PVIIIbassoTI= {
  \relative c, {
    b16[ ( cis d dis e eis fis fisis gis fisis fis eis e dis cisis cis) ] |
  }
}

PVIIIbassoTint= {
  \relative c, {
    b16[ (cis cisis dis e eis fis fisis gis fisis fis eis e dis d bis) ] |
  }
}

PVIIIbassoTII= {
  \relative c, {
    cis16[ (dis e eis fis fisis gis a ais a gis fisis fis eis e dis) ] |
  }
}

PVIIIbassoTIIIvC= {
  g,,16[ g, aes,, aes, a,, a, bes,, bes,]
  b,,[ b, c, c cis, cis d, d] |
  ees,[ ees d, d des, des c, c]
  b,,[ b, bes,, bes, a,, a, aes,, aes,] |
}

PVIIIbassoTIIIvD= {
  g,,8[ aes,, a,, bes,,]
  b,,[ c, cis, d,] |
  ees,[ d, des, c, ]
  b,,[ bes,, a,, aes,,] |
}

PVIIIbassoTIVvC = {
  f,,16[ f, fis,, fis, g,, g, aes,, aes,]
  a,,[ a, bes,, bes, b,, b, c, c]
  r8 b,,16[ b, bes,, bes, a,, a,]
  aes,,[ aes, g,, g, fis,, fis, f,, f,]
}

PVIIIRH= {
  \key b \major
  <<
    \context Voice=AVIII {
      \stemUp \slurUp \tieUp
      \set PianoStaff.connectArpeggios = ##t
      <dis gis dis'>1^>_\mf e'2\arpeggio ^> fis'\arpeggio ^>
      gis'1\arpeggio ^> \< ~ |
      gis'4 dis' ( fis'4.^> e'8) \! |
      e'1( dis'4) r4 r2 |
      <e gis ais>1_"crescendo" ^> |
      \stemNeutral
      <e gis b>2^> <e gis cis'>2^> |
      \stemNeutral
      % 9
      \tieNeutral
      <dis gis dis'>1^^ ~ |
      <dis gis dis'>2 \stemUp fis'4\arpeggio ( e') |
      \stemNeutral <e gis ais>1-> |
      <e gis b>2-> <e gis cis'>-> |
      <dis gis dis'>2.-> <dis dis'>4 |
      <dis fisis cis' dis'>2.-> <dis dis'>4 |
      \tieNeutral
      %15
      ees16[ ees'^"agitato, poco a poco animando"
      e e' f f' fis fis'] \clef treble
      g[ g' gis gis' a a' bes bes'] |
      %16
      b[ \< b' c' c'' cis' cis'' d' \! d'']
      ees'[ ees'' d' d'' cis' cis'' c' c''] |
      %17
      fis[ fis' g g' gis gis' a a']
      bes[ bes' b b' c' c'' cis' cis''] |
      %18
      d'[ \< d'' ees' ees'' e' e'' f' \! f'']
      fis'[ fis'' f' f'' e' e'' ees' ees'']
      %19
      c''[ c''' b' b '' bes' bes'' a' a'']
      ees''[ \< ees''' e'' e''' f'' f''' fis'' \! fis'''] |
      \key c \minor
      %20
      <g c' ees' g'>1^>_\markup {\dynamic f tempestuoso} |
      <aes c' ees' aes'>2-> <bes ees' bes'>-> \slurNeutral
      %22
      <c' ees' c''>1_> ~ |
      <c' ees' c''>4 <g ees' g'>( <bes ees' bes'>4.
      <aes aes'>8) |
      %24
      <aes c' ees' aes'>1(^^ |
      <g c' ees' g'>4 ) r4 r2 \clef bass |
      %26
      <d aes c' d'>1-^ |
      <ees aes c' ees'>2-> <f aes c' f'>->|
      %28
      <g c' g'>1->~|<g c' g'>4 <bes bes'>2->( <aes aes'>4) |
      %30
      <d aes c' d'>1-^ |
      <ees aes c' ees'>2-> <f aes c' f'>-> |
      %32
      <g c' g'>2.-^ <g g'>4|
      <g b f' g'>2.^^ <g g'>4 |
      \key b \minor
      <g ais e' g'>8-! \clef treble
      gis16[ gis' a a' ais ais'] b[ b' c' c'' cis' cis'' d' d''] |
      %35
      dis'[ dis'' e' e'' eis' eis'' fis' fis'']
      g'[ g'' fis' fis'' eis' eis'' e' e'']|
      cis'[ cis'' d' d'' dis' dis'' e' e'' ]
      eis'[ eis'' fis' fis'' g' g'' gis' gis'']|
      %37
      a'[ a'' ais' ais'' b' b'' bis' bis'' ]
      cis''[ cis''' bis' bis'' b' b'' ais' ais'']|
      %38
      r16 <g'' cis''' g'''>[^"stringendo" c'''\rest <fis'' fis'''> b''\rest
      <eis'' eis'''> a''\rest <e'' e'''>]
      r16 <d''gis'' d'''>[ g''\rest <cis'' cis'''> g''\rest <c'' c'''> g''\rest <b' b''>] |
      %39
      r16 <a'' dis''' a'''>[ r <gis'' gis'''> r <g'' g'''> r <fis'' fis'''>]
      r16 <e'' ais'' e'''>[ r <dis'' dis'''> r <d'' d'''> r <cis'' cis'''>]
      %40
      \ottava #1
      r16 <b'' eis''' b'''>[ r <ais'' ais'''> r <a'' a'''> r <gis'' gis'''>]
      r16 <c''' fis''' c''''>[ r <b'' b'''> r <ais'' ais'''> r <a'' a'''> ]
      %41
      r16 <cis''' g''' cis''''>[ r <c''' c''''> r <b'' b'''> r <ais'' ais'''>]
      r16 <d''' gis''' d''''>[ r <cis''' cis''''> r <c''' c''''> r <b'' b'''> ]
      %42
      \transpose c c''' {
        r16 <g ais cis' g'>[ r <fis fis'> r <eis eis'> r <e e'> ]
        r16 <cis cis'>[ r <c c'> r <b, b> r <ais, ais>]
      }
      \transpose c c'' {
        r16 <g ais cis' g'>[ r <fis fis'> r <eis eis'> r <e e'> ]
        \ottava #0
        r16 <cis cis'>[ r <c c'> r <b, b> r <ais, ais>]
      }
      \transpose c c' {
        r16 <g ais cis' g'>[ s <fis fis'> s <eis eis'> s <e e'> ]
        r16 <cis cis'>[ s <c c'> s <b, b> s <ais, ais>]
      }
      r16 g'[ r fis' r eis' r e' ]
      r16 cis'[ r c' r b r ais]
    }
    \context Voice=BVIII {
      \stemDown
      s1 <dis gis>4\arpeggio r4 <dis gis>4\arpeggio r4 |
      <dis gis b>\arpeggio r4 r2 r2 <gis b>2 |
      <gis b>1 ~<gis b>4 s4 s2 |
      s1 s1 s1
      %10
      s2 <dis gis>\arpeggio
      s1*35
    }
  >>
}

PVIIILH= {
  \key b \major
  <<
    \context Voice=CVIII {
      \repeat unfold 5 \PVIIIbassoTI
      \PVIIIbassoTint
      \repeat unfold 2 \PVIIIbassoTII
      \PVIIIbassoTI
      \PVIIIbassoTint
      \repeat unfold 2 \PVIIIbassoTII
      \relative c, {
        b16[ \< cis cisis dis e eis fis fisis gis a ais \! b] r4 |
        ais,16[ b cis cisis dis e eis fis fisis gis a ais ] r4
      }
      <a,, fis, c>8\arpeggio^\p r8 r4 r2 |
      r2 <gis, b, fis>( <a, c es>8)-. r8 r4 r2 |
      r2 s2 |
      <bes, ees fis!> ~ \stemUp <c fis> |
      \key c \minor
      \repeat unfold 3 {
        \PVIIIbassoTIIIvC
      }
      \PVIIIbassoTIVvC
      ees,,16[ ees, e,, e, f,, f, fis,, fis,]
      g,,[ g, aes,, aes, a,, a, bes,, bes,] |
      b,,[ b, c, c cis, cis d, d ees, ees] r8 r4 |
      \PVIIIbassoTIVvC
      ees,,16[ ees, e,, e, f,, f, fis,, fis,]
      g,,[ g, aes,, aes,] r4 |
      d,,16[ d, ees,, ees, e,, e, f,, f,]
      fis,,[ fis, g,, g,] r4 \key b \minor
      %34
      <cis,, cis,>8-! r8 r4 <b, d g!> r4 |
      <ais, cis g> r4 r2 |
      <g, ais, e>4 r4 <fis, a, d> r4 |
      <e, g, cis> r4 r2 |
      \stemUp
      %38
      g'16[ g'\rest fis' f'\rest eis' e'\rest e'] e'\rest
      d'[ d'\rest cis' c'\rest c' c'\rest b] b\rest |
      \clef treble
      %39
      a'[ r gis' r g' r fis'] r
      e'[ r dis' r d' r cis'] r
      %40
      b'[^"cresc. molto" r ais' r a' r gis' ] s
      c''[ r b' r ais' r a' ] r
      %41
      cis''[ r c'' r b' r ais'] r
      d''[ r cis'' r c'' r b' ] r
      %42
      \transpose c c' {
        <g ais cis' g'>_>[ r <fis fis'> r <eis eis'> r <e e'> ] r
        <cis cis'>[ r <c c'> r <b, b> r <ais, ais>] r
      }
      \clef bass \stemNeutral
      <g ais cis' g'>_>[ r <fis fis'> r <eis eis'> r <e e'> ] r
      <cis cis'>[ r <c c'> r <b, b> r <ais, ais>] r
      \transpose c' c {
        <g ais cis' g'>_>[ r <fis fis'> r <eis eis'> r <e e'> ] r
        <cis cis'>[ r <c c'> r <b, b> r <ais, ais>] r
      }
      \transpose c' c {
        <g g'>_>[ r <fis fis'> r <eis eis'> r <e e'> ] r
        <cis cis'>[ r <c c'> r <b, b> r <ais, ais>] r
      }
    }
    \context Voice=DVIII {
      \stemDown\slurDown
      s1*17
      s2 <b, dis a>2( s a,4 aes,) |
      \repeat unfold 3 {
        \PVIIIbassoTIIIvD
      }
      s1*12
      <ais cis'>4_> r4 <eis gis>_> r4 |
      <c' dis'>_> r <g ais>_> r
      <d' eis'>_> r <dis' fis'>_> r4 |
      %41
      <e' g'>_> r <eis' gis'>_> r |
      s1 s1 s1 s1
    }
  >>
}

% $Id: ballade_p9.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PIXRH={
  <<
    \context Voice=AIX{
      \tupletOff
      r4_
      \fff \tuplet 3/2 {
        <g' b' d'' g''>8[ <g' b' d'' g''> <g' b' d'' g''>]
      }
      <g' b' d'' g''>8-! r8 s4 |
      %2
      r4
      \tuplet 3/2 {
        <g'' ais'' e''' g'''>8[ <g'' ais'' e''' g'''> <g'' ais'' e''' g'''>]
      }
      <g'' ais'' e''' g'''>8-! r8 s4 |
      %3
      r4
      \tuplet 3/2 {
        <g' b' d'' g''>8[ <g' b' d'' g''> <g' b' d'' g''>]
      }
      <g' b' d'' g''>8-! r8 s4 |
      %4
      r4
      \tuplet 3/2 {
        \stemNeutral
        <g'' ais'' e''' g'''>8[ <g'' ais'' e''' g'''> <g'' ais'' e''' g'''>]
      }
      <g'' ais'' e''' g'''>8-! r8 s4 |
      %5
      r4
      \tuplet 3/2 {
        <g'' bes'' d''' g'''>8[<g'' bes'' d''' g'''><g'' bes'' d''' g'''>]
      }
      <g'' bes'' d''' g'''>8-! r8 s4 |
      %6
      r4
      \tuplet 3/2 {
        <g'' bes'' des''' g'''>8[<g'' bes'' des''' g'''><g'' bes'' des''' g'''>]
      }
      <g'' bes'' des''' g'''>8-! r8 s4 |
      s1 s16 \> s2.. s16 \! |
      %\break
      s8 r8 <des'' g'' bes''>2_\mf-- <des'' g'' bes''>4-~ |
      %10
      <des'' g'' bes''>4 %\portamentoUp
      <c'' g''bes''>4(-. <c'' g'' bes''>4-. <c'' dis'' a''>4-. )
      %\portamentoOff |
      %11
      \stemUp \slurUp \tieUp
      \relative c'' {
        fis4. ( g8 d'2~ |
        %12
        d8[ c bes8. a16) ] a2-> ~ |
        a4 g s2 |
      }
      %14
      r4 <e' bes'>-.( <e' bes'>-. <a' dis'>)-. |
      \relative f' {
        fis4.( g8 d'2~d4 c bes4. a8) a2.( g4)~
        \tupletOn \slurDown
        \tuplet 3/2 {
          g2^"rallent." fis4-. (
        }
        \tupletDown
        \tuplet 3/2 {
          ais_. gis4._-^\fermata
          fis8)
        }
        \tupletNeutral
      }
    }
    \context Voice=BIX{
      \stemUp
      \change Staff=down {
        g2^^ s2
        <cis! cis'!>^^ s |
        <g,! g!>^^ s |
        <cis! cis'!>^^ s |
        <d d'>^^ s |
        <ees ees'>^^ s |
        %7
      }
      \change Staff=up {
        \stemDown \tieDown
        s1 s s s <c'' e''>~ <c'' e''>~ <c'' e''>4 r r2
        s1 <c' e'>~<c' e'>~<c' e'> s
      }
    }
  >>
}

PIXLH={
  <<
    \context Voice=CIX{
      \stemUp \tupletOff
      s4
      \tuplet 3/2 {
        <g b d' eis'>8[ <g b d' eis'>8 <g b d' eis'>8]
      }
      <g b d' eis'>8-! r8
      \tuplet 6/4 {
        r16 <gis, gis>[ r16 <ais, ais> r16 <c c'>]
      } |
      %2
      s4
      \tuplet 3/2 {
        <g ais e' g'>8[ <g ais e' g'>8 <g ais e' g'>8]
      }
      <g ais e' g'>8-! r8
      \tuplet 6/4 {
        r16 <bis bis,>[ r <ais, ais!> r <gis, gis>]
      }|
      %3
      s4
      \tuplet 3/2 {
        <g b d' eis'>8[ <g b d' eis'>8 <g b d' eis'>8]
      }
      <g b d' eis'>8-! r8
      \tuplet 6/4 {
        r16 <gis, gis>[ r <ais, ais> r <c c'>]
      } |
      %4
      s4
      \tuplet 3/2 {
        <g ais e' g'>8[ <g ais e' g'>8 <g ais e' g'>8]
      }
      <g ais e' g'>8-^ r8
      \tuplet 6/4 {
        r16 <a a,>[ r <b, b> r <cis cis'>]
      } |
      %5
      s4
      \tuplet 3/2 {
        <g bes d' g'>8[<g bes d' g'><g bes d' g'>]
      }
      <g bes d' g'>8-! r8
      \tuplet 6/4 {
        r16 <bes, bes>[ r16 <c c'> r16 <d d'>]
      }|
      %6
      s4
      \tuplet 3/2 {
        <g bes des' g'>8[<g bes des' g'><g bes des' g'>]
      }
      <g bes des' g'>8-! r8
      \tuplet 6/4 {
        s16 <b, b>[ s16 <des des'> s16 <ees ees'>]
      }|
      %7
      \tuplet 6/4{
        \change Staff=up
        r <f f'>[ r <g g'> r <a a'>]
        r <a a'>[^"rinforzando molto" r <g g'> r <f f'>]
        \change Staff=down
        r <dis dis'>[ r <cis cis'> r <b, b>]
        r <a, a>[ r <g, g> r <f, f>]
        r <f, f>[ r <g, g> r <a, a>]
        r <a, a>[ r <g, g> r <f, f>] \slurUp
        e[ ( dis d cis c b, bes, a, gis, g, fis, f,]
      }
      e,8)-. r8 \clef treble
      <e' g'>2_- <e' g'>4_-~<e' g'> <e' g'>-.( <e' g'>-. <fis' a'>)-. |
      bes'1~bes'~bes'4 r r2 \clef bass
      r4 <g c'>-.( <g c'>-. <fis c'>)-.
      bes1~bes~bes1 <e ais cis'>\fermata
    }
    \context Voice=DIX{
      \stemDown \tupletOff
      <g,, g,>2_^ s4
      \tuplet 6/4 {
        <g,, g,>16[ r <a,, a,> r <b,, b,>] r
      } |
      %2
      cis,!2_^ s4
      \tuplet 6/4 {
        <cis cis,>16[ r <b,, b,> r <a,, a,>] r
      }|
      %3
      g,,!2_^ s4
      \tuplet 6/4 {
        <g,, g,>16[ r <a,, a,> r <b,, b,>] r
      }|
      %4
      cis,!2_^ s4
      \tuplet 6/4 {
        <gis,, gis,>16[ r <ais,, ais,> r <bis,, bis,>] r
      }
      %5
      d,2_^ s4
      \tuplet 6/4 {
        <a,, a,>16[ r <b,, b,> r <cis, cis>] r
      }
      %6
      ees,2_^ s4
      \tuplet 6/4 {
        <bes,, bes,>16[ r <c, c> r <d, d>] r
      }
      %7
      \slurDown
      \tuplet 6/4 {
        \dynamicUp
        <e e,>[ \< r <fis fis,> r <gis gis,>] r
        <bes bes,>[ r <gis gis,> r <fis fis,>] \! r
        <e e,>[ r <d d,> r <c c,>] r \dynamicNeutral
        <bes, bes,,>[ r <gis, gis,,> r <fis, fis,,>] r |
        %8
        <e, e,,>[ s fis, s gis,] s bes,[ s gis, s fis, ] s
        e,[( dis, d, cis, c, b,, bes,, a,, gis,, g,, fis,, f,,]
      } |
      e,,8)-. s2..
      s1*9
    }
  >>
}

% $Id: ballade_p10.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PXRH= {
  <<
    \context Voice=AX {
      \key b \major
      <fis' b' dis''fis''>4.^"rubato, appassionato"(\arpeggio
      \tuplet 3/2 {
        gis''16[ fis'' eis'']
      } fis''8)
      <cis'' cis'''>4->( <b' b''>8) |
      %2
      <ais' fisis'' ais''>4.(
      \tuplet 3/2 {
        b''16[ ais'' gisis'']
      } ais''8)
      <e'' e'''>4->( <dis'' dis'''>8) |
      %3
      <dis'' gis'' dis'''>8\arpeggio-.( <cis'' cis'''>4-. <b' b''>8)-.
      <ais' ais''>4._>(_\fermata <gis' gis''>8)
      %\break
      %4
      <g' c'' e'' g''>4.(\arpeggio
      \tuplet 3/2 {
        a''16[ g'' fis'']
      } g''8)
      <d'' d'''>4->( <c'' c'''>8) |
      %5
      <b' e'' b''>4.(\arpeggio
      \tuplet 3/2 {
        c'''16[ b'' ais'']
      } b''8)
      <fis'' fis'''>4->( <g'' g'''>8) |
      %6
      <fisis'' fisis'''>4 \< <gis'' gis'''>2 ~
      \tuplet 6/4 {
        <gis'' gis'''>16[ eis''' gis''' fis''' e''' bis''] \!
      } |
      %7
      \relative e''' {
        \tuplet 24/16 {
          e[ dis cis gisis b! ais gis eis gis fis e bis e dis cis gisis b ais
          gis eis gis fis e bis]
        }
      } |
      s1 |
      r2 r4^\fermata r8 <fis cisis' fis'>( |
      <fis b dis'>4 ~ <fis b dis' fis'>8)
      \slurUp
      <<
        \relative c'' {
          \stemDown b[^"m.s" gis] \stemUp e[ cis] \stemDown dis[ |
          e]
          \stemUp dis\noBeam \stemDown e\noBeam
          \stemUp gis\noBeam eis4 fis |
          %12
          r8 dis'[ ( fis] \stemDown b[_"m.s." gis] \stemUp e[ cis] \stemDown
          dis[ e] \stemUp dis\noBeam
          \stemDown e_"m.s."\noBeam
          \stemUp gis eis4 fis) |
          r8 fis,8[ ( a] \stemDown cis_"m.s." \stemUp a4 fis) |
          r8 a[ ( cis] \stemDown e \stemUp cis4 a) |
          %16
          r8 cis[ ( e] a[ fis] dis[ cis)] a'[ ( |
          fis] dis[ cis a] fis4. g8~ |
          \key c \minor
          %18
          g4 <g bes>8 ees')[ ( c] aes[ f] g[ |
          %19
          aes] g\noBeam \stemDown aes\noBeam
          \stemUp c\noBeam a4 bes) | %20
          \stemNeutral
          r8 g'[ ( bes] ees[ c] aes[ f] g[ |
          aes] g aes c a4 bes) |
          %22
          r8 bes,[ ( des] f des4 bes) |
          %23
          r8 des[ ( f] aes f4 des8) r8
          %24
          r8 f[ (aes] des[ aes] f[ des)] des'[ ( |
          %25
          aes] \stemUp f[ des)] des[ ( aes] f des ees) |
          \key b \major
          %26
          r8 e[ ( gis] b gis4 e8) r8 |
          r8 gis[ ( b] e cis4 ais8) r8 |
          r8 cis[ (e] gis e cis ais) gis'[ ( |
          e] cis ais) gis ( e eis gis8.\fermata fis16) |
        }
        \relative f' {
          fis8 dis b gis ais cis ais cis cis cisis4 dis |
          s8 b' dis fis dis b gis ais |
          cis ais cis cis cisis4 dis |
          s8 dis, e a e4 dis |
          s8 e a cis a4 fis |
          s8 a a e' cis a a e' |
          cis a a e dis4. ees8 |
          %18
          ees4~ees8 bes' g ees c d |
          f d f aes <fis ees>4 ~ <ees g> |
          %20
          s8 ees' g bes g ees c d |
          f d f aes fis4 g |
          %22
          s8 g, aes des aes4 g |
          r8 aes des des des4 bes8 s8 |
          %24
          s8 des f aes f des bes aes' |
          f des bes aes f des s4 |
          %26
          r8 cis e gis e4 cis8 r8 |
          r8 e gis cis gis4 e8 r8 |
          %28
          r8 gis b dis b ais fis dis' |
          b ais fis dis s2 |
        }
        \relative d' {
          dis8 b gis e fis |
          gis fis gis ais gis4 fis |
          s8 fis' b dis b gis e fis |
          gis fis gis ais gis4 fis |
          %14
          s8 a, cis e cis4 ais |
          s8 cis e fis e4 dis |
          %16
          s8 e fis cis' a fis e cis' a fis e cis a4. bes8 |
          bes4~bes8 g' ees c aes bes |
          c bes c d c4 bes |
          s8 bes' ees g ees c aes bes |
          c bes c d c4 bes |
          %22
          s8 des, f aes f4 des |
          s8 f aes bes aes4 g8 s8 |
          s8 aes des f des aes g f' des aes g f des aes s4 |
          %26
          s8 gis b dis b4 ais8 s8 |s8 b dis gis e4 cis8 s8 |
          s8 e gis b gis e cis b' gis e cis s8 s2 |
        }
      >>
    }
    \context Voice=BX {
      \stemDown
      s1*24
      s2 s4 <g bes> s1 s1 s1 s2 b4 <ais e'>
    }
  >>
}

PXLH= {
  <<
    \context Voice=CX {
      \stemUp \slurUp
      \key b \major
      dis,8 dis16[ ( fis b dis']
      \stemNeutral\tuplet 3/2 {
        gis'16[ fis' eis']
      } fis'8) r8 r4 |
      \stemUp
      %2
      dis,8 fisis16[ ( b dis' fisis'] \clef treble
      \stemNeutral \tuplet 3/2 {
        b'16[ ais' gisis']
      } ais'8) r8 r4 |
      \clef bass \stemUp
      %3
      e,8 gis16[ b e' gis'] r8 r4_\fermata r4
      %4
      e,8 e16[ ( g c' e']
      \stemNeutral\tuplet 3/2 {
        a'16[ g' fis']
      } g'8) r8 r4 |
      \stemUp
      %5
      g,8 \clef treble b16[ ( e' g' b']
      \stemNeutral \tuplet 3/2 {
        c''16[ b' ais']
      } b'8) r8 r4 |
      \clef bass \stemUp
      \clef bass
      %6
      fis,8 \clef treble ais16[ cis' e' gis'~] <gis' cis''>8^"delicatamente"~
      <gis' cis''>4 r4 |
      s1
      \clef bass \relative c' {
        e16[ dis cis gisis b ais eis gis]
        \tuplet 6/4 {
          fis8[ e bis e dis cis]
        }|
        gisis8 b ais eis gis4.\fermata
      } <fis, e>8 |
      %10
      s1 s2 s8 <fis, b,>4<fis, b,>8~<fis, b,>1
      s2 s8 <fis, b,>4<fis, b,>8 ~
      <fis, b,>4. s8 s8 <fis, b,>4<fis, b,>8 ~
      <fis, b,>4. s8 s8 <fis, b,>4<fis, b,>8 ~<fis, b,>1
      s2 s8 b,4 bes,8 ~ bes,1
      s2 s8 bes,4 bes,8 ~ bes,1
      s2 s8 <bes, ees>4 <bes, ees>8 ~ |
      <bes, ees>4. s4 <bes, ees>4 <bes, ees>8~|
      <bes, ees>4. s4 <bes, ees>4 <bes, ees>8~|
      <bes, ees>4 s2.
      s2. ees,4 |
      <fis,, fis,>4.s4 fis,4 fis,8~ fis,4. s4 fis,4 fis,8~fis,4. s8 s2 |
      r4 r8 b gis d cis fis
    }
    \context Voice=DX {
      \stemDown \slurDown
      s8. fis16~fis8 s8 s2 |
      s8. b16~b8 s8 s2 |
      s8. b16~b8 s8 s2 |
      s8. g16~g8 s8 s2 |
      s8. e'16~e'8 s8 s2 |
      \tieDown
      s8. cis'16~<cis' e'>4~<cis' e'>4 s4|
      s1 s1 s1
      b,,1^"dolce, placido" s2 r8 fis,[ ( b,, fis,] b,,1)
      r2 r8 fis,[ ( b,, fis,] b,,4.)
      r8 r8 fis,[ ( b,, fis,] b,,4.)
      r8 r8 fis,[ ( b,, fis,] b,,1)
      r2 r8 b,[ ( b,, bes,] \key c \minor bes,,1)
      r2 r8 bes,[ ( bes,, bes,] |
      bes,,1)
      r2 r8 bes,[ ( ees, bes,] ees,4.)
      r8 r8 bes,[ ( ees, bes,] ees,4.)
      r8 r8 bes,[ ( ees, bes,] ees,4) r4 r2
      r2 r4 s4 \key b \major
      s4. r8 r8 fis,[ fis,, fis,] |
      fis,,4.
      r8 r8 fis,[ fis,, fis,] |
      fis,,4. r8 r2 |
      s2. cis4_\fermata |
    }
    \context Voice=EX {
      \stemDown
      s8 dis4 s8 s2 |
      s8 fisis4 s8 s2 |
      s8 gis4 s8 s2 |
      s8 e4 s8 s2 |
      s8 b4 s8 s2 |
      \tieDown
      s8 ais4.~ ais4 s4|
      s1*23
    }
  >>
}

% $Id: ballade_p11.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PXIRH= {
  \time 6/4
  <<
    \context Voice=AXI{
      \stemUp \slurUp
      \relative c' {
        r4 b8[_"cantabile" (fis' dis b] fis'[ dis)] r4 r4 |
        r4 dis8[ (b' gis dis] b'[ gis)] r4 r4 |
        \clef bass
        r4 gis,8[ (fis' cis gis] fis'[ cis)] r4 r4 |
      }
      %4
      r4 fis8[ ( cis' ais fis] cis'[ ais) ] r4 r4 |
      \clef treble
      r8 gis[_"cresc." (b gis' cis' b)] r8 ais[ ( cis' ais' fis' cis')] |
      r8 b[ (dis' b' fis' dis')] r8 dis'[ (fis' dis'' gisis' fis')]
      %7
      r8 dis'[ ( ais' fis'' fis' dis''] ais''4) r4 r4 |
      r8 fis[^"ritenuto" ( cisis' ais' eis' ais) ]
      r8 fis[ (ais fis' cis' fis)] |
      %9
      \stemNeutral \shiftOnn
      \override Rest.staff-position = #6
      \tupletUp
      \tuplet 3/2 {
        r8 r b (
      } \tupletNeutral
      \tupletOff
      \revert Rest.staff-position
      \tuplet 3/2 {
        dis'-3 fis'-1 <b' fis''>
      }
      \tuplet 3/2{
        dis''-3 fis''-1 <b'' fis'''>
      } dis''') r8 s2 |
      %10
      \tuplet 3/2 {
        a''8\rest a''8\rest dis'_2 (
      }
      \tuplet 3/2 {
        gis'_4 b'_1 <dis'' b''>
      }
      \tuplet 3/2 {
        gis'' b'' <dis''' b'''>
      } gis'''8) r s2
      %11
      \tuplet 3/2 {
        s8 r8 gis-2 (
      }
      \tuplet 3/2 {
        cis'-3 fis'-1 <gis'-2 fis''-5>
      }
      \tuplet 3/2 {
        cis'' fis'' <gis'' fis'''>
      } cis'''8) r8 s2 |
      %12
      \tuplet 3/2 {
        s8 r8 \clef treble fis (
      }
      \tuplet 3/2 {
        ais cis' <fis' cis''>
      }
      \tuplet 3/2 {
        ais' cis'' <fis'' cis'''>
      } ais''8) r8 s2
      %13
      \stemUp
      \tuplet 3/2 {
        s8 gis'-2 ( cis''-4
      }
      \tuplet 3/2 {
        b'-2 cis''-1 <gis'' cis'''>
      } b'') r8
      \tuplet 3/2 {
        s8 fis' ( dis''
      }
      \tuplet 3/2 {
        ais' dis'' <fis'' e'''>
      } ais'') r8 |
      %14
      \tuplet 3/2 {
        s8 b' ( fis''
      }
      \tuplet 3/2 {
        dis'' fis'' <b'' fis'''>
      } dis''') r8
      \tuplet 3/2 {
        s8 bis'_2 ( gis''_5
      }
      \tuplet 3/2 {
        fis''_2 gis''_1 <bis'' a'''>
      } fis''') r8
      %15
      \stemNeutral
      \tuplet 3/2 {
        s8 r8 cis'(
      }
      \tuplet 3/2 {
        fis' ais' <cis'' ais''>
      }
      \tuplet 3/2 {
        fis'' ais'' <cis''' ais'''>
      }
      \tuplet 3/2 {
        fis'''^"ritard. molto" ais'' <ais'' cis''>
      }
      \tuplet 3/2 {
        fis'' ais' ais'
      }
      \tuplet 3/2 {
        eis' b gis')
      } |
    }
    \context Voice=BXI{
      s1.*8
      % "melodic" voice continues here from C
      \stemDown <fis fis'>2\arpeggio-- s2
      \stemUp <gis gis'>4 <ais ais'> |
      \stemDown <b b'>2-- s2 \stemUp <dis dis'>4 <ais ais'>8 <gis gis'> |
      \stemDown
      %11
      <fis fis'>2^> s2 \clef bass <e e'>4-- <dis dis'>-- |
      <cis cis'>2^- s2 s4 cis'4--
      \stemDown cis'2.^> dis'^> fis'^> gis'^> |
      %15
      \tupletOff
      <ais ais'>2_^ s2
      \tuplet 6/4 {
        s4 cis' s8 gis'
      } |
    }
  >>
}

PXILH= {
  \time 6/4
  <<
    \context Voice=CXI{
      \stemUp \tieUp \slurUp
      fis2.^"m.d."~ fis4 gis-- ais-- |
      b2.-- ~ b4
      dis4_"m.s." ( ais8[ gis] |
      fis2.^"m.d."~ fis4)
      e4-._"m.s." ( dis)-. |
      cis2.^"m.d."~ cis4 s4 cis--_"m.s" |
      %5
      cis2.\arpeggio^- dis2\arpeggio^- e4^- fis2.\arpeggio^-
      gis2\arpeggio^- gisis4^- |
      %7
      ais2.\arpeggio ( ~ ais4 cisis'4-. dis')-. |
      \change Staff=up \stemDown
      fis'2_^ eis'4_- dis'2_- cis'4_- |
      %this (melodic voice) continues in BX from now on, this one becomes
      %basso
      \change Staff=down
      s1. gis,4 s2 s2. |
      cis,4 s1 s4 |
      fis,, s1 s4 |
      s1. s1. s1.
    }
    \context Voice=DXI{
      \stemDown
      \override Rest.staff-position = #-6
      <b,, dis>4\arpeggio r4 r4 r2.
      <gis,, b,>4\arpeggio r4 r4 r2.
      <cis, gis, cis>4\arpeggio r4 r4 r2.
      <fis,, ais,>4\arpeggio r4 r4 r2.
      eis,4\arpeggio r r e,\arpeggio r r dis,\arpeggio r r b,\arpeggio r r
      ais,\arpeggio r r s2. |
      \revert Rest.staff-position
      r4 r <ais, gis cisis'>\arpeggio r r <fis, e ais>\arpeggio |
      %9
      \stemNeutral
      <b,, dis>
      \tuplet 3/2 {
        fis8 b^\markup { l’accompagnemento sempre \dynamic "p" } dis'
      } \clef treble
      \tuplet 3/2 {
        fis' b' dis''
      } fis'' r8 r4 r \clef bass |
      %10
      \stemUp \tupletOff \tuplet 3/2 {
        gis,8 dis gis
      } \stemNeutral
      \clef treble \tuplet 3/2 {
        b dis' gis'
      }
      \tuplet 3/2 {
        b' dis'' gis''
      } b''8 r8 r4 r4 \clef bass |
      %11
      \tuplet 3/2 {
        cis,8 gis, cis
      }
      \tuplet 3/2 {
        fis gis cis'
      }
      \clef treble \tuplet 3/2 {
        fis' gis' cis''
      } fis'' r8 r4 r4 \clef bass |
      %12
      \tuplet 3/2 {
        fis,,8 fis, ais,
      }
      \tuplet 3/2 {
        cis fis ais
      }
      \clef treble \tuplet 3/2 {
        cis' fis' ais'
      } cis'' r8 r4 r4 \clef bass |
      %13
      <eis, cis>8[( eis gis b] cis')-. r8 <e, cis>[( fis ais cis'] e'4)-> |
      %14
      <dis, b,>8[( fis b dis'] fis')-. r8 <d, bis,>[( fis bis fis'] a4)-> |
      %15
      \tuplet 3/2 {
        cis,8 ais, fis
      }
      \clef treble \tuplet 3/2 {
        ais cis' fis'
      }
      \tuplet 3/2 {
        ais' cis'' fis''
      }
      r4 r4 \clef bass
      <cis, eis> |
    }
  >>
}

% $Id: ballade_p12.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PXIIRH= {
  \time 4/4
  <<
    \context Voice=AXII {
      %1
      <ais fis'>4 r r8
      <<
        \relative c'' {
          fis8 ( g gis |
          a2)\arpeggio a8 e'4 d8|
          %3
          cis2 cis8 g'4 fis8 |
          fis8\arpeggio e4 d8~d8 cis4 b8 |
          %5
          d4 ( cis4)
          \ottava #1
          d8\rest fis ( g gis |
          a2)\arpeggio a8 e'4 d8 |
          cis2 cis8 g'4 fis8 |
          %8
          fis^"crescendo ed accelerando" e4-.-- d8-. ~ d cis4-.-- b8-.-- |
        }
        \relative f' {
          fis8 g gis |
          <a d fis>2 s8 e'4 d8 |
          %
          <cis fis ais>2 s8 g'4 fis8 |
          <fis b> e4 d8~d cis4 b8 |
          %
          <d fis ais>4 cis s8 fis8 g gis |
          <a d fis>2 s8 e'4 d8 |
          <cis fis ais>2 s8 g'4 fis8 |
          <fis b> e4 d8~d cis4 b8 |
        }
      >>
      \relative g'' {
        <g cis g'>8 <fis fis'>4-.-- <e e'>8-.-~<e e'>
        <dis dis'>4-.-- <cis cis'>8-.-- |
        <a' dis a'>(\arpeggio <fisis fisis'>4 <gis gis'>8)
        <b e b'>(\arpeggio <gisis gisis'>4 <ais ais'>8) |
        <cis fis cis'>(\arpeggio <b b'>4 <bis bis'>8)
        <dis fis ais dis>2-^_"rinforz."~ <dis fis ais dis>4
      }
      s8
      <<
        \relative d'''' {
          s16 dis s cis s ais s gis s fis |
          \ottava #0
          s dis^"precipitato" s cis s dis s cis s ais s gis s ais s gis |
          s fis s dis s fis s dis s cis s ais s cis s ais |
          s gis s fis s dis s cis s ais s cis
        }
        \relative d''' {
          f16\rest dis r cis r ais r gis r fis |
          r dis r cis r dis r cis r ais r gis r ais r gis |
          r fis r dis r fis r dis r cis r ais r cis r ais |
          \clef bass
          r gis r fis r dis r cis r ais r cis
        }
      >>
      r4 |
      \clef treble
    }
    \context Voice=BXII {
      %Two voices here to imitate grace notes, which otherwise
      % would cause an ugly break in the left hand arpeggios
      %microflat = #'((font-relative-size . -3) (music "accidentals.mirroredflat"))
      %microsharp = #'((font-relative-size . -3) (music "accidentals.sharp.slashslash.stem"))
      %normalturn = #'(music "scripts.turn")
      s1 |
      \tiny
      \tupletOff \stemUp
      \phrasingSlurUp
      \override Beam.damping = #0
      \relative a'' {
        s4 s8
        \tuplet 3/2 {
          b16[ \( a gis]
        } s2|
        \override NoteHead.transparent = ##t
        \override Stem.transparent = ##t
        \override Flag.transparent = ##t
        cis4\) s8
        \revert NoteHead.transparent
        \revert Stem.transparent
        \revert Flag.transparent
        \tuplet 3/2 {
          d16[ \( cis b]
        } s4.
        \override NoteHead.transparent = ##t
        \override Stem.transparent = ##t
        \override Flag.transparent = ##t
        fis'8\) |
        s1 s1 |
        s4.
        \revert NoteHead.transparent
        \revert Stem.transparent
        \revert Flag.transparent
        \tuplet 3/2 {
          b16[ \(a gis]
        } s2|
        \override NoteHead.transparent = ##t
        \override Stem.transparent = ##t
        \override Flag.transparent = ##t
        cis4\) s8
        \revert NoteHead.transparent
        \revert Stem.transparent
        \revert Flag.transparent
        \tuplet 3/2 {
          d16[ \( cis b]
        } s4.
        \override NoteHead.transparent = ##t
        \override Stem.transparent = ##t
        \override Flag.transparent = ##t
        fis'8\)
        s1*8
      }
    }
  >>
}

PXIILH= {
  \time 4/4
  <<
    \context Voice=CXII {
      \relative d
      {
        \override Rest.staff-position = #2
        r8 cis16_3 (fis ais_1 cis_4 fis_2 ais_1 fis cis ais fis cis8)_. r |
        r d16_5 (fis a d_1 fis_2 a_1 fis_2 d_1 a fis d8)_. r |
        r cis16 (fis ais! cis fis ais! fis cis ais fis cis8)_. r |
        r e16 (g b e g b g e b g e8) r |
        r cis16 (fis ais cis fis ais fis cis ais fis cis8)_. r |
        r d16 (fis a d fis a fis d a fis d8)_. r |
        r cis16 (fis ais! cis fis ais! fis cis ais fis cis8)_. r |
        \stemNeutral
        g16 e' g b e g b r gis,, e' gis b d e b' r |
        %9
        a,, e' a cis e g cis r ais,, e' fis cis' e fis e fis |
        %10
        bis,, fis' gis dis' fis! gis fis gis cis,, fis ais e' fis ais fis ais |
        dis,, a' bis fis' a bis a bis <e,,, e'> fis' ais cis \clef treble
        e fis ais cis |
        e fis ais cis d8-.
      }
      <<
        \relative c''' {
          cis16 r ais r gis r fis r dis s |
          cis r ais r cis r ais r gis r fis r gis r fis s |
          dis r cis r dis r cis r ais r gis r ais r gis s|
          fis r dis r cis r ais r gis r g r fis8 r8 |
        }
        \relative c'' {
          cis16 s ais s gis s fis s dis s |
          cis s ais s cis s ais s gis s fis s gis s fis s |
          \clef bass
          dis s cis s dis s cis s ais s gis s ais s gis s|
          fis s dis s cis s ais s gis s g s fis8 r8 |
        }
      >>
    }
    \context Voice=DXII {
      \stemDown
      fis,4 s2. fis,4 s2. fis,4 s2. f,4 s2.
      fis,4 s2. fis,4 s2. fis,4 s2.
      s1*8
    }
  >>
}

% $Id: ballade_p13.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PXIIIRH= {
  \time 6/4
  <<
    \context Voice=AXIII {
      \relative f' {
        <fis b dis fis>2.^"grandioso" r4 <gis b dis gis> <ais dis fis ais> |
        <b dis gis b>2. r4 <dis, b' dis>( <ais' ais'>8 <gis gis'>) |
        <fis cis' fis>2.-^ r4 <e gis cis e> <dis gis b dis> |
        <cis ais' cis>2. r4 r <cis fis ais cis> |
        <cis gis' cis>2. r4 <dis fis ais dis> <e fis ais e'> |
        <fis b fis'>2. r4 <gis dis' gis> <gisis' dis gisis,>
      }
      %7
      <ais' dis'' fis''>16_"più rinforzando" ais'' <ais' dis'' fis''>16 ais''
      \repeat unfold 3 {
        <ais' dis'' fis''>16 ais'' <ais' dis'' fis''>16 ais''
      }
      \relative c'' {
        <dis fis ais> dis' <dis, fis ais> dis'
        <fis, ais dis> fis' <fis, ais dis> fis' |
        \ottava #1
        <gis, cisis fis>-^ ais' <gis, cisis fis> ais'
        <gis, cisis fis> ais' <gis, cisis fis> ais'
        <gis, cisis eis> ais' <gis, cisis eis> ais'
        <fis, ais dis>-^ fis' <fis, ais dis> fis'
        <fis, ais dis> fis' <fis, ais dis> fis'
        <e, ais cis> fis' <e, ais cis> fis'
      } \stemUp
      \ottava #0
      <dis' fis'>2^^ s2 s2 |
      <dis' gis' b'>^^ s s|
      <cis' fis'> s s|
      <ais cis'> s s|
      <gis cis'> s s|
      <b fis'> s s|
      %15
      \time 4/4
      <<
        \relative a' {
          \tuplet 3/2 {
            r8 r8 a~
          }
          \tupletOff \tuplet 3/2 {
            a gis b~
          }
          \tuplet 3/2 {
            b ais des~
          }
          \tuplet 3/2 {
            des c ees~
          } |
          \tuplet 3/2 {
            ees d f
          }
          \tuplet 3/2 {
            f e g~
          }
          \tuplet 3/2{
            g fis a~
          }
          \tuplet 3/2 {
            a gis b
          } |
        }
        \relative a {
          \tuplet 3/2 {
            r8 r8 a~
          }
          \tuplet 3/2 {
            a gis b~
          }
          \tuplet 3/2 {
            b ais des~
          }
          \tuplet 3/2 {
            des c ees~
          } |
          \tuplet 3/2 {
            ees d f
          }
          \tuplet 3/2 {
            f e g~
          }
          \tuplet 3/2{
            g fis a~
          }
          \tuplet 3/2 {
            a gis b
          } |
        }
      >>
      <<
        \relative f'' {
          s16 fis s gis s ais s b s cis s dis s e s eis |
          s fis s gis s ais s b s cis s dis s e s eis |
          fis8
        }
        \relative f' {
          r16 <fis b dis> r gis r ais r b r cis r dis r e r eis |
          \ottava #1
          a\rest fis r gis r ais r b r cis r dis r e r eis |
          fis8_\sf
          \ottava #0
        }
      >>
      %18
      \stemUp \slurUp
      \relative d' {
        dis8[ ( fis b] gis[ e cis gis')]
      }
    }
    \context Voice=BXIII {
      s1.*8
      \stemDown \tupletOff
      \override Beam.damping = #0
      %9
      %\break
      \relative f {
        fis8.[_\fff gis16
        \tuplet 6/4 {
          ais b cis dis e fis
        }
        \tuplet 6/4 {
          gis ais b cis dis e]
        }
        \tuplet 7/4 {
          fis[ gis ais b cis dis e
        }
        \tuplet 7/4 {
          \ottava #1
          fis gis ais b cis dis e]
        }
        fis8 r8 |
      }
      %10
      %\break
      \ottava #0
      \relative c' {
        b8.[ cis16
        \tuplet 6/4 {
          dis e fis gis ais b
        }
        \tuplet 6/4 {
          cis dis e fis gis ais]
        }
        \tuplet 6/4 {
          \ottava #1
          b[ cis dis e fis gis
        }
        \tuplet 6/4 {
          ais b cis dis e fis]
        }
        gis8 r8 |
      }
      %11
      %\break
      \ottava #0
      \relative f {
        fis8.[ gis16
        \tuplet 6/4 {
          ais b cis dis e fis
        }
        \tuplet 6/4 {
          gis ais b cis dis e]
        }
        \tuplet 7/4 {
          fis[ gis ais b cis dis e
        }
        \tuplet 6/4 {
          \ottava #1
          fis gis ais b cis dis]
        }
        e8 r8 |
      }
      %12
      %\break
      \ottava #0
      \relative c {
        cis8.[ dis16
        \tuplet 6/4 {
          e fis gis ais b cis
        }
        \tuplet 6/4 {
          dis e fis gis ais b]
        }
        \tuplet 7/4 {
          cis[ dis e fis gis ais b
        }
        \tuplet 7/4 {
          \ottava #1
          cis dis e fis gis ais b]
        }
        cis8 r8 |
      }
      %13
      %\break
      \ottava #0
      \relative c {
        cis8.[ dis16
        \tuplet 6/4 {
          eis fis gis ais b cis
        }
        \tuplet 6/4 {
          dis eis fis gis ais b]
        }
        cis32[ dis eis fis gis ais b cis
        \ottava #1
        dis e fis gis ais b cis dis ]
        e8 r8 |
      }
      %14
      %\break
      \ottava #0
      \relative f {
        fis8.[ gis16
        \tuplet 7/4 {
          ais b cis dis e fis gis
        }
        \tuplet 7/4 {
          ais b cis dis e fis gis]
        }
        \ottava #1
        a32[ bis dis fis a bis dis fis dis
        a fis dis bis a fis dis
        \ottava #0
        bis a fis dis bis a fis dis
        ]
      }
      %\break
      s1 s1 s1 s1
      s8 b4_"rit. e dim." <b dis'>8 <b cis'>2
    }
  >>
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PXIIILH= {
  <<
    \context Voice=CXIII {
      \relative c {
        <b dis fis b>2.^\ff s4 <b dis gis b> <dis fis ais dis> |
        <gis, dis' gis b>2.s4<gis dis'gis b>(\arpeggio <b dis ais'>8~<b dis gis>) |
        <cis gis' cis>2. s4 <e, gis cis gis'> <eis b' dis gis> |
        <fis cis' fis ais>2. s4 r <fis ais cis fis> |
        <eis b' cis gis'>2. s4 <e ais cis dis> <e ais cis e> |
        <dis b' fis'>2. s4 <b' dis fis gis> <b dis fis gisis> |
      }
      %7
      <ais, dis fis ais>8-.
      <<
        \relative f' {
          fis-. eis-. dis-. cis-. b-. ais-. fis-. eis!-. dis-. cis-. b-. |
          ais cisis eis gis b ais fis ais cis dis eis! fis
        }
        \relative f {
          fis[ eis dis cis b ] ais[ fis eis dis cis b] |
          ais[ cisis eis gis b ais ] fis[ ais cis dis eis! fis]
        }
      >>
      %9
      \stemUp \tupletOff
      \override Beam.damping = #0
      \relative c, {
        <b fis'>8.[_^ gis'16
        \tuplet 6/4 {
          ais b cis dis e fis
        }
        \tuplet 6/4 {
          gis ais b cis dis e]
        }
        fis8-. r8 \stemDown <gis, dis' gis>4-> <ais dis ais'>-> |
        \stemUp
      }
      %10
      \relative c {
        b8.[ cis16
        \tuplet 6/4 {
          dis e fis gis ais b]
        } \clef treble
        \tuplet 6/4 {
          cis[ dis e fis gis ais]
        }
        b8 r8
      } \clef bass \stemDown
      <dis b dis'>4(-- <ais dis' ais'>8 <gis gis'>) |
      \stemUp
      %11
      \relative g, {
        gis4
        \tuplet 6/4 {
          ais16 [ b cis dis e fis
        }
        \tuplet 6/4 {
          gis ais b cis dis e]
        }
        fis8 r8
      } \stemDown
      <e gis cis' e'>4-> <dis gis dis'>-> |
      \stemUp
      %12
      \relative c, {
        cis8.[ dis16
        \tuplet 6/4 {
          e fis gis ais b cis
        }
        \tuplet 6/4 {
          dis e fis gis ais b]
        } \clef treble
        \tuplet 7/4 {
          cis[ dis e fis gis ais b]
        }
        cis8 r \clef bass \stemDown
      }
      <fis ais cis'>4-> |
      \stemUp
      %13
      \relative c, {
        cis8.[ dis16
        \tuplet 6/4 {
          eis fis gis ais b cis
        }
        \tuplet 6/4 {
          dis eis fis gis ais b]
        }
        
        cis8-. r8 \stemDown
        <dis ais fis e>4-> <e! ais, fis e>-> \stemUp |
      }
      \relative f, {
        fis8.[ gis16
        \tuplet 7/4 {
          ais b cis dis e fis gis
        }
        \tuplet 7/4 {
          ais b cis dis e fis gis]
        }
      }
      s2.
      %15
      \time 4/4 \clef bass \tupletOn \stemNeutral
      <<
        \relative c {
          \tuplet 3/2 {
            bis4-. bis8-.
          } \tupletOff
          \tuplet 3/2 {
            cis4-. cisis8-.
          }
          \tuplet 3/2 {
            dis4-. e8-.
          }
          \tuplet 3/2 {
            f4-. fis8-.
          } |
          \tuplet 3/2 {
            g4-. gis8-.
          }
          \tuplet 3/2 {
            a4-. ais8-.
          }
          \tuplet 3/2 {
            b4-. bis8-.
          }
          \tuplet 3/2 {
            cis4-. d8-.
          } |
        }
        \relative c, {
          \tuplet 3/2 {
            dis4 dis8
          }
          \tuplet 3/2 {
            e4 eis8
          }
          \tuplet 3/2 {
            fis4 f8
          }
          \tuplet 3/2 {
            aes4 a8
          }|
          \tuplet 3/2 {
            bes4 b8
          }
          \tuplet 3/2 {
            c4 cis8
          }
          \tuplet 3/2 {
            d4 dis8
          }
          \tuplet 3/2 {
            e4 eis8
          }|
        }
      >>
      \stemNeutral
      <<
        \relative f {
          fis16 r eis r e r dis r cis r b r ais r gis r |
          fis r eis r e r dis r cis r b r ais r gis r |
          fis8
        }
        \relative b {
          <b dis>16 r eis r e r dis r cis r b r ais r gis r|
          fis r eis r e r dis r cis r b r ais r gis r |
          fis8
        }
      >>
      %19
      <dis fis>4 <dis fis>8 <e gis>2 |
    }
    \context Voice=DXIII {
      \stemUp \slurUp
      \relative c {
        s4
        \tuplet 11/8 {
          ais16[ (b cis dis e fis gis fis e dis cis]
        } b8)^! s8 s2 |
        s4 \tupletOff
        \tuplet 11/8 {
          fisis16[ ( gis ais b cis dis e dis cis b ais]
        } gis8)^! s8 s2|
        s4
        \tuplet 11/8 {
          bis16[(cis dis e fis gis a gis fis e dis]
        } cis8)^! s8 s2|
        s4
        \tuplet 11/8 {
          eis,16 (fis gis ais b cis dis cis b ais gis
        } fis8)^! s s2|
        s4
        \tuplet 12/8 {
          eis16[(fis gis ais b cis dis cis b ais gis fis]
        } eis8)^!
        s8 s2|
        s4
        \tuplet 14/8 {
          dis16[ (e fis gis ais b cis dis cis b ais gis fis e]
        }
        dis8)^! s8 s2|
        %7
        s1.*8 s1 s s s s
      }
    }
    \context Voice=EXIII {
      \relative c,
      {
        \stemDown \slurDown
        r4
        \tuplet 11/8 {
          ais16[ (b cis dis e fis gis fis e dis cis]
        } b8)_! r8 s2 |
        r4 \tupletOff
        \tuplet 11/8 {
          fisis16[ ( gis ais b cis dis e dis cis b ais]
        } gis8)_! r8 s2|
        r4
        \tuplet 11/8 {
          bis16[(cis dis e fis gis a gis fis e dis]
        } cis8)_! r8 s2|
        r4
        \tuplet 11/8 {
          eis,16[(fis gis ais b cis dis cis b ais gis ]
        } fis8)_! r8 s2|
        r4
        \tuplet 12/8 {
          eis16[(fis gis ais b cis dis cis b ais gis fis]
        } eis8)_!
        r8 s2|
        r4
        \tuplet 14/8 {
          dis16[_4 (e_5 fis_4 gis ais b cis dis cis b ais gis fis e]
        }
        dis8)_! r8 s2|
        s1. s s
      }
      <gis,, dis, gis, b,>4\arpeggio s2 s2. |
      cis,4_^ s2 s2. | %12
      fis,,4_^ s2 s2. |
      eis,,4_^ s2 s2. |
      dis,4_^ s s \clef treble <bis dis' fis' a'>-^ s s |
      %15
      s1 s s s s
    }
  >>
}

% $Id: ballade_p14.ly,v 1.2 2003/06/05 18:13:21 cve Exp $
PXIVRH = {
  <<
    \context Voice = AXIV {
      \stemUp \slurUp
      \relative f' {
        r8 fis[ ( b dis] b[ gis e b')] |
        r8 b[ ( dis fis] dis[ b gis dis') ] |
        r8 dis[ ( fis b] gis[ e cis dis)] |
        \grace { fis }
        e[ ( dis e gis] eis4. fis8) |
        %5
        \grace { gis }
        fis[ ( eis fis ais ] fisis4. gis8) |
        \grace { ais }
        gis[ ( fisis gis b] dis[ b gis b] |
        dis[ b gis b] <dis gis,>4 <b cis,>4~ |
        <gis cis,>2 ) r2 |
        r4 \stemNeutral <dis gis,>( \stemUp b gis |
        e2.
        \tuplet 3/2 {
          fis8[ e dis]
        } |
        e4) <ais, cis gis'>2_-
        <ais cisis gis'>4_- |
        <fis ais cisis gis'>1\arpeggio~<fis ais cisis gis'>4
        <fis b dis gis>2.->\arpeggio~<fis b dis gis>1^\fermata_\pp
      }
    }
    \context Voice = BXIV {
      \stemDown \tieDown
      \relative c' {
        s8 <dis fis>4 <dis fis>8 <cis e>2 |
        s8 <fis b>4 <fis b>8 <e gis>2 |
        s8 <b' dis>4 <b dis>8~<b cis>4 gis ~ |
        gis4. ais8~ais4 b~ |
        b4. b8~b4 bis ~ |bis cis gis'8 cis,4 cis8 |
        gis'8 cis,4_"smorzando" cis8 s2|
        s1 s2 cis,2 |
        b1~b4 s2. |
        s1 s1 s1
      }
    }
  >>
}

PXIVLH = {
  <<
    \context Voice = CXIV {
      <fis,, fis,>8 <fis b>4 <fis b>8 <gis b>2
      <fis,, fis,>8 <fis b dis'>4 <fis b dis'>8 <gis b>2
      \stemUp \slurUp r8
      \relative f' {
        fis8 ( dis fis e gis e bis |
        cis bis cis e cisis4 dis~|
        dis8) cisis ( dis fis dis4 e~ |
        e8) \clef treble \stemNeutral
        dis ( e gis
        b <gis e'> <e b'> <gis e'> |
        b <gis e'> <e b'> <gis e'> b4 <gis e'> |
        <e b'>2 ) r2 
        \clef bass |
      }
      r4 b4^\pp <gis e'> <e b> |
      <cis gis>1~<cis gis>4 <fis, e>2_- <fis, e>4_- |
      <b,, fis, e>1\arpeggio~<b,, fis, e>4 <b,, fis, dis>2.\arpeggio ~ |
      <b,, fis, dis>1_\fermata
    }
    \context Voice = BXIV {
      s1 s1
      \stemDown <fis,, fis,>8_"una corda" \tieDown
      fis4 fis8~fis2~fis4. fis8~ fis2~ |
      fis4. fis8~fis2~fis4 fis4 s2 s1 s1 s1 s1 s1 s1 s1 s1 \bar "|."
    }
  >>
}

RH = {
  {
    \key b \minor \partial 8 r8 |
  }
  << \upperVoiceItoXVI \middleVoiceItoIX >>
  \PIIRH {
    R1
  }
  {
    \key bes \minor \break
    \transpose c ces {
      \time 6/4
      <<
        \upperVoiceItoXVI
        \middleVoiceItoIX
      >>
      \PIIRH
    }
  }
  \break
  \PIIIRH \break
  \PIVRH
  \PVRH
  \break
  \PVIRH
  \PVIIRH
  \break
  \PVIIIRH
  \PIXRH
  \break
  \PXRH
  \PXIRH
  \PXIIRH
  \PXIIIRH
  \PXIVRH
}

LH = {
  {
    \key b \minor \partial 8 fis,,8 |
  }
  \bassoVoiceItoXVI
  \PIILH {
    r2 r4 r8 f,,_"tre corde" |
  }
  {
    \key bes \minor
    \transpose c ces {
      \time 6/4
      \bassoVoiceItoXVI \PIILH
    }
  }
  \PIIILH
  \PIVLH
  \PVLH
  \PVILH
  \PVIILH
  \PVIIILH
  \PIXLH
  \PXLH
  \PXILH
  \PXIILH
  \PXIIILH
  \PXIVLH
}

\score {
  \context PianoStaff {
    <<
      \context Staff = "up" {
        {
          \time 6/4 \clef treble
        }
        <<
          \context Voice=tempoChanges {
            \tempo "Allegro moderato" s8 s1.*18
            s1 s2. \tempo "Lento assai" s4
            s1 s1 s1 \tempo "Allegretto" s1
            s1*11
            \tempo "Tempo I" s1. s1.*17
            s1 \tempo "Lento assai" s1
            s1 s1 s1 \tempo "Allegretto" s1
            s1*10
            \tempo "Allegro deciso" s1
            s1*72
            \tempo "Allegretto" s1
            s1*110
            \tempo "Allegro moderato" s1.
            s1.*14
            \tempo "un poco più mosso" s1
            s1*42
            \tempo "Andantino" s1 s1*11
          }
          \RH
        >>
      }
      \context Staff = "down" {
        {
          \time 6/4 \clef bass
        }
        \LH
      }
    >>
  }
  \midi {
  }
  \layout {
    %interscorelinefill =	\interscoreline
    %indent = 0.0
    %papersize="letter"
    \context{
      \Score
      \override BarNumber.padding = #2
      \override TextScript.font-shape = #'italic
      \override NoteCollision.merge-differently-dotted = ##t
    }
  }
}
