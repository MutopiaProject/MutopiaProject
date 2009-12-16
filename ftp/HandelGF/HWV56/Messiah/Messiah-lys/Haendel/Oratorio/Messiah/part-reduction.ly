\header { copyrightYear = "2009" }

#(set-global-staff-size (if (eqv? #f (ly:get-option 'vocal)) 16 18))
#(ly:set-option 'non-incipit #t)
#(ly:set-option 'use-rehearsal-numbers #t)
\include "italiano.ly"
\include "common/common.ily"
\setOpus "Haendel/Oratorio/Messiah"
\opusTitle "Messiah"
\include "Haendel/Oratorio/Messiah/common.ily"

\layout {
  \context { \Score \override VerticalAlignment #'max-stretch = ##f }
}

\paper { #(define page-breaking (if (eqv? (*part*) 'vocal)
                                    ly:optimal-breaking
                                    ly:page-turn-breaking)) }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bookpart {
  \paper { #(define page-breaking ly:minimal-breaking) }
  %% Title page
  \header {
    title = "Messiah"
    composer = "George Frideric Handel"
    poet = " "
    opus = "HWV 56"
    date = "1741"
    editions = \markup \column {
      \fill-line { \line { Based upon the Deutsche Händelgesellschaft Edition } }
      \fill-line { \line { Edited by Frideric Chrysander } }
    }
  }
  \markup\null\pageBreak
  %% Table of contents
  \markuplines \table-of-contents
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% PART I
%%%
\bookpart {
  \part "Part I"
  \pieceTocTitle "Sinfonia"
  \includeScore "AAsinfonia"
  \pieceToc \markup { Recitative: \italic { Comfort ye, my people } (tenor) }
  \includeScore "ABrecitTenor"
}
\bookpart {
  \pieceToc \markup { Air: \italic { Every valley shall be exhalted } (tenor) }
  \includeScore "ACairTenor"
}
\bookpart {
  \paper { between-system-padding = 0\mm }
  \pieceToc \markup { Chorus: \italic { And the glory of the Lord } }
  \includeScore "ADchorus"
  \pieceToc \markup { Recitative: \italic { Thus saith the Lord of Hosts } (bass) }
  \includeScore "AErecitBass"
}
\bookpart {
  %%\pieceToc \markup { Air: \italic { But who may abide the day of His coming } (bass) }
  %%\includeScore "AFAairBass"
  \pieceToc \markup { Air: \italic { But who may abide the day of His coming } (contr'alto) }
  \includeScore "AFBairAlto"
}
\bookpart {
  \paper { between-system-padding = 0\mm }
  \pieceToc \markup { Chorus: \italic { And He shall purify the sons of Levi } }
  \includeScore "AGchorus"
}
\bookpart {
  \pieceToc \markup { Recitative: \italic { Behold, a virgin shall conceive } (contr'alto) }
  \includeScore "AHrecitAlto"
  \pieceToc \markup { Air: \italic { O thou that tellest good tidings } (contr'alto) }
  \includeScore "AIairAlto"
}
\bookpart {
  \paper { between-system-padding = 0\mm }
  \pieceToc \markup { Chorus: \italic { O thou that tellest good tidings } }
  \includeScore "AJchorus"
}
\bookpart {
  \pieceToc \markup { Recitative: \italic { For, behold! darkness shall cover } (bass) }
  \includeScore "AKrecitBass"
  \pieceToc \markup { Air: \italic { The people that walked in darkness } (bass) }
  \includeScore "ALairBass"
}
\bookpart {
  \paper { between-system-padding = 0\mm }
  \pieceToc \markup { Chorus: \italic { For unto us a child is born } }
  \includeScore "AMchorus"
}
\bookpart {
  \pieceTocTitle "Pifa"
  \includeScore "ANpifa"
  \pieceToc \markup { Recitative: \italic { There were sheperds abiding } (soprano) }
  \includeScore "AOrecitSoprano"
  \pieceToc \markup { Recitative: \italic { And lo! the angel of the Lord } (soprano) }
  \includeScore "APrecitSoprano"
}
\bookpart {
  \pieceToc \markup { Recitative: \italic { And the angel said unto them } (soprano) }
  \includeScore "AQrecitSoprano"
  \pieceToc \markup { Recitative: \italic { And suddenly there was with the angel } (soprano) }
  \includeScore "ARrecitSoprano"
}
\bookpart {
  \paper { between-system-padding = 0\mm }
  \pieceToc \markup { Chorus: \italic { Glory to God in the highest } }
  \includeScore "ASchorus"
}
\bookpart {
  \pieceToc \markup { Air: \italic { Rejoice greatly, O daughter of Zion } (soprano) }
  \includeScore "ATairSoprano"
  %%\pieceToc \markup { Recitative: \italic { Then shall the eyes of the blind } (soprano) }
  %%\includeScore "AUArecitSoprano"
  %%\pieceToc \markup { Air: \italic { He shall feed His flock } (soprano) }
  %%\includeScore "AVAairSoprano"
  \pieceToc \markup { Recitative: \italic { Then shall the eyes of the blind } (alto) }
  \includeScore "AUBrecitAlto"
  \pieceToc \markup { Air: \italic { He shall feed His flock } (alto, soprano) }
  \includeScore "AVBairAltoSoprano"
}
\bookpart {
  \paper {
    between-system-padding = 0\mm
    #(define page-breaking ly:minimal-breaking)
  }
  \pieceToc \markup { Chorus: \italic { His yoke is easy, His burthen } }
  \includeScore "AWchorus"
  \actEnd \markup { END OF THE FIRST PART }
}

%%%
%%% PART II
%%%
\bookpart {
  \part "Part II"
  \pieceToc \markup { Chorus: \italic { Behold the Lamb of God! } }
  \includeScore "BAchorus"
  \pieceToc \markup { Air: \italic { He was despised and rejected } (alto) }
  \includeScore "BBairAlto"
  \pieceToc \markup { Chorus: \italic { Surely He hath borne our griefs } }
  \includeScore "BCchorus"
  \includeScore "BDchorus"
  \pieceToc \markup { Chorus: \italic { All we like sheep have gone } }
  \includeScore "BEchorus"
  \pieceToc \markup { Recitative: \italic { All they that see Him } (tenor) }
  \includeScore "BFrecitTenor"
  \pieceToc \markup { Chorus: \italic { He trusted in God that He would } }
  \includeScore "BGchorus"
  \pieceToc \markup { Recitative: \italic { Thy rebuke hath broken } (tenor) }
  \includeScore "BHrecitTenor"
  \pieceToc \markup { Air: \italic { Behold, and see if there be } (tenor) }
  \includeScore "BIairTenor"
  \pieceToc \markup { Recitative: \italic { He was cut off out of the land } (tenor) }
  \includeScore "BJrecitTenor"
  \pieceToc \markup { Air: \italic { But thou didst not leave } (tenor) }
  \includeScore "BKairTenor"
  \pieceToc \markup { Chorus: \italic { Lift up your heads, O ye gates } }
  \includeScore "BLchorus"
  \pieceToc \markup { Recitative: \italic { Unto which of the angels } (tenor) }
  \includeScore "BMrecitTenor"
  \pieceToc \markup { Chorus: \italic { Let all the angels of God worship } }
  \includeScore "BNchorus"
  %%\pieceToc \markup { Air: \italic { Thou art gone up on high } (bass) }
  %%\includeScore "BOAairBass"
  \pieceToc \markup { Air: \italic { Thou art gone up on high } (alto) }
  \includeScore "BOCairAlto"
  \pieceToc \markup { Chorus: \italic { The Lord gave the word } }
  \includeScore "BPchorus"
  \pieceToc \markup { Air: \italic { How beautiful are the feet } (soprano) }
  \includeScore "BQBairSoprano"
  \pieceToc \markup { Chorus: \italic { Their sound is gone out into all lands } }
  \includeScore "BRchorus"
  \pieceToc \markup { Air: \italic { Why do the nations so furiously } (bass) }
  \includeScore "BSairBass"
  \pieceToc \markup { Chorus: \italic { Let us break their bonds } }
  \includeScore "BTchorus"
  \pieceToc \markup { Recitative: \italic { He that dwelleth in heaven } (tenor) }
  \includeScore "BUrecitTenor"
  \pieceToc \markup { Air: \italic { Thou shalt break them with a rod } (tenor) }
  \includeScore "BVairTenor"
  \pieceToc \markup { Chorus: \italic { Hallelujah } }
  \includeScore "BWchorus"
  \actEnd \markup { END OF THE SECOND PART }
}

%%%
%%% PART III
%%%
\bookpart {
  \part "Part III"
  \pieceToc \markup { Air: \italic { I know that my Redeemer liveth } (soprano) }
  \includeScore "CAairSoprano"
  \pieceToc \markup { Chorus and soli: \italic { Since by man came death } }
  \includeScore "CBchorus"
  \pieceToc \markup { Recitative: \italic { Behold, I tell you a mistery } (bass) }
  \includeScore "CCrecitBass"
  \pieceToc \markup { Air: \italic { The trumpet shall sound } (bass) }
  \includeScore "CDairBass"
  \pieceToc \markup { Recitative: \italic { Then shall be brought to pass } (contr'alto) }
  \includeScore "CErecitAlto"
  \pieceToc \markup { Duet: \italic { O death! where is thy string? } (contr'alto and tenor) }
  \includeScore "CFBduo"
  \pieceToc \markup { Chorus: \italic { But thanks be to God } }
  \includeScore "CGchorus"
  \pieceToc \markup { Air: \italic { If God be for us } (soprano) }
  \includeScore "CHairSoprano"
  \pieceToc \markup { Chorus: \italic { Worthy is the Lamb } }
  \includeScore "CIchorus"
  \pieceToc \markup { Chorus: \italic { Amen } }
  \includeScore "CJchorus"
  \actEnd \markup { END OF THE ORATORIO }
}
