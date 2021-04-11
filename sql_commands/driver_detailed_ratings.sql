select * from campus_eats_fall2020.driver_ratings as a
left join campus_eats_fall2020.person as b on a.person_id = b.person_id;