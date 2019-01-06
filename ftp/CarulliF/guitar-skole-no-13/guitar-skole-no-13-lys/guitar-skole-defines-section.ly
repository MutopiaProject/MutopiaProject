\version "2.18.0"
% maybe change this to myBreak = { }
myBreak =
{
  \break
}
myMoveUpBeside =
{
  \once \override Fingering.extra-offset = #'(-1.5 . 3.3)
}
myMoveLeftPastSharp =
{
  \once \override Fingering.extra-offset = #'(-1.0 . 0.0)
}
myMoveLessUpLeft =
{
  \once \override Fingering.extra-offset = #'(-2.5 . 3.9)
}
myMoveUnder =
{
  \once \override Fingering.extra-offset = #'(0.0 . -6)
}
myMoveUpLeft =
{
  \once \override Fingering.extra-offset = #'(-1.5 . 4.5)
}

mySetDynamicPadding =
{
  \override DynamicLineSpanner.staff-padding = #4.0
}
mySetDynamicExtent =
{
  \override DynamicLineSpanner.Y-extent = #'(-0.2 . 0.2)
}

mySetTextSpannerI =
{
  \override TextSpanner.bound-details.left.text = #"I "
}
mySetTextSpannerII =
{
  \override TextSpanner.bound-details.left.text = #"II "
}
mySetTextSpannerIII =
{
  \override TextSpanner.bound-details.left.text = #"III "
}
mySetTextSpannerIV =
{
  \override TextSpanner.bound-details.left.text = #"IV "
}
mySetTextSpannerV =
{
  \override TextSpanner.bound-details.left.text = #"V "
}
mySetTextSpannerVI =
{
  \override TextSpanner.bound-details.left.text = #"VI "
}
mySetTextSpannerVII =
{
  \override TextSpanner.bound-details.left.text = #"VII "
}
mySetTextSpannerVIII =
{
  \override TextSpanner.bound-details.left.text = #"VIII "
}
mySetTextSpannerIX =
{
  \override TextSpanner.bound-details.left.text = #"IX "
}
mySetTextSpannerX =
{
  \override TextSpanner.bound-details.left.text = #"X "
}
mySetTextSpannerXI =
{
  \override TextSpanner.bound-details.left.text = #"XI "
}
mySetTextSpannerXII =
{
  \override TextSpanner.bound-details.left.text = #"XII "
}
mySetTextSpannerXIII =
{
  \override TextSpanner.bound-details.left.text = #"XIII "
}
mySetTextSpannerRight =
{
  \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1.5) }
}

myTextATempo = ^\markup
{
  "a tempo"
}
myTextCresc = _\markup
{
  "cresc."
}
myTextDCalFine = _\markup
{
  "D.C. al Fine"
}
myTextEspress = _\markup
{
  "espress."
}
myTextFine = _\markup
{
  "Fine."
}
myTextIncomplete = _\markup
{
  "see original at http://www2.kb.dk/elib/noder/rischel/RiBS0213.pdf to correct errors past first line"
}
myTextRall =_\markup 
{
  "rall."
}
myTextRit = _\markup 
{
  "rit."
}

