<div align="center">

# 🔥 AI Invest Agent

**AI-powered investment review — from gut feelings to systematic analysis**

[![Stars](https://img.shields.io/github/stars/AIPMAndy/ai-invest-agent?style=social)](https://github.com/AIPMAndy/ai-invest-agent/stargazers)
[![Forks](https://img.shields.io/github/forks/AIPMAndy/ai-invest-agent?style=social)](https://github.com/AIPMAndy/ai-invest-agent/network/members)
[![License](https://img.shields.io/github/license/AIPMAndy/ai-invest-agent)](./LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/AIPMAndy/ai-invest-agent)](https://github.com/AIPMAndy/ai-invest-agent/commits/main)

**English** | [简体中文](./README.md)

</div>

---

> ⭐ If this project helps you, give it a Star — it keeps the updates coming!

## 🎯 What Does This Solve?

| Pain Point | Solution |
|------------|----------|
| Information scattered across markets | Unified framework covering A-shares, HK, and US |
| Inconsistent analysis methods | Standardized 4-step process, repeatable and iterable |
| Emotional buy/sell decisions | Temperature model — let data drive decisions |
| Analysis without actionable output | 10-dimension deep dive + position recommendations |

---

## 🆚 Why This Project?

| Capability | Manual Review | Quant Tools | **AI Invest Agent** |
|------------|:------------:|:-----------:|:-------------------:|
| Cross-market (A/HK/US) | ❌ | 🟡 Partial | ✅ 33 indices |
| Standardized workflow | ❌ | ❌ | ✅ 4-step framework |
| Quantified valuation | ❌ | ✅ | ✅ Buy at 30° / Sell at 50° |
| AI-driven analysis | ❌ | ❌ | ✅ Prompt-powered |
| Multi-format output | 🟡 Manual | ❌ | ✅ MD/DOCX/XLSX |
| Zero-code setup | ❌ | ❌ | ✅ Load prompt & go |

---

## 🌡️ Core: Temperature Model

Turns "is this overvalued?" into a single number:

```
Temperature = Historical PE Percentile × 100
```

| Temperature | Status | Action |
|-------------|--------|--------|
| 0-30℃ | 🟢 Undervalued | Buy zone |
| 30-50℃ | 🟡 Fair value | Hold |
| 50-100℃ | 🔴 Overvalued | Gradually sell |

Covers **33 indices**: A-shares (20) + Hong Kong (8) + US (5)

---

## 📊 4-Step Review Framework

```
Step 1: Macro Analysis → Policy / Liquidity / Rates / FX / Fundamentals
Step 2: Sector Analysis → Tech / Healthcare / Dividend / Consumer (3 markets)
Step 3: Temperature   → Quantified valuation percentile for 33 indices
Step 4: Position Analysis → 10-dimension deep dive + action plan
```

---

## 🚀 Quick Start

```bash
# 1. Clone
git clone https://github.com/AIPMAndy/ai-invest-agent.git
cd ai-invest-agent

# 2. Install dependencies
pip install -r requirements.txt

# 3. Load prompts in your AI tool (Claude/ChatGPT/Kimi)
# Full weekly review: prompts/weekly_review.md
# Daily quick check:  prompts/quick_check.md
```

**Output**: Macro analysis + Sector analysis + Temperature report + Position recommendations (MD / DOCX / XLSX)

---

## 📁 Project Structure

```
ai-invest-agent/
├── README.md          # Chinese docs
├── README_EN.md       # English docs
├── LICENSE            # Apache 2.0 + additional terms
├── CONTRIBUTING.md    # Contribution guide
├── requirements.txt   # Python dependencies
├── config/            # Index, portfolio, data source configs
│   ├── indices.json   # 33 index definitions
│   ├── portfolio.json # Portfolio config
│   └── data_sources.json
├── prompts/           # Review prompts
│   ├── weekly_review.md
│   └── quick_check.md
├── skills/            # Analysis skill modules
│   ├── macro_analysis.md
│   ├── sector_analysis.md
│   ├── temperature_gauge.md
│   └── position_analysis.md
├── tools/             # Utility scripts
│   ├── md2docx.py     # MD to Word
│   └── create_excel.py
├── assets/            # Assets
├── scripts/           # Automation scripts
└── .github/           # GitHub config
    └── ISSUE_TEMPLATE/
```

---

## 💡 Use Cases

- **Weekend Review**: Load `weekly_review.md` for a systematic weekly debrief
- **Daily Quick Check**: Load `quick_check.md` for a 5-minute market snapshot
- **Buy Decisions**: Use the temperature model to gauge index valuations
- **Portfolio Management**: 10-dimension deep dive on current holdings
- **Report Generation**: Auto-generate Word/Excel investment reports

---

## 🗺️ Roadmap

- [x] Cross-market 4-step review framework
- [x] 33-index temperature model
- [x] 10-dimension position deep-dive
- [x] MD / DOCX / XLSX multi-format output
- [x] Visualization Dashboard (React)
- [ ] Backtesting module (historical temperature strategy returns)
- [ ] Automated data ingestion pipeline
- [ ] Multi-strategy comparison (value / momentum / dividend)

---

## 👨‍💻 Author

**Andy** — Former AI Product Expert at Tencent & Baidu → VP at LLM Unicorn → Startup CEO

Building repeatable AI-powered investment analysis systems.

[![WeChat](https://img.shields.io/badge/WeChat-AIPMAndy-07C160?logo=wechat&logoColor=white)](.)
[![GitHub](https://img.shields.io/badge/GitHub-AIPMAndy-181717?logo=github)](https://github.com/AIPMAndy)

---

## ⚠️ Disclaimer

This project is for educational and engineering practice purposes only. It is **not investment advice**. Invest at your own risk.

---

## 📄 License

Apache License 2.0 with additional terms:

**✅ Allowed**
- Personal study & research: free, go ahead
- Internal enterprise use: free, modifications welcome
- Open-source citation: must retain author attribution

**❌ Prohibited (without written authorization)**
- De-branding: removing "AI酋长Andy" attribution
- Commercial SaaS: using source code for paid multi-tenant services
- Resale: bundling or selling as paid course deliverables

**Commercial licensing**: WeChat AIPMAndy

---

**If this project helps you, please give it a ⭐ Star!**

**Copyright © 2026 AI酋长Andy. All rights reserved.**
