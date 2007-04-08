
vlaIa = \notes {
    \key g \minor
    \time 3/4
    \relative d' {
        d4->\f r r | c-> r r | bf-> g-> r8 g |
        g2-> g'4-. a2-> g4-> ~ | g g,2-> |
        a2.->^\fermata ~ | a4 r r |
    }
}

vlaIb = \notes {
    \time 4/4
    \relative d' {
        R1 | r4 d2\p-"espress." c4 | bf a g4. g'8 |
        a4 d, d d | e d a a' ~ | a g8-- f-- ef?4 ef' |
        a, fs bf g | c f,! f d | d g g c |
        d-"cresc." g, a bf8 bf, | c4 c'-"dim." a d, |
        e2->-"allarg." d | b1 |
    }
}

vlaIIa = \notes {
    \key g \minor
    \time 4/4
    \relative bf {
        R1 |
        r8 bf\f d bf ef( )c d4 | d r r2 |
        r8 d f d g( )ef f4 | f r r2 |
        r2 r4 r8 d'\f | g,4 r8 ef' a,4 r8 d, | ef( )c d4 d r |
        R1 | R1 |
        r2 f4\f r8 f | bf,4 r8 f' g( )ef f4 | f r r2 |
        R1 |
        f4\f f f r | d d d r | bf' bf bf r8 d | g,4 r8 ef' a,4 r8 d, |
        ef c d4 d2 | r4 g a2 | r4 g, a2 |
    }
}

vlaIIb = \notes {
    \relative a' {
        R1 | r4 a->\f d-> g,-> |
        R1 | r4 g-> c-> f,-> |
        R1 |
        a4 r8 a d,4 r8 bf' | e,4 r8 a bf g a4 | a r r2 |
        r4 g-> g-> r |
        r2 r4 f-> | f-> r f r | d r d r | bf r bf r |
        g' r8 c a4 r8 d, | ef c d4 d r |
        f\p r d r | d r bf r | bf r g' r8 c | a4 r8 d, ef( )c d4 |
        d r8-"allarg." ef\f a,4 r8 d | ef c d4 d2 |
    }
}

vlaIIIan = \notes {
    \relative ef' {
        ef8-.\p( )ef-. ef-.( )ef-. < d( bf'-. > < )d-. bf > < bf-.( d > < )bf-. d > |
        c-.( )c-. ef-.( )ef-. f( g16 )af bf8.( )bf16-. | bf4 r
            r16 c,--\mf-"espress." ef( )c g'( )g, bf( )g |
        r16 af-- c( )af ef'( )ef, g( )ef
            r4 r8 g\p | c( )d g f f4 r |
        r2 bf4\p bf | g g ef bf |
        bf\cr r8 c f\rc-"allarg."( g16 )af bf8.\decr( )bf16-.\rced |
    }
}

vlaIIIa = \notes {
    \key ef \major
    \time 4/4
    \vlaIIIan
}

vlaIIIb = \notes {
    \relative g' {
        g8-.\p \repeat unfold 15 g-. |
        \repeat unfold 8 d-. |
        \repeat unfold 8 c-. |
        \repeat unfold 8 bf-. |
        \cresc \repeat unfold 8 ef-. |
        \repeat unfold 8 f-. |
        \repeat unfold 8 ef-. |
        \repeat unfold 8 bf-. |
        ef-.\p \repeat unfold 7 ef-. |
        \repeat unfold 4 bf-. bf4 \endcresc r |
        bf->\f r c-> r | f2 r2^\fermata |
    }
}

vlaIIIc = \vlaIIIan

vlaIIId = \notes {
    \relative g' {
        g4\p\cr-"a tempo" r ef g\rc |
        c, r-"allarg." ef\mf r8 af\p |
        af4\cr g8( )af\rc bf4\decr bf,\rced | bf1 |
    }
}

vlaIVa = \notes {
    \key g \minor
    \time 3/4
    \relative d' {
        R2.*4 |
        d4\f g2-> | d2. | ef4 g2-> | a2. |
    }
}

vlaIVb = \notes {
    \relative g' {
        R2. |
        < bf4-> d,\f > < g-> d > < g-> bf, > |
        R2. |
        < a4-> c,\f > < f-> c > < f-> a, > |
        R2. |
        a4.( )g8 f4 | bf e,4.( )a8 | a2. |
        g4\mf r r | c, r r | f r r |
        bf,2 f'4\f |
        g d2 | d d4 | ef8( )g d4.( )d8-. |
        d2 g4\p | g2 ef4 |
        a,2-"poco allarg." g4 | ef' a,4.( )d8 | d2. |
    }
}

