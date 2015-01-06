\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% RIGHT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
partRH =  \relative g' {
    \clef treble
    \repeat volta 2 {
%%% 1-10
        r8\ff <g g,> <g g,> <g g,> |
        ef2\fermata
        r8 <f f,> <f f,> <f f,> |
        d2 ~ | d\fermata |
        r8 g\p g g | r af af af |
        <<
            { r8 ef' ef ef | c2 ~ | c4 r | } \\
            { g2 ~ | g ~ | g8 g g g | }
        >>
%%% 11-21
        r8 af af af |
        <<
            { \voiceTwo g2 ~ | g ~ | g | } \\
            { \voiceOne r8 f' f f | d2~ | d8 g g f | }
        >>
        ef2 | d8 g g f | ef2 |
        \crescTextCresc\noCrescSpanner
        d8\< <g d g,> <g d g,> <f d g,> |
        <ef c g>4\f r | <c fs, c> r |
        <<
            { \voiceTwo <b g>4 r | } \\
            { \voiceOne g'2\fermata }
        >>
%%% 22-32
        r8\ff <af af,> <af af,> <af af,> |
        <f f,>2 ~ | <f f,>\fermata |
        r8\p af, af af |
        <<
            { f2 ~ | f ~ | f | ef8 af af af | } \\
            { r8 d, d d | b2~ | b | c4 r | }
        >>
        << { f2 ~ | f ~ | f8 } \\
           { r8 d d d | b2 ~ | b8 } >> <d' f>8 <d f> <d f> |
%%% 33-42
        <c ef>8 <ef, g> [ <ef g c> <ef c'> ] |
        \crescTextCresc
        <d f af c>2\<^( ~ | <d f af b>8) <f af b> <f af b> <f d'> |
        <ef g d'>2^( ~ | <ef g c>8) <ef g c> <ef g c> ef' |
        <ef af, f>8(\sf d) d-. f-. | <f bf, g>( e) e-. g-. |
        <g c, af>( f) f-. af-. | <af e bf>(\sf g) g-. bf-. |
        <bf f>(\sf af) af-. c-. |
%%% 43-52
        <c af f>(\sf b) b-. d-. | <c g ef>\f ef ef ef |
        c g g g | ef c g g | ef c c c | b d'' [ d d ] |
        b g f f | d b g f | d b c c | c\ff ef'' [ ef ef ] |
%%% 53-65
        c a a a | gf ef ef ef | c a a a |
        <a ef' gf a>4\sf r | R2 |
        <bf f' bf>4\sf r | r8\ff bf bf bf |
        R2*3 |
        <<
            { bf4\p ^( ef | d ef | f c) | } \\
            { \once\override TextScript.extra-offset = #'( 1.5 . 2)
              g2_\markup{\italic dolce} | af | af | }
        >>
%%% 66-78
        <<
            { c4 ( bf) } \\
            { <ef, g>2 }
        >> |
        <<
            { bf'4 ( ef | d ef | f c ) | } \\
            { g2 | af | af | }
        >>
        <<
            { c4 ( bf) } \\
            { <ef, g>2 }
        >> |
        <bf' bf'>4( <ef ef'> | <d d'> <ef ef'> |
        <f f'> <c c'>) | <c c'> ( <bf bf'> ) |
        <<
            { bf4( c | df c) | bf( c | bf af) | } \\
            { <ef g>2 | <e g> | <e g> | <c f> | }
        >>
%%% 79-93
        <<
            {
                df'4( ef | f ef) | df( ef | df c) | c2 | <c ef> | s2 |
                <bf ef> | s2 | <a ef'> | s2 | <a ef'> |
                s2 | <a ef'> | s2 |
            }\\{
                \crescTextCresc
                <f af>2 | <g bf> | <g bf> | <ef af> |
                <ef ef'>4^( <f f'> | <gf gf'>\< <f f'> | <ef ef'> <f f'>) |
                <gf gf'>^( <f f'> | <ef ef'> <f f'>) |
                <gf gf'>^( <f f'> | <ef ef'> <f f'>) |
                <gf gf'>^( <f f'> | <ef ef'> <f f'> |
                <gf gf'> <f f'>\! | <gf gf'> <a ef' gf a>) |
            }
        >>
%%% 94-100
        <bf f' af bf>2\ff ~ | <bf f' af bf>8 c'-. bf-. af-. |
        <af ef bf>( g) f-. ef-. |
        <ef af,>( d) c-. d-. |
        <f g,>( ef) bf-. g-. |
        <f d'>( c') af-. f-. |
        <ef c'>( bf') g-. ef-. |
%%% 101-110
        <<
            {
                \oneVoice r8 a'( bf a | \voiceOne bf\ff a bf a) |
                bf-. c-. bf-. af!-. | <af ef>( g) f-. ef-. |
                ef( d) c-. d-. | f( ef) bf-. g-. |

            }\\{
                \voiceTwo s2 | f'2 ~ |
                f4 r | bf, bf |
                r4 bf | r4 ef, |
            }
        >>
        d'8( c) af-. f-. | c'( bf) g-. ef-. |
        d bf' [ bf' bf ] | ef, <g g'> [ <g g'> <g g'> ] |
%%% 111-124
        ef'8 <bf bf,> <bf bf,> <bf bf,> |
        g <ef ef,> <ef ef,> <ef ef,> |
        bf <f d' f> [ <f d' f> <f d' f> ] |
        <g ef' g> <g' g'> [ <g g'> <g g'> ] |
        ef'8 <bf bf,> <bf bf,> <bf bf,> |
        g <ef ef,> <ef ef,> <ef ef,> |
        bf <bf d f bf> [ <bf d f bf> <bf d f bf> ] |
        <bf ef g bf>4 r |
        r8 <bf d f bf> <bf d f bf> <bf d f bf> |
        <bf ef g bf>4 r |
        r8 <f' bf d> <f bf d> <f bf d> |
        <g bf ef>4 r |
        R2*2 |
        \break
    }
