use quiz_app;


# Queries the grade of the user with an id of 3
SELECT COUNT(*) INTO @total_questions_quiz1 FROM questions
GROUP BY quiz_id;
SELECT (COUNT(*) / @total_questions_quiz1) * 100
FROM user_input
         JOIN answer_question aq on user_input.question_id = aq.question_id
WHERE user_input.input = aq.answer_id AND user_id = 3;

# Queries the number of users who took quiz number 1
SELECT COUNT(*)
FROM user_quizzes
where quiz_id = 1;
