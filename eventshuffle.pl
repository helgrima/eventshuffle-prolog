:- dynamic event/2.
:- dynamic when/2.
:- dynamic participant/2.
:- dynamic votes/3.

event(0, "Jake's secret party").
event(1, "Bowling night").
event(2, "Tabletop gaming").

when(0, "2014-01-01").
when(0, "2014-01-05").
when(0, "2014-01-12").

participant(0, "John").
participant(1, "Julia").
participant(2, "Paul").
participant(3, "Daisy").
participant(4, "Dick").

votes(0, 0).
votes(1, 0).
votes(2, 0).
votes(3, 0).
votes(4, 1).


