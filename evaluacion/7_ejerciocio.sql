SELECT name, ssn, membership_id, membership_status, check_in_date FROM get_fit_now_check_in g
JOIN get_fit_now_member h ON g.membership_id = h.id
JOIN person p ON h.person_id = p.id
WHERE check_in_date = "2017"
GROUP BY g.membership_status
ORDER BY g.membership_status ASC