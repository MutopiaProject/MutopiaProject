\version "2.18.2"

global = {
  \key ees \major
  \time 4/4
  \tempo "Allegro."
}

dslur = \set doubleSlurs = ##t
undslur = \set doubleSlurs = ##f

rf = #(make-dynamic-script "rf")
sfp = #(make-dynamic-script "sfp")