vlaVa = \notes {
    \key g \minor
    \time 2/2 \partial 2
    \relative d' {
        r2 | R1 | r2
        d4-|\f d-| | d d g2 | a
        r2 | R1 | r2
        d,4-| d-| | d d g2 | a
        r2 | R1 | r2
        g4\f g | g af d, g | g2
        r2 | r2 g4-.\mp g-. | c->( )b
        r2 | r2 a4-.\mf a-. | d->( )cs
        r2 | d4->\f( )a r2 | bf4->( )f r2 | e4 f8 g a4.( )a8-. | a2
        r2 | d4->\p( )a r2 | bf4->( )f r2 | e4 f8 g a4.( )a8-. | a2
    }
}

vlaVb = \notes {
    \relative bf' {
        r2 | R1 | R |
        bf2\f r | bf
        r | R1 | r2
        d,4-|\f bf-| | ef->( )bf r2 | r
        g'4-|\f f-| | ef->( )f r2 | r
        bf,4\f bf | f' f f2 | f r |
        f\p r | ef r | f4\f f f2 |
        f r | < g\p b > r | g4\f g g2 |
        g r | a\p r | a4\f a a2 | a
        r | R1 | r2
        d,4-|\f d-| | d d g2 | a
        r | R1 | r2
        g4-|\f g-| | g g ef2 | a,
        r | R1 | r2
        d'\f | ef fs, | g d | ef4 g d2 | d r |
        g4 f ef d | ef2 d | ef d |
        ef4 fs g ef | a, bf8 c d4.( )d8-. | d2 r4
        ef\p | a, bf8 c d4.( )d8-. |
    }
}

vlaVc = \notes {
    d'2
}
vlaVd = \notes {
    d'1
    % fake a tie to the next mvmt
    * 7/8 ~ \property Voice.NoteHead \override #'transparent = ##t d'1 * 1/8
    \key g \major
}

vlaVI = \notes {
    \key g \major
    \time 12/8
    \relative d' {
        % fake a tie from the last mvmt
        \partial 4
        \property Voice.NoteHead \override #'transparent = ##t
        d1 * 1/4 ~
        \property Voice.NoteHead \revert #'transparent
        \bar ""
        d4. r < g2.\p g, > | < g g, > c,4.( )d | g, r
        < d'2.\p d' > | < d d' > < d d' > | g,4.( )a d, r4. |
        < g'2.\f g, > < g g, > | < g g, > c,4. d | g,
        %
        % (cello)
        g'2.\p fs4. ~ | fs e2. d4. ~ | d c2. b4( )e8 | cs( b )a d4
        d8\f d4( )fs8 a4( )a8-. | fs4. r4
        d8\p d4. d | d r4 g8\mf g4. g | g r4
        g8\f g4. r4 d8 | e4. r4 b8 c4. d | d r4
        %
        % (cello, organ)
        <
            \context Voice = vlaclo {
                \voiceTwo g8\p e4. fs | g4.
            }
            \context Voice = vlaorg {
                \voiceOne b8 c( d )e a,4( )d8 | b4.
            }
        >
        \context Voice
        r4. r2. | R1. | r4. r4
        g8\f a4( )b8 e,4( )d8 | d4. r4
        g8\mf\cr g4. r4 a8 | a4. r4 b8 b4. r4 d,8\rc | d4
        % (cello)
        g8\p fs4. e d | c b a r4
        g'8\f-"poco largamente" | g4( )b,8 d4( )d8-. d4 r8 c4. |
        r4.^\fermata
        g\p
        r2.^\fermata |
        a4\f( )b8 d4( )d8-. b4. r4
        %
        % (cello)
        e8\mf-"a tempo" | ds4( )b8 e,4( )e'8-. ds4( )b8 r4
        a8 |
        \cresc e'4. r4 a,8 e'4. r4 b8 | fs'4. r4 b,8 fs'4. \endcresc r |
        R1. | r4. r4
        g8\p cs,4. b | fs' fs fs r |
        r2. r4. r4
        b8\mf | b4. r4 b8 cs,4. r4 fs8 | fs4. fs fs2. |
        %
        < g2.\p g, > < g g, > | < g g, > c,4.( )d | g, r
        < d'2.\p d' > | < d d' > < d d' > | g,4.( )a d, r4. |
        < g'2.\f g, > < g g, > | < g g, > c,4. d | g,
        %
        % (cello)
        g'2.\p fs4. ~ | fs e2. d4. ~ | d c2. b4( )e8 | cs( b )a d4(
        )d8\f d4( )fs8 a4( )a8-. | fs4. r4
        %
        g8\p d'4. d, | d r4 g8 d'4. d, | d r4
        d8 g4. r4 d8 | d4. r4 b8 c4. r4 c8 | d4. r4
        g8 e4( )d8 d4. | d r4
        %
        g8\f g4. g | g r4 g8 g4. g | g r4
        b,8 c4. r4 d8 | d4. d d r4
        d8\p | d4. r d r | d r r2. |
    }
}

