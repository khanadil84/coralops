# 🪸 CoralOps Architecture

## Overview

CoralOps is an AI-native SRE investigation platform powered by Coral SQL.

The system correlates operational telemetry across:

- GitHub
- Datadog
- PagerDuty
- StatusGator

using Coral SQL cross-source joins and AI retrieval workflows.

---

# 🧠 Core Architecture

User Dashboard
        │
        ▼
AI Investigation Layer
        │
        ▼
Coral SQL Query Engine
        │
 ┌──────┼────────┬──────────┐
 ▼      ▼        ▼          ▼
GitHub Datadog PagerDuty StatusGator
Telemetry Metrics Escalations Outages

---

# ⚡ Coral SQL Layer

Coral SQL enables querying multiple operational systems as SQL tables.

Example:

```sql
SELECT
  g.deployment,
  d.metric_alert,
  p.escalation_level,
  s.outage_status

FROM github.pull_requests g

JOIN datadog.alerts d
ON d.timestamp >= g.merged_at

JOIN pagerduty.incidents p
ON p.priority = 'critical'

JOIN statusgator.outages s
ON s.status = 'degraded';
```

This enables cross-source operational intelligence without ETL pipelines or data warehouses.

---

# 🤖 AI Investigation Pipeline

1. Deployment telemetry detected from GitHub
2. Datadog anomaly identified
3. PagerDuty escalation correlated
4. StatusGator outage matched
5. Coral SQL joins operational telemetry
6. AI reasoning engine generates root-cause analysis
7. Autonomous remediation workflow initiated

---

# 🧩 MCP + Agent Infrastructure

CoralOps demonstrates:

- MCP-compatible investigation agents
- Autonomous remediation agents
- AI telemetry orchestration
- Retrieval-based operational reasoning
- AI operational intelligence workflows

---

# ⚡ Coral Query Cache Engine

CoralOps simulates Coral query caching to reduce operational query latency.

Features:
- Cached operational joins
- Reduced query latency
- Faster telemetry retrieval
- Operational intelligence acceleration

---

# 🧠 Coral Schema Learning

The platform demonstrates schema learning across operational systems:

- GitHub deployment schemas
- Datadog telemetry schemas
- PagerDuty escalation schemas
- StatusGator outage schemas

This enables AI agents to reason across heterogeneous operational data sources.

---

# 🌐 Enterprise SRE Workflow

CoralOps enables:

- AI-driven incident investigation
- Blast-radius analysis
- Root-cause reasoning
- Autonomous remediation recommendations
- Real-time operational intelligence

---

# 🚀 Future Architecture Improvements

- Real Coral backend integration
- Live MCP server connectivity
- Kubernetes remediation automation
- Real-time telemetry ingestion
- AI remediation execution pipelines

---

# 🪸 CoralOps

Enterprise AI operational intelligence powered by Coral SQL.