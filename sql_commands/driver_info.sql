select * from campus_eats_fall2020.driver as a
left join campus_eats_fall2020.person as b on a.driver_id = b.person_id;