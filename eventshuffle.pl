% For Visual Studio Code
start.

:- dynamic occasion/2.
:- dynamic happens/3.
:- dynamic participant/2.
:- dynamic votes/3.

% First term is unique identifier
% Second term is name of occasion
occasion(0, "Jake's secret party").
occasion(1, "Bowling night").
occasion(2, "Tabletop gaming").

% First term is unique identifier
% Second term is reference to occasion
% Third term is date
happens(0, 0, "2014-01-01").
happens(1, 0, "2014-01-05").
happens(2, 0, "2014-01-12").

% First term is unique identifier
% Second term is name of participant
participant(0, "John").
participant(1, "Julia").
participant(2, "Paul").
participant(3, "Daisy").
participant(4, "Dick").

% First term is reference to participant
% Second term is refetence to happens
votes(0, 0).
votes(1, 0).
votes(2, 0).
votes(3, 0).
votes(4, 0).
votes(4, 1).

show_occasion(OccasionId, occasion(OccasionId, OccasionName, OccasionDate)):-
    occasion(OccasionId, OccasionName),
    happens(_, OccasionId, OccasionDate).

list_occasions(occasion(OccasionId, OccasionName)):-
    occasion(OccasionId, OccasionName).

participants_votes(ParticipantId, occasion_vote(participant(ParticipantName), occasion(OccasionId, OccasionName, OccasionDate))) :-
    participant(ParticipantId, ParticipantName),
    votes(ParticipantId, HappensId),
    happens(HappensId, OccasionId, OccasionDate),
    occasion(OccasionId, OccasionName).

