\version "2.18.2"

\header {
                                % LILYPOND HEADERS

    %%    dedication = "Dedicated to Prince Franz Joseph Lobkowitz and Count Andreas Razumovsky"
    title = "Symphony No.~5"
    subtitle = "C minor"
    %%    subsubtitle = "Subsubtitle"

    composer = "Ludwig van Beethoven (1770-1827)"
    opus = "Op.~67 (1809)"
    %%    arranger = "Arranger"

    %%    poet = "Poet"
    %%    texttranslator = "Translator"
    %%    meter = "meter"

    instrument = "Piano Solo"
    %%    piece = "Piece"

                                % LILYPOND FOOTERS
    license = "Public Domain"
    %footer = "0.04 (17 Nov 2004)" 
    %%    tagline = "Tagline"

                                % MUTOPIA HEADERS
    mutopiatitle = "Symphony no. 5, Piano reduction"
    mutopiacomposer = "BeethovenLv"
    mutopiaopus = "Op. 67"
    mutopiainstrument = "Piano"
    date = "1809"
    source = "Augener's Edition"
    style = "Classical"
    enteredby = "Magnus Lewis-Smith"
    maintainer = "Magnus Lewis-Smith"
    maintainerEmail = "mlewissmith@users.sourceforge.net"
    maintainerWeb = "http://magware.sourceforge.net/"

 footer = "Mutopia-2015/01/17-497"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

%{
/*
http://www.kingsbarn.freeserve.co.uk/menu.html

Symphony No.5 in C minor, op.67

Period of composition: 1804 - 1808 Date of Publication: 1809, by Breitkopf and
Hartel, dedicated to Prince Franz Joseph Lobkowitz and Count Andreas Razumovsky.

Background details:

The hugely successful 4th Symphony obviously impressed Count Oppersdorff (who
commissioned the piece) as much as it did the critics, for the Count swiftly
offered Beethoven a new commission for another symphony. Beethoven took this
opportunity to resurrect the sketches he had laid aside from 1804-1806 to
satisfy the Count. The Count offered 500 florins for the work (as he did for the
4th Symphony) and paid 200 in advance. However the Count never received the
symphony as Beethoven, forever on the look-out for a good deal, saw it fit to
sell the piece to publishers Breitkopf and Hartel in 1808 as part of a package
deal that included the 6th Symphony, the Cello Sonata Op.69 and the Piano Trios
Op.70.

The piece was first performed at a mammoth benefit concert on 22 December 1808
which included the 6th Symphony, 4th Piano Concerto, the aria "Ah Perfido",
excerpts from the Mass in C, an improvisation by Beethoven himself and the
Choral Fantasy Op.80! The applause however was somewhat muted. The ability to
comprehend such a volume of magnificent and extraordinary music was, perhaps,
too much to expect. Also, as the concert lasted over four hours, the audience
must have been absolutely frozen - Beethoven having no money left to pay for
heating! A humble beginning for what is probably the most widely known piece of
'classical' music ever written.

Musical outline:

The four note motto of the opening Allegro con brio is so ingrained into the
modern psyche that it is almost impossible to distance ourselves and assess it
objectively! According to Schindler Beethoven said of the opening bars: "Thus
Fate knocks at the door!" Whether this is true or not, there is certainly a
sense of doom which permeates throughout the movement. The con brio must be
fully observed for the true fearfulness of the piece to be realised. John Eliot
Gardiner argues convincingly that the "Fate" theme has its origins in a song of
the French Revolution. These opening bars are played on strings and clarinets
alone and are actually ambiguous tonally (the key of C minor is confirmed only
as the piece continues), with the full orchestra being reserved for the
recapitulation and the coda. The horn heralds the second subject and briefly C
major is allowed to triumph before ultimately being destroyed in the coda where
"Fate " has the last word.

In the second movement, Andante con moto, we find an unusual mix of variation
and free writing, with the galant theme being interrupted on three occasions by
a martial fanfare in C major, and the variations themselves becoming more
improvisatory in manner.

With the Scherzo and Trio we return to the world of C minor. The opening theme,
looms questioningly out of the darkness on the cellos and bases. The question is
answered starkly by the second martial theme, introduced by the horns, that is
reminiscent of the "Fate" motif of the opening Allegro. The trio displays a
virtuoso introduction from the bass that is increasingly taken up by the rest of
the orchestra. The trio is played twice, in common with other works of the
period such as the 4th, 6th and 7th Symphonies but there is some dispute as to
whether it should be played only once as happened at the premiere. The ommision
of the repeat is understandable considering the great length of this concert,
but surely for normal purposes the movement should be played complete to hold
its own in such a monumental and powerful work as this symphony.

The Scherzo leads without a break into the final Allegro via a mysterious
transitionary passage with long held notes on the strings and military tappings
on the timpani. Out of this a crescendo arises in the last moment bursting forth
the most brilliant light of C major. What proceeds from here is the ultimate
musical symbol of triumph and this music also has the flavour of the French
revolution. Here the trombones and piccolo, which up until now had remained
silent, have their say. Beethoven had discussed the inclusion of these
instruments, novelties for a symphony at that time, with Count Oppersdorff, and
it is not impossible that the Count had influenced Beethoven in this regard. The
exposition repeat is rarely observed in performance but it is essential to
balance the weight of the Scherzo of it is played with the full 'da capo'. The
coda is a brilliant affair along the lines of the finale of the 3rd Symphony

*/
%}


