professor('cuneytFehmi').
professor('onurDemirors').

associateProfessor('belginErgencBostanoglu').
associateProfessor('tolgaAyav').
associateProfessor('tugkanTuglular').
associateProfessor('yalınBastanlar').
associateProfessor('damlaOguz').
associateProfessor('nesliErdogmus').

lecturer('beratAlperErol').
lecturer('buketErsahin').
lecturer('burakGalipAslan').
lecturer('turgutKalfaoglu').

retired('fevziBelli').
retired('halisPuskulcu').
retired('sıtkıAytac').

resarchAsistant('adilCoban').
resarchAsistant('altugYigit').
resarchAsistant('dilekOzturk').
resarchAsistant('emreDincer').
resarchAsistant('cansuOzkan').

administration('cananOzturk').
administration('zaferAtes').

veryLovedAcedemician('burakGalipAslan').
veryLovedAcedemician('damlaOguz').
veryLovedAcedemician('yalınBastanlar').

first_term_lessons('ceng113', 'nesliErdogmus').
first_term_lessons('ceng115', 'yalınBastanlar').
first_term_lessons('ceng111', 'beratAlperErol').

second_term_lessons('ceng112', 'cuneytFehmi').

third_term_lessons('ceng211', 'tugkanTuglular').
third_term_lessons('ceng213', 'selmaTekir').
third_term_lessons('ceng215', 'tolgaAyav').

fourth_term_lessons('ceng212', 'damlaOguz').
fourth_term_lessons('ceng214', 'burakGalipAslan').
fourth_term_lessons('ceng222', 'nesliErdogmus').

facultyMember(X):-
    professor(X);
    lecturer(X);
    associateProfessor(X).

is_loved_lecturer(X):-
    veryLovedAcedemician(X).


not_working(X):-
    retired(X).

working(X):-
    \+not_working(X),
    professor(X).

working(X):-
    \+not_working(X),
    associateProfessor(X).

working(X):-
    \+not_working(X),
    lecturer(X).

working(X):-
    \+not_working(X),
    resarchAsistant(X).


first_term_lecturer(X):- first_term_lessons(_, _).
second_term_lecturer(X):- second_term_lessons(_, _).
third_term_lecturer(X):- third_term_lessons(_, _).
fourth_term_lecturer(X):- fourth_term_lessons(_, _).


passed_lesson(true, 'first_term_lessons').
passed_lesson(true, 'second_term_lessons').
passed_lesson(true, 'third_term_lessons').
passed_lesson(true, 'fourth_term_lessons').

can_take_prerequisite_lesson :-
    passed_lesson(true,'first_term_lessons'),
    passed_lesson(true,'second_term_lessons'),
    passed_lesson(true,'third_term_lessons'),
    passed_lesson(true,'fourth_term_lessons'),
    write('you can take prerequisite lesson.').
