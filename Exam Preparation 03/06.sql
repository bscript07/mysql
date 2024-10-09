SELECT property_id, agent_id, price, offer_datetime
FROM property_offers
WHERE 2021 = YEAR(offer_datetime)
ORDER BY price
LIMIT 10