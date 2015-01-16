\version "2.18.2"
\header {
                                % LILYPOND HEADERS
    %head =  "0.08 (12 Aug 2004)" 

    %%    dedication = "Dedication"
    title = "Prelude"
    subtitle = "`Raindrop'"
    %%    subsubtitle = "Subsubtitle"

    composer = "Frederic Chopin (1810-1849)"
    opus = "Op.28, No.15"

                                % LILYPOND FOOTERS


                                % MUTOPIA HEADERS
    mutopiatitle = "Prelude: Op. 28, No. 15"
    mutopiacomposer = "ChopinFF"
    mutopiaopus = "Op. 28"
    mutopiainstrument = "Piano"
    date = "1838/39"
    source = "Edition Peters"
    style = "Romantic"
    enteredby = "Magnus Lewis-Smith"
    maintainer = "Magnus Lewis-Smith"
    maintainerEmail = "mlewissmith@users.sourceforge.net"
    maintainerWeb = "http://magware.sourceforge.net/"
    license = "Public Domain"
    lastupdated = "2015/01/15"  %Update to LilyPond v2.18.2 (Javier Ruiz-Alma)

 footer = "Mutopia-2015/01/16-471"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


\paper {
    top-margin = 8 \mm
    bottom-margin = 10 \mm
    top-markup-spacing.basic-distance = #6
    markup-system-spacing.basic-distance = #8 %distance from header/title to 1st system
    top-system-spacing.basic-distance = #10 %dist. from top margin to system (no titles)
    system-system-spacing.basic-distance = #20  %fixed distance between systems
}



%{
BUGLIST
*	http: 
*	category:  projects/lily
*	group:     sources/lily/chopin_prelude_op28_no15


FEATURE REQUEST
*	http: 
*	category:  projects/lily
*	group:     sources/lily/chopin_prelude_op28_no15

LINKS
*       http: 
*	http: 
*	http: 
*	http: 
*	http: 
%}
