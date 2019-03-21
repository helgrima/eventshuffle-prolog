% For Visual Studio Code
start.

:- dynamic occasion/2.
:- dynamic happens/2.
:- dynamic participant/2.
:- dynamic votes/3.

occasion(0, "Jake's secret party").
occasion(1, "Bowling night").
occasion(2, "Tabletop gaming").

happens(0, "2014-01-01").
happens(0, "2014-01-05").
happens(0, "2014-01-12").

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

show_occasion(OccasionId, occasion(OccasionId, OccasionName, OccasionDate)):-
    occasion(OccasionId, OccasionName),
    happens(OccasionId, OccasionDate).

list_occasion(occasion(OccasionId, OccasionName)):-
    occasion(OccasionId, OccasionName).
