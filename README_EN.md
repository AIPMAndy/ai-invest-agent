# AIInvestAgent

[English](./README_EN.md) | [中文](./README.md)

[![Stars](https://img.shields.io/github/stars/AIPMAndy/ai-invest-agent?style=social)](https://github.com/AIPMAndy/ai-invest-agent/stargazers)
[![Forks](https://img.shields.io/github/forks/AIPMAndy/ai-invest-agent?style=social)](https://github.com/AIPMAndy/ai-invest-agent/network/members)
[![License](https://img.shields.io/github/license/AIPMAndy/ai-invest-agent)](./LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/AIPMAndy/ai-invest-agent)](https://github.com/AIPMAndy/ai-invest-agent/commits/main)

![AIInvestAgent Social Preview](./assets/social-preview.svg)

> A cross-market AI investing review system for A-shares, Hong Kong, and US equities.
> It standardizes the full workflow from data gathering to actionable portfolio decisions.

> ⭐ If this project is helpful, please give it a Star.

## Author

Hi, I’m Andy.

Former AI product expert at Tencent and Baidu, ex-VP at a large-model unicorn, now startup CEO. After seeing multiple tech hype cycles, I focus on long-term execution and repeatable AI business systems.

For collaboration:
WeChat: AIPMAndy
GitHub: https://github.com/xzjpa6

## GitHub Growth Setup

- English doc: `README_EN.md`
- Social preview image: `assets/social-preview.svg` (upload in Settings → General → Social preview)
- Topics config: `.github/topics.json`

```bash
GITHUB_TOKEN=your_token bash scripts/set_github_topics.sh
```

## Why This Project

`AIInvestAgent` solves three common problems in discretionary investing:

1. Fragmented information across macro, sectors, indices, and positions.
2. Non-repeatable analysis process and inconsistent decision quality.
3. Emotion-driven execution with weak risk discipline.

## Core Features

- Cross-market analysis: A-shares, Hong Kong, US.
- Structured 4-step review framework.
- 33-index valuation temperature model.
- 10-dimension position deep-dive analysis.
- Multi-format output: `Markdown`, `DOCX`, `XLSX`.
- Fully configurable data sources, indices, and portfolio universe.

## 4-Step Framework

### Step 1: Macro Analysis
- Policy, liquidity, rates, currency, macro fundamentals, key risk events.

### Step 2: Sector Analysis
- Tech / Healthcare / Dividend / Consumer-Finance across all three markets.

### Step 3: Index Temperature
- Formula: `Temperature = Historical PE Percentile × 100`.
- Coverage: 33 indices (A-share 20 + HK 8 + US 5).

### Step 4: Position Deep-Dive
- 10 dimensions including fundamentals, valuation, moat, drivers, risks, trend points, ratings, and action plan.

## Project Structure

```text
AI投资Agent/
├── README.md
├── README_EN.md
├── LICENSE
├── requirements.txt
├── config/
├── prompts/
├── skills/
├── tools/
└── output/   # ignored by git
```

## Quick Start

```bash
pip install -r requirements.txt
```

- Weekly full review prompt: `prompts/weekly_review.md`
- Daily quick check prompt: `prompts/quick_check.md`

Local tool examples:

```bash
python tools/md2docx.py report.md report.docx 楷体
```

```python
from tools.create_excel import create_position_analysis_excel, create_temperature_excel

create_position_analysis_excel(data, "position_analysis.xlsx")
create_temperature_excel(data, "index_temperature.xlsx")
```

## Output Artifacts

Generated under `output/{date}/`:

- Macro reports (detailed + summary, MD + DOCX)
- Sector reports (detailed + summary, MD + DOCX)
- Index temperature report (MD + DOCX)
- Position deep-dive report (XLSX)

## Roadmap

- [ ] Backtesting module for temperature strategy
- [ ] Automated data ingestion pipeline
- [ ] Visualization dashboard (heatmap + allocation hints)
- [ ] Multi-strategy comparison (value/momentum/dividend)

## Disclaimer

This project is for research and engineering practice only.
It is **not** investment advice.
