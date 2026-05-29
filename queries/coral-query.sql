SELECT
  g.commit,
  d.metric_alert,
  p.incident_title,
  s.service_status

FROM github.deployments g

JOIN datadog.alerts d
ON d.timestamp >= g.deployed_at

JOIN pagerduty.incidents p
ON p.severity = 'critical'

JOIN statusgator.services s
ON s.status != 'operational'

ORDER BY d.timestamp DESC;