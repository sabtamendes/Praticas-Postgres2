SELECT educations.id AS id,	users.name AS name,	courses.name AS course,	schools.name AS school,	educations."endDate" AS "endDate"
FROM educations
JOIN users ON educations."userId" = users.id
JOIN courses ON educations."courseId" = courses.id
JOIN schools ON educations."schoolId" = schools.id
WHERE users.id = 30 AND educations.status = 'finished';