%%% 125-134
    r8 bf,\ff bf bf |
    <<
        { g2 ~ | g ~ | g\fermata | } \\
        { r8 df df df | c2~ | c | }
    >>
    r8 c'\p c c |
    <<
        { r8 df df df | c af' af af | f2~ | f8 r r4 | r8 df df df | } \\
        { af2~ | af~ | af ~ | af8 c [ c c ] | g4. r8 | }
    >>
%%% 135-143
    <<
        { r8 bf' bf bf | g2~ | g8 c c bf | af2 | } \\
        { c,2 ~ | c~ | c ~ | c8 af af bf | }
    >>
    <<
        { g'8 c c bf | af2 | g8 c c bf | } \\
        { c,2~ | c8 af af bf | c2 | }
    >>
    \crescTextCresc\noCrescSpanner
    af'8 af\< af g | f f f ef |
%%% 144-152
    d d d c | \voiceOne b4 r4\! |
    \oneVoice r8 ef ef f | \voiceOne g2~ |
    \oneVoice g8 ef ef f | \voiceOne g2~ |
    \oneVoice\crescHairpin
    <g g,>2(\< | <a a,>4 <bf bf,> | <c c,> <cs cs,>)\! |
%%% 153-161
    <d d,>8\p <d fs,> <d fs,> <c a> |
    <bf g>2 | <a fs>8 <d fs,> <d fs,> <c a> |
    <bf g>2 | <a fs>4 <d a fs d>~ |
    <d bf g d>8 g,, [ g a ] |
    bf <g g'> <a a'> <bf bf'> |
    <c fs c'> <ef, fs> [ <ef a> <ef bf'> ] |
    <ef c'> <fs fs'> [ <a a'> <bf bf'> ] |
%%% 162-170
    <c fs c'>8 <ef, fs> [ <ef a> <ef bf'> ] |
    <ef c'> <a a'> [ <bf bf'> <c c'> ] |
    <d g d'> g, [ <g bf> <g c> ] |
    <g d'> <g g'> [ <bf bf'> <c c'> ] |
    \crescTextCresc\noCrescSpanner
    <d g d'> g,\< [ <g bf> <g c> ] |
    <g d'> <g' bf> [ <a c> <bf d> ] |
    <ef, fs a ef'>\f <ef fs a ef'> <ef fs a ef'> <ef fs a ef'> |
    <ef fs a ef'> <ef fs a ef'> <ef fs a ef'> <ef fs a ef'> |
    <ef fs a ef'>4 r |
%%% 171-179
    r8 <e g bf e> <e g bf e> <e g bf e> |
    <e g bf e> <e g bf e> <e g bf e> <e g bf e> |
    <e g bf e> <e g bf e> <e g bf e> <e g bf e> |
    <e g bf e>4 r |
    \crescTextCresc
    \set crescendoText = \markup{\italic "più" \dynamic f}
    r8\< <d g bf d> <d g bf d> <d g bf d> |
    <d g bf d>4 r | r <cs g' bf cs>8 <cs g' bf cs> |
    <cs g' bf cs>4 <d a' d>8 <d a' d> |
    <d a' d>\ff <d d'> [ <d d'> <d d'> ] |
%%% 180-188
    g2 | a |
    <<
        { \voiceOne \tieNeutral <d, d,>2 ~ | <d d,>~ | <d d,>~ | <d d,>4 s4 | } \\
        { \voiceFour \stemNeutral s2 | g,4\rest fs8 fs | fs4 c'8 c | c4 <fs fs,>8 <fs fs,> | }
    >>
    <a a,>4 <d a fs d>8 <d a fs d> |
    <b g d>8 <g g,> [ <g g,> <g g,> ] |
    c,2\sf |
%%% 189-197
    d2\sf |
    <<
        { g,2 ~ | g~ | \once\override Tie.Y-offset = #3 g~ | g4 } \\
        { r4 b,8 b | b4 f'8 f | f4 b8 b | b4 }
    >> <b f'>8 <b f'> |
    <d f>4 <d b' d>8 <d b' d> |
    <e c'e>8\ff <c c'> [ <c c'> <c c'> ] |
    f2 | <g g,>2 |
%%% 198-209
    <e, c bf g>2 | <f c af> |
    <f f'> | <g g'> |
    <e c bf g>2 | <f c af> |
    <f f'> | <gf gf'> |
    <gf df bf> | <a ef a,> | <a ef' a> | <bf df bf'> |
%%% 210-220
    \dimTextDim\noCrescSpanner
    <bf f df>2 | <cf cf'> | <cf gf cf,>\> | <df df'> |
    <df af df,> |
    \once\override DynamicText.extra-offset = #'( 1.5 . 2 )
    <cs cs'>\p |
    \once\override TextScript.extra-offset = #'( 2.5 . 3 )
    <cs, a fs>_\markup{\column { \italic Sempre \italic "più" \dynamic p } }  |
    <cs' a' cs> | <cs, a fs> | <cs' a' cs> | <cs, a fs> |
%%% 221-230
    \once\override DynamicText.extra-offset = #'( 0 . 1.5 )
    <d' a' d>2\pp | \cslh\voiceOne <d, a d,> |
    \csrh\oneVoice <d' a' d> | \cslh\voiceOne <d, a d,> |
    \csrh\oneVoice <d' a' d> | \cslh\voiceOne <d, a d,> |
    \csrh\oneVoice <d' a' d> | <d, a>8\ff <d' d'> [ <d d'> <d d'> ] |
    <d b' d>2 | <d c' d> |
%%% 230-240
    <d a' d>2~ | <d a' d> |
    <d af'! d>\pp | <d, af f> |
    <d' af' d> | <d, af f> |
    <d' af' d> | <d, af f> |
    <d' af' d> | <d, af f>8\f r8\ff r4 |
%%% 241-249
    r8\ff <af' af'> <af af'> <af af'> |
    <f f'>2~ |<f f'>8 <af af'> [ <af af'> <af af'> ] |
    <f f'>2~ |<f f'>8 <af af'> [ <af af'> <af af'> ] |
    <f f'>8 <af af'> [ <af af'> <af af'> ] |
    <f f'>8 <af' af'> [ <af af'> <af af'> ] |
    <f f'>8 <g g'> [ <g g'> <g g'> ] |
    <g ef' g>2\fermata |
%%% 250-257
    r8 <g f' g> <g f' g> <g f' g> |
    <g d' g>2 ~ | <g d' g>\fermata |
    r8 g,\p g g |
    <<
        { r8 af af af | g ef' ef ef | c2 | r8 g g g | } \\
        { ef2~ | ef ~ | ef4( c | ef c) | }
    >>
%%% 258-265
    << { r8 af' af af | g } \\
       { d2 ~ | d8 } >> f' [ f f ] |
    <d g, f>2 ~ | <d g, f>8 g g f |
    << { ef2 | d8 g g f | <ef c>2 | d8 g g f | } \\
       { r8 ef, ef f | g2 | r8 ef ef f | <g b>4 c8 d | } >>
%%% 266-274
    <<
        { \crescTextCresc\noCrescSpanner
          \oneVoice ef2\< | \voiceOne c2 |
          \cadenzaOn { g'2\fermata\f s4 s s s s s s } \cadenzaOff | } \\
        { \voiceTwo s2 | <fs, c>4 r |
          \cadenzaOn { <g b>4 s4 s s s s s s s } \cadenzaOff | } \\
        {
            \voiceThree s2 | s2 |
            %% bar 268
            \cadenzaOn {
                \tiny s4 f'4^\>_\markup{\italic "Adagio"} ef d2
                ef16 [ d c d\! ] f4 ef d\fermata
            } \cadenzaOff
        }
    >>
    r8 af\p af af |
    <<
        { f2~ | <f b,>~ | <f b,> | <ef c>8 } \\
        { r8 d d d | r8 af af af | g2 | g8 }
    >>
    af'\< [ af af ] |
%%% 275-282
    <f d>2 ~ | <b f d>~ | <b f d>8 <b f d> [ <b f d > <b f d> ] |
    <c ef,>\f <g ef> <c ef,> <c ef,> |
    <c f, d>2~ | <b f d>8 <b af f> <b af f> <d f,> |
    <d g, ef>2(~ | <c g ef>8) <c g ef> <c g ef> ef |
%%% 283-290
    <ef af, f>8(\sf d) d-. f-. | <f bf, g>(\sf e) e-. g-. |
    <g c, af>(\sf f) f-. af-. | <af e bf>(\sf g) g-. bf-. |
    <bf f c>(\sf af) af-. c-. | <c af f>(\sf b) b-. d-. |
    <c g ef>\f ef ef ef | c g g g |
%%% 291-298
    ef c g g | ef c c c | b f''' [ d d ] |
    b g f f | d b g f | d b <c g> <c g> |
    <fs ef c a>\ff <ef' ef'> [ <ef ef'> <ef ef'> ] |
    <c c'> <a a'> <a a'> <a a'> |
%%% 299-306
    fs'8 <ef ef,> <ef ef,> <ef ef,> |
    c <a a,> <a a,> <a a,> |
    <fs ef a,>4 r4 |
    R2 |
    <g d g,>4\sf r | r8 g\ff g g |
    R2*3 |
%%% 307-314
    <<
        { g4( c | b c | d a) | a( g) |
          g'( c | b c | d a) | a( g) | } \\
        { e,2 | f~ | f | <c e> |
          <c' e> | <d f> | f | <c e> | }
    >>
%%% 315-326
    <<
        { g4( c | b c | d a) | a( g) |
          g'( c | b c | d a) | a( g) |
          bf,!4( c | df c) | bf( c | bf a) | } \\
        { e2 | f~ | f | <c e> |
          <c' e> | <d f> | f | <c e> |
          <g bf> | <e g> | <e g> | <c f> | }
    >>
%%% 327-335
    <<
        { c'4( d | ef d) | c( d | c b) | } \\
        { <f a>2 | <fs a> | <fs a> | <d g> | }
    >>
    \crescTextCresc
    <f! f'!>4(\< <g g'> | <af af'> <g g'> <f f'> <g g'>) |
    <af af'>( <g g'> | <f f'> <g g'>) |
%%% 336-344
    <af af'>4( <g g'> | <f f'> <g g'>) |
    <af af'>( <g g'> | <fs fs'> <g g'>) |
    <a a'>( <g g'> | <fs fs'> <g g'>) |
    <a a'>( <g g'> | <fs fs'> <g g'> |
    <fs fs'> <g g'>\! |
%%% 345-352
    <fs fs'> <g g'>) |
    <b f' g>2\ff~ | <b f' g>8 a'-. g-. f-. |
    <f c g>( e) d-. c-. | <c g f>( b) a-. b-. |
    <d g, e>( c) g-. e-. | <d b'>( a') f-. d-. |
    <c a'>( g') e-. c-. |
%%% 353-360
    r8 fs'( g fs | g fs g fs |
    g) a-. g-. f-. | <f c g>( e) d-. c-. |
    <<
        { c( b) a-. b-. | d( c) g-. e-. |
          \oneVoice b'( a) f-. d-. | \voiceOne a'( g) e-. c-. | } \\
        { <f g>4 r | g r | s2 | <e c>4 r | }
    >>
%%% 361-367
    b8 g' [ g' g ] |
    c, <e e'> [ <e e'> <e e'> ] |
    c' <g g,> <g g,> <g g,> |
    e <c c,> <c c,> <c c,> |
    g <d b' d> [ <d b' d> <d b' d> ] |
    <e c' e> <e' e'> [ <e e'> <e e'> ] |
    c' <g g,> <g g,> <g g,> |
%%% 368-374
    e8 <c c,> <c c,> <c c,> |
    g <g b d g> [ <g b d g> <g b d g> ] |
    <g c e g>4 r |
    r8 <g b d g> <g b d g> <g b d g> |
    <g c e g>4 r |
    r8 <d' g b> <d g b> <d g b> |
    <c e g c>\sf <c c'> [ <c c'> <c c'> ] |
%%% 375-381
    <c c'>8 <c e c'> <c e c'> <c e c'> |
    <c f c'>\sf <c c'> <c c'> <c c'> |
    <c c'> <c f c'> <c f c'> <c f c'> |
    <c g' c>\sf <c g' c> <c g' c> <c g' c> |
    <c c'> <c g' c> <c g' c> <c g' c> |
    <c af' c>\sf <c c'> <c c'> <c c'> |
    <c c'> <c af' c> <c af' c> <c af' c> |
%%% 382-389
    <df af' df>8\ff <df af' df> <df af' df> <df af' df> |
    <df af' df> <df af' df> <df af' df> <df af' df> |
    <df af' df> <df af' df> <df af' df> <df af' df> |
    <df af' df> <df af' df> <df af' df> <df af' df> |
    <df af' df>4 r |
    r8 f, f f | af4 r | R2 |
%%% 390-396
    r8\ff <ef' a c ef> <ef a c ef> <ef a c ef> |
    <ef a c ef> <ef a c ef> <ef a c ef> <ef a c ef> |
    <ef a c ef> <ef a c ef> <ef a c ef> <ef a c ef> |
    <ef a c ef> <ef a c ef> <ef a c ef> <ef a c ef> |
    <ef a c ef> <ef a c ef> <ef a c ef> <ef a c ef> |
    <ef a c ef>4 r |
    r8\f <c c'> <c c'> <c c'> |
%%% 397-403
    <ef ef'>4 r | r8 g,\f g g |
    <<
        { \once\override Staff.DynamicLineSpanner.staff-padding = #0
          ef2^\f | s2 | b''~ | b | } \\
        { g,,4 r |
          \once\override PhrasingSlur.height-limit = #5
          b'8 \( c d ef | f g af g | af g af g \) }
    >>
    \clef bass g,,,4_.^> r |
%%% 404-412
    \clef treble
    <<
        { s2 | b''' ~ | b | } \\
        { \once\override PhrasingSlur.height-limit = #5
          b,8 \( c d ef | f g af g | af g af g \) | }
    >>
    \once\override TextScript.staff-padding = #2.5
    af8_\markup{\italic sempre \dynamic f} g bf! af | g f af f | f ef g f |
    ef d f ef | d c ef d | c bf d c |
%%% 413-421
    bf8 af c bf | af g bf af |
    f g <ef g,> g | <d g,> g <ef g,> g |
    <f g,> g <ef g,> g | <f g,> g <g c,> c |
    <af c,> c <g c,> c | <af c,> [ c ] <b g> [ f' ] |
    <c g> f <b, g> f' |
%%% 422-431
    <c g>8 f <d g,> g |
    <ef ef,>4\sf( c) |
    <d d,>-. <ef ef,>-. |
    <<
        { <f f,>4\sf_( <d d,>) | } \\
        { c2 }
    >>
    <ef ef,>4-. <f f,>-. |
    <<
        { \voiceTwo <g g,>4^( <ef ef,>) | } \\
        { \voiceOne c2 | }
    >>
    <f f,>4-. <g g,> |
    <<
        { \voiceTwo <af af,>4^( <f f,>) | } \\
        { \voiceOne c2 | }
    >>
    <g' g,>4-. <a a,>-. |
    <<
        { \voiceTwo <b b,>4^( <g g,>) } \\
        { \voiceOne f2 }
    >>
%%% 432-441
    <a a,>4-. <b b,>-. | <c c,>( g) |
    <af! ef af,!>-. <ef ef,>-. | <f c af f>-. <d d,>-. |
    <ef c af ef>-. <f f,>-. | <g d c g>-. <fs fs,>-. |
    <g d b g>-. g,-. | <c c,>2\ff |
    <d c d,>4-. <ef c ef,>-. |
    << { <f f,>4_( <d d,>) |} \\
       { c2 } >>
%%% 442-451
    <c ef, c>4-. <c f, c>-. |
    << { <c c,>2 | } \\
       { \shape #'((0 . -2.0) (0 . -2.0) (0 . -2.0) (0 . -2.0)) Slur g4( ef) | } >>
    <f c' f>4-. <g c g'>-. |
    << { \voiceTwo <af af'>4^( <f f'>) | } \\
       { \voiceOne c'2 } >>
    <b g b,>4-. <c g c,>-. |
    << { <d d,>4^( <b b,>) | } \\
       { g2 } >>
    <c a' c>4-. <d b' d>-. |
    <ef c' ef>( <c g' c>) |
    <b g b,>4-. <c g c,>-. |
    << { <d d,>4^( <b b,>) | } \\
       { g2 } >>
%%% 452-462
    <c a' c>4-. <d b' d>-. |
    <ef c' ef>( <d bf'! d> | <c af' c> <bf g' bf> |
    <af f' af> <g ef' g>) |
    << { <f af>4( <ef g>) | <f' af>( <ef g>) | } \\
       { c,2\sf | c'\sf | } >>
    <af' c f af>4( <g c ef g>) |
    r4 <g c ef g> | r <g b d g> |
    << { \oneVoice <ef ef,>4( <bf! d> | <c c,> <bf g> | \voiceOne <af f> <g ef>) | } \\
       { \voiceTwo s2 | s | c, | } >>
%%% 463-468
    << { <f' af>4( <ef g>) | <f, af>( <ef g>) | <f' af>4( <ef g>) | } \\
       { c2 | c, | c' | } >>
    <g c ef g>4\ff <g' c ef g> | <g, b d g> <g' b d g> |
    <c, ef c'>8 <g g'> [ <g g'> <g g'> ] |
%%% 469-474
    <<
        { \voiceTwo\tieNeutral
          <g g'>2~ | <g g'>2~ | <g g'>2~ |
          <g g'>2~ | <g g'>2~ | <g c ef g>8 } \\
        { \voiceThree\tieNeutral
          r8 <b d> <b d> <b d> | <b d>2 ~ | <b d>4( <c ef> |
          <d f> <b d> | <c ef>) <d f> | s8 }
    >> <g g,>8 <g g,> <g g,> |
%%% 475-481
    <g g,>8 <g g'> [ <g g'> <g g'> ] |
    <g g'> <g g'> <g g'> <g g'> |
    <g g'>\ff <g g'>-> <g g'>-> <g g'>-> |
    <g ef' g>2\fermata\sf |
    r8 <g f' g>\ff <g f' g> <g f' g> |
    <g d' g>2~ | <g d' g>\fermata |
%%% 482-491
    r8 g,\pp g g |
    <<
        { r8 af af af | g ef' ef ef |
          r4 af( | g8) g, [ g g ] |
          r8 af af af | g ef' ef ef |
          r4 af( | g8) } \\
        { ef,2~ | ef4 r |
          c'2~ | c8 s s s |
          ef,2~ | ef4 r |
          c'2~ | c8 }
    >> <g b d g>8\ff <g b d g> <g b d g> |
    <g c ef g>4 r |
%%% 492-501
    r8 <g b d g> <g b d g> <g b d g> | <g c ef g>4 r |
    r8 <g b d g> <g b d g> <g b d g> | <g c ef g>4 <g b d g> |
    <g c ef g>4 <g b d g> | <g c ef g> <b d g b> |
    <c ef g c> <b d g b> | <c ef g c> r |
    <b g d b> r | <c g ef c> r |
%%% END

    \bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% LEFT HAND PART
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
partLH =  \relative g, {
    \clef bass
    \repeat volta 2 {
%%% 1-10
        r8 g g g |
        <<
            { <ef ef'>2\fermata }
            { s8\ped s s s\pup }
        >> |
        r8 f f f |
        <d d'>2 \ped ~ | <d d'>\fermata \pup |
        R2 |
        <<
            { \voiceTwo c''2 ~ | c~ | c~ | c | } \\
            { \voiceOne ef2 ~ | ef~ | ef~ | ef4 r }
        >>
%%% 11-21
        <b d>2 ~ | <b d>~ | <b d>~ | <b d> |
        \clef treble
        <<
            { \voiceTwo c2 | b | c | } \\
            { \voiceOne ef8 ef ef f | g2 ~ | g8 ef ef f | }
        >>
        <g b,>8\ped \clef bass <b,, g b,> [ <b g b,> <b g b,> ]\pup |
        <c g c,>4\ped r\pup | <af af,>\ped r\pup | <g g,> r\fermata |
%%% 22-31
        r8 <af af'> <af af'> <af af'> |
        <f f'>2 \ped ~ | <f f'> \fermata \pup |
        R2*2 |
        << { r8 af'^\markup{\italic "R.H."} af af | g2 ~ | g4 } \\
           { R2 | r8\p <g, g,> <g g,> <g g,> | c,4 } >> r4 |
        R2 |
%%% 32-42
        << { r8 af'' af af | g2 ~ | g4 } \\
           { R2 | r8 g, g g | c4 } >> r4 |
        r8 <c c,> <c c,> <c c,> | <c c,>4 r4 |
        r8 <c c,> <c c,> <c c,> | <c c,>4 r4 |
        <c b'>\ped r\pup | <c bf'!>\ped r\pup |
        <c af'>\ped r\pup | <c g' bf>\ped r\pup | <c f af>\ped r\pup |
%%% 43-52
        <c f af>\ped r \pup | <c c,>\ped <c ef g>8 c' |
        <c, ef g>8 c' <c, ef g>8 c' | <c, ef g>8 c' <c, ef g>8 c' |
        <c, ef> <c ef g> <c ef g> <c ef g>\pup |
        <g d' f>\ped g' <g, d' f> g' |
        <g, d' f> g' <g, d' f> g' |
        <g, d' f> g' <g, d' f> g' |
        <g, d' f> g'\pup <c, ef g> <c ef g> |
        <c ef gf>\ped a' <c, ef gf> a' |
%%% 53-65
        <c, ef gf> a' <c, ef gf> a' |
        <c, ef gf> a' <c, ef gf> a' |
        <c, ef gf> a' <c, ef gf a> <c ef gf a> |
        <c ef gf a>4 r\pup |
        R2 |
        <d f  bf>4 r | R2 |
        ef'2^\sf | f^\sf |
        <<
            { s2 | ef ^( | f | d8 ) r r4 | } \\
            { bf2^\sf ~ | bf ~ | bf ~ | bf8 <bf, bf,>\ped [ <bf bf,> <bf bf,>\pup ] |}
        >>
%%% 66-78
        <ef ef,>4 r |
        <<
            { ef'2( | f | d8 ) r r4 | } \\
            { bf2 ~ | bf ~ | bf8 <bf, bf,>\ped [ <bf bf,> <bf bf,>\pup ] |}
        >>
        <ef ef,>4 r |
        <<
            { <g bf>2( | <f af>) | <d af'> | } \\
            { bf2 ~ | bf ~ | bf8\ped bf bf bf\pup | }
        >>
        <ef g>2 | <g bf>( | <e g>) |
        r8 <c c,> <c c,> <c c,> | <f f,>4 r |
%%% 79-90
        <af df>2( | <g bf>) |
        r8 <ef ef,> <ef ef,> <ef ef,> |
        <af af,>4 r |
        <<
            { af2 } \\
            { R2 }
        >> |
        r8 <a a,> <a a,> <a a,> | <a a,>4 r4 |
        r8 <bf bf,> <bf bf,> <bf bf,> | <bf bf,>4 r |
        r8 <cf cf,> <cf cf,> <cf cf,> | <cf cf,>4 r |
        r8 <c! c,!> <c c,> <c c,> |
%%% 91-100
        <c c,>4 r | r8 <c c,> <c c,> <c c,> |
        <c c,>4 <c c,>8 <c c,> |
        <<
            { <d bf d,>2 ~ | <d bf d,>4 <d, d,> | }
            { s8\ped s s s | s s s s\pup }
        >>
        <ef bf ef,>4 r | <f bf, af f> r |
        <g ef bf g> r | <f ef c af> r |
        <g ef bf> r |
%%% 101-110
        <bf f d bf>4 r4 | <d, af d,> <f f,> |
        <d af d,> <f f,> | <ef ef,> <g g,> |
        <f f,> <af af,> | <g g,> <bf bf,> |
        <af af,> <c c,> | <bf bf,> <bf, bf,> |
        <bf bf'> <f' af bf d> |
        <ef g bf ef>8\ped g'[ g g] |
%%% 111-124
        ef8 bf bf bf | <g g'> ef ef ef |
        <bf bf'>\pup <bf, bf'>\ped [ <bf bf'> <bf bf'>\pup ] |
        <ef ef'>\ped g'' [ g g ] |
        ef8 bf bf bf | <g g'> ef ef ef\pup |
        <bf bf'> <bf, bf'>\ped [ <bf bf'> <bf bf'>\pup ] |
        <ef ef'>4 r4 |
        r8 <bf bf'> <bf bf'> <bf bf'> |
        <ef ef'>4 r4 |
        r8 <bf bf'> <bf bf'> <bf bf'> |
        <ef ef'>4 r4 |
        R2*2 |
    }
%%% 125-129
    R2 | r8\ff <df df'> <df df'> <df df'> |
    <c c'>2 ~ | <c c'>\fermata |
    R2 |
%%% 130-142
    <<
        {
            c''2~ | c~ | c8 df df df |
            c2~ | c~ | c~ | c8 df df df |
            c2~ | c~ | c~ | c~ | c~ | c |
        }\\{
            f,2\p ~ | f ~ | f ~ | f |
            e2 ~ | e~ | e~ | e |
            f2 | e | f | e | f4 r |
        }
    >>
%%% 143-152
    <<
        { \oneVoice d'4( ef | f fs |
          \voiceOne g8) \csrh\stemDown g g \cslh\stemUp f! | } \\
        { s2 | s2 | r4 g, | }
    >>
    <<
        { ef'2 | d8 \csrh\stemDown g g \cslh\stemUp f |
          ef2 | d8 \csrh\stemDown g g \cslh\stemUp f | } \\
        { c2 | <g b>4 s | c2 | <g b>4 s | }
    >>
    ef'8 ef ef d | c <c ef> <c ef> <bf d> | <a c> <a c> <a c> <g bf> |
%%% 153-161
    <d fs a>4 r |
    <<
        { r8 bf' bf c | d2( | r8) bf bf c | d d d c | } \\
        { g4 r | d r | g r | d r | }
    >>
    <g bf>8 bf bf a | g g g f! |
    <<
        { ef\ped ef ef\pup d | s2 | } \\
        { a2 ~ | <a c>8 c' c bf | }
    >>
%%% 162-170
    <<
        { a8\ped a a g\pup | fs fs fs ef | d\ped d d c\pup | } \\
        { a2~ | a2 | bf8 r r4 | }
    >>
    bf8 d' d c | bf bf bf a |
    <g bf,> <f! bf,> <ef bf> <d bf> |
    <c ef fs a>8\ped <c ef fs a> <c ef fs a> <c ef fs a> |
    <c ef fs a> <c ef fs a> <c ef fs a> <c ef fs a> |
    <c ef fs a>4 r4\pup |
%%% 171-179
    r8 <cs g cs,>\ped <cs g cs,> <cs g cs,> |
    <cs g cs,> <cs g cs,> <cs g cs,> <cs g cs,> |
    <cs g cs,> <cs g cs,> <cs g cs,> <cs g cs,> |
    <cs g cs,>4 r\pup |
    r8 <d d,> <d d,> <d d,> | <d d,>4 r |
    r <e e,>8 <e e,> |
    <e e,>4 <fs fs,>8 <fs fs,> | <fs fs,>4 r |
%%% 180-188
    g'2^\sf | a^\sf |
    r4 <<
        {  c,8 c | c4 } \\
        { c,4~ | c }
    >> <a a'>4-. |
    <fs fs'>4-. <d d'>-. |
    <c c'>-. <a a'>-. |
    <fs fs'>-. <d d'>-. |
    <g g'>8 r r4 | c''2 |
%%% 189-197
    d2 | g,4 f ~ | f <d d'>-. |
    <b b'>-. <g g'>-. |
    <f f'>-. <d d'>-. |
    <b b'> <g g'> |
    <c c'> r |
    <af'' c f>2 | <bf df> |
%%% 198-209
    <g, c, g>2 | <af c, af> |
    <af' c> | <bf df> |
    <g, c, g>2 | <af c, af> |
    <af' c> | <bf df> |
    <bf, bf,> | <c c,> |
    <c' ef f> | <df f> |
%%% 210-220
    <df, df,>2 | <ef' gf> | <ef, ef,> | <f' af> |
    <f, f,> | <fs' a> |
    <fs,, fs,>|
    <fs'' a> | <fs,, fs,> | <fs'' a> | <fs,, fs,> |
%%% 221-230
    <fs'' a>2 | \voiceTwo <fs,, fs,> |
    \oneVoice <fs'' a> | \voiceTwo <fs,, fs,> |
    \oneVoice <fs'' a> | \voiceTwo <fs,, fs,> |
    \oneVoice <fs'' a> | <d, fs,>8 <d d,> [ <d d,> <d d,> ] |
    <b b,>2 | <c c,> |
%%% 230-240
    << {<a a,>2~ | <a a,> | }
       { s8\ped s s s | s s s s\pup } >>
    <b' f'>2 |
    <b, b,> | <b' f'> |
    <b, b,> | <b' f'> |
    <b, b,> | <b' f'> |
    <b, b,>8 <a a'> [ <a a'> <a a'> ] |
%%% 241-249
    <f f'>2~ | <f f'>8 <af af'> [ <af af'> <af af'> ] |
    <f f'>2~ | <f f'>8 <af af'> [ <af af'> <af af'> ] |
    <f f'>8 <af af'>\ped [ <af af'> <af af'> ] |
    <f f'>8 <af af'> [ <af af'> <af af'> ] |
    <f f'>8 <af af'> [ <af af'> <af af'> ] |
    <f f'>8\pup <g g'> [ <g g'> <g g'> ] |
    << { <ef g ef'>2\fermata }
       { s8\ped s s s\pup } >> |
%%% 250-257
    r8 <f g f'> <f g f'> <f g f'> |
    << { <d g d'>2 ~ | <d g d'>\fermata | }
       { s8\ped s s s | s s s s\pup | } >>
    R2 |
    <<
        { c'2 ~ | c ~ | c4 } \\
        { c,4 r }
    >> c'( |
    ef c) |
%%% 258-265
    <b b'>2 ~ | <b b'>~ | <b b'>4 <g g'>( |
    <b b'> <g g'>) | <c c'>2 | <b b'> | <c c'> |
    << { \voiceOne g'4 ~ \voiceTwo g } \\
       { \voiceTwo g, \voiceOne a'8 b } >> |
%%% 266-273
    <c c,>4 r | <af af,> r |
    \cadenzaOn <g g,>4 s4 s s s r4\fermata s s s | \cadenzaOff
    R2*3 |
    r8 <g, g,>\ped <g g,> <g g,>\pup |
    c af' [ af af ] |
%%% 274-281
    f8\ped d [ d d ] | b af[ af af\pup ] |
    g g'\ped [ g g\pup ] |
    <c, c'> c c c |
    <<
        { r8 <f af> <f af> <f af> | <f af>4 r |
          r8 <ef g> <ef g> <ef g> | <ef g>4 r | } \\
        { c2~ | c8 c c c | c2~ | c8 c c c | }
    >>
%%% 282-289
    <c b'>4 r | <c bf'!> r |
    <c af'> r | <c g' bf> r | <c f af> r |
    <c f af> r | <c c,>\ped <c ef g>8 c' |
    <c, ef g>8 c' <c, ef g>8 c' |
%%% 290-297
    <c, ef g>8 c' <c, ef g>8 c' |
    <c, ef> <c ef g> <c ef g> <c ef g>\pup |
    <g d' f>\ped g' <g, d' f> g' |
    <g, d' f> g' <g, d' f> g' |
    <g, d' f> g' <g, d' f> g' |
    <g, d' f> g' <c, ef> <c ef>\pup |
    <c c,>8\ped ef' [ ef ef ] | c a a a |
%%% 298-305
    fs ef ef ef | c a a a | <c c,>4 r\pup | R2 |
    <b g b,>4 r | R2 |
    c'2^\sf | d^\sf |
%%% 306-314
    <<
        { \voiceTwo g,^\sf~ | g ~ | g | g8 } \\
        { \voiceOne s2 | c2 | d | b8 }
    >> <g, g,>8\ped <g g,> <g g,>\pup |
    c,4 r |
    <<
        { <e'' g>2 | <d f> | <b d>8 r r4 | } \\
        { g2~ | g ~ | g8 g,\ped [ g g\pup ] | }
    >>
    <c c,>4 r |
%%% 315-326
    <<
        { \oneVoice <g' c>2 ~ | <g d'> ~ |
          \voiceOne <g b>8 r r4 | } \\
        { \voiceTwo s2 | s2 | r8 g,\ped g g\pup | }
    >>
    <c c,>4 r |
    <<
        { <e' g>2 | <d f> | <b d>8 r r4 | } \\
        { g2~ | g ~ | g8 g,\ped [ g g\pup ] | }
    >>
    <c c,>4 r |
    <g' bf!>2( | <e g>) |
    r8\p <c c,> <c c,> <c c,> | <f f,>4 r |
%%% 327-335
    <a c>2( | <fs a>) |
    r8 <d d,> <d d,> <d d,> | <g g,>4 r |
    af2 ~ | af8 <af af,> <af af,> <af af,> | <af af,>4 r |
    r8 <b b,> <b b,> <b b,> | <b b,>4 r |
%%% 336-344
    r8 <d d,> <d d,> <d d,> | <d d,>4 r4 |
    r8 <d d,> <d d,> <d d,> | <d d,>4 r4 |
    r8 <d d,> <d d,> <d d,> | <d d,>4 r4 |
    r4 <d f, d> | r4 <d f, d> | r4 <d f, d> |
%%% 345-352
    r4 <d f, d> |
    << { \tieNeutral <d,, g d'>2 ~ | <d g d'>4 <b g' b> | } \\
       { s2\ped | s8 s s s\pup } >>
    <c g' c>4 r | <d f d'> r | <e c' e> r |
    <f c' d f> r | <g c e g> r |
%%% 353-360
    <g b d g>4 r |
    <<
        { <b b,>4 <d d,> | <b b,> <d d,> |
          <c c,> <e e,> | <d d,> <f f,> | <e e,> <g g,> | }
        { s8\ped s s s | s s s s\pup |
          s\ped s s s\pup | s\ped s s s\pup | s\ped s s s\pup | }
    >>
    <f f,>4 <a a,> | <g g,> <g, g,> |
%%% 361-367
    <g g'>4 <g d' f g> |
    <c e g c>8\ped e' [ e e ] |
    c g g g | <e e'> c c c\pup |
    <g g'> <g g,> [ <g g,> <g g,> ] |
    <c c,>\ped e' [ e e ] |
    c g g g |
%%% 368-374
    <e e'>8 c c c\pup |
    g <g g,> [ <g g,> <g g,> ] |
    <c c,>4-. r |
    r8 <g g,> [ <g g,> <g g,> ] |
    <c c,>4 r |
    r8 <g g,> [ <g g,> <g g,> ] |
    <c c,>2\ped ~ |
%%% 375-381
    <c c,>8 <c c,> <c c,> <c c,>\pup |
    <af af,>2\ped~ | <af af,>8 <af af,> <af af,> <af af,>\pup |
    <e e'>2\ped ~ | <e e'>8 <e e'> <e e'> <e e'>\pup |
    <f f'>2\ped ~ | <f f'>8 <f f'> <f f'> <f f'>\pup |
%%% 382-389
    <f af df f>\ped <f f'> <f f'> <f f'> |
    <f f'> <f f'> <f f'> <f f'> |
    <f f'> <f f'> <f f'> <f f'> |
    <f f'> <f f'> <f f'> <f f'> |
    <f f'>4 r\pup |
    R2*3 |
%%% 390-396
    r8 <fs fs'>\ped <fs fs'> <fs fs'> |
    <fs fs'> <fs fs'> <fs fs'> <fs fs'> |
    <fs fs'> <fs fs'> <fs fs'> <fs fs'> |
    <fs fs'> <fs fs'> <fs fs'> <fs fs'> |
    <fs fs'> <fs fs'> <fs fs'> <fs fs'> |
    <fs fs'>4 r\pup |
    r8 c''\ped c c |
%%% 397-403
    ef4 r\pup |
    R2 | <g,, g,>4_\f r |
    <<
        { f''2 | d ~ | d8 g g g | ef2 | } \\
        { R2*3 | g,4 r | }
    >>
%%% 404-412
    f'2 | d~ | d8 g g g |
    ef4 f | d ef | c d | bf c |
    <af af,> <bf bf,> | <g g,> <af af,> |
%%% 413-421
    <f f,>4 <g g,> | <ef ef,> <f f,> |
    <d d,> <c g c,> | <b g b,> <c c,> |
    <d g, d> <c g c,> | <d g, d> <e c e,> |
    <f c f,> <e c e,> | <f c f,> <g g,> |
    <af af,> <g g,> |
%%% 422-431
    <a g a,>4 <b g b,> |
    <<
        { <c c,>2~ | <c c,> |
          <af c, af>~ | <af c, af> |
          <ef c ef,>~ | <ef c ef,> |
          <f c f,> | <ef c ef,> | <d g, d> | }
        { s4\ped s | s s\pup |
          s\ped s | s s\pup |
          s\ped s | s s\pup |
          s\ped s\pup | s\ped s\pup | s\ped s\pup | }
    >>
%%% 432-441
    << { <f g, f>2 | } \\
       { s4\ped s\pup | } >>
    <ef g, ef>4 r | <c c,> r | <f f,> r | <d d,> r |
    <g g,> r | <g, g,> r |
    <c c,>2 |
    << { \voiceTwo <c c'>4^. <c c'>^. | <c c'>2 | } \\
       { \voiceOne d4 ef | f ( d ) | } >>
%%% 442-451
    <c ef,>4-. <c f,>-. |
    <<
        { c2 | f4 g | af( f) | } \\
        { g,4( ef) | <c' c'>^. <c c'>^. | <c c'>2 | }
    >>
    <g g,>4-. <a a,>-. | <b b,>( <g g,>) |
    <g' a c>-. <g b d>-. | <g c ef>2 |
    <g, g,>4-. <a a,>-. | <b b,>( <g g,>) |
%%% 452-462
    <g' a c>4-. <g b d>-. |
    <c ef>( <g d'> | <af! c> <ef bf'> | <f af> <c g'>) |
    <f f,>( <c c,>) |
    <f af>( <c g'>) |
    <f f,>( <c c,>) |
    <g c ef g> r | <g d b g> r |
    <c c'>( <g g'> | <af af'> <ef ef'> |
    <f f'> <c c'>) |
%%% 463-468
    <c' f af>4( <c ef g>) | <f f,>( <c c,>) | <c f af>4( <c ef g>)
    <g c ef g>\ped <g' c ef>\pup | <g, d b g>\ped <g b d g>\pup |
    <c g c,>8 g' [ g g ] |
%%% 469-474
    << { \voiceTwo g2~ | g~ | g~ | g | } \\
       { \voiceOne
         r8\ped <d' f> <d f> <d f> | <d f>2~ | <d f>4 <c ef>\pup |
         <b d> <d f> | } >>
    r8 <g,, g,> <g g,> <g g,> | <c c,> g [ g g ] |
%%% 475-481
    g8 <g g'> [ <g g'> <g g'> ] |
    <g g'> <g g'> <g g'> <g g'> |
    << { <g g'> <g g'>-> <g g'>-> <g g'>-> | <ef g ef'>2\fermata }
       { s8 s\ped s s | s s s s\pup } >>
    r8 <f g f'> <f g f'> <f g f'> |
    << { <d g d'>2~ | <d g d'>\fermata | }
       { s8\ped s s s | s s s s\pup | } >>
%%% 482-491
    R2 |
    <c g'>^\pp~ | <c g'> |
    <c g'>~ | <c g'> |
    <c g'>\ped~ | <c g'>~ | <c g'>~ |
    <c g'>8 <g g'> [ <g g'> <g g'> ] |
    <c c'>4 r |
%%% 492-501
    r8 <g g'> <g g'> <g g'> | <c c'>4 r |
    r8 <g g'> <g g'> <g g'> | <c c'>4 <g g'> |
    <c c'>4 <g g'> | <c c'>4 <g' g'> |
    <c ef g c> <g g'> | <c ef g c> r |
    <g g,> r | <c g ef c> r |
%%% END
}

global = {
  \key c \minor
  \time 2/4
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = #'(2)
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% ALL TOGETHER NOW
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\score
{   
    <<
        \new PianoStaff \with {
            \override Score.RehearsalMark.padding = #2.2
            \override Score.RehearsalMark.self-alignment-X = #-1
            \override StaffGrouper.staff-staff-spacing.minimum-distance = #11
        }{
            \set PianoStaff.midiInstrument = "acoustic grand"
            \set Score.skipBars = ##t
            <<
                \new Staff = "rh" {
                    %% \accidentalStyle piano-cautionary
                    \override Staff.DynamicLineSpanner.staff-padding = #3
                    \global                
                    \partRH
                }
                \new Staff = "lh" {
                    %% \accidentalStyle piano-cautionary
                    %% \set PianoStaff.pedalSustainStyle = #'mixed
                    \override Staff.SustainPedalLineSpanner.staff-padding = #2
                    \global
                    \partLH
                }
            >>
        }
%{
        \new Staff {
            \set Staff.midiInstrument = "orchestral harp"
            \set Staff.instrumentName = "Strings"
            \partRH
        }
        \new Staff {
            \set Staff.midiInstrument = "bassoon"
            \set Staff.instrumentName = "bassoon"
            \partLH
        }
%}
    >>
    \layout{ \context { \Staff \RemoveEmptyStaves } }
    \midi{
        \tempo 2=108
        %% Remove the dynamics from the midi output
        \context {
            \Voice
            \remove "Dynamic_performer"
        }
    }
}
