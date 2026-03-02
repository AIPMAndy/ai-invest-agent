<div align="center">

# 🔥 AI 投资 Agent

**用 AI 做投资复盘，从"拍脑袋"到"有体系"**

[![Stars](https://img.shields.io/github/stars/AIPMAndy/ai-invest-agent?style=social)](https://github.com/AIPMAndy/ai-invest-agent/stargazers)
[![Forks](https://img.shields.io/github/forks/AIPMAndy/ai-invest-agent?style=social)](https://github.com/AIPMAndy/ai-invest-agent/network/members)
[![License](https://img.shields.io/github/license/AIPMAndy/ai-invest-agent)](./LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/AIPMAndy/ai-invest-agent)](https://github.com/AIPMAndy/ai-invest-agent/commits/main)

[English](./README_EN.md) | **简体中文**

</div>

---

> ⭐ 觉得有用？点个 Star 支持一下，这是持续更新的最大动力！

## 🎯 这个项目能帮你什么？

| 痛点 | 解决方案 |
|------|----------|
| 信息太散，A股港股美股到处看 | 统一框架，一次分析三个市场 |
| 每次分析方法不一样，没法积累 | 标准化四步法，可复用可迭代 |
| 买卖全凭感觉，事后总后悔 | 温度计量化系统，用数据说话 |
| 分析完不知道怎么执行 | 10 维度深度评估 + 持仓建议 |

---

## 🆚 为什么选这个？

| 能力 | 普通复盘 | 量化工具 | **AI 投资 Agent** |
|------|:--------:|:--------:|:-----------------:|
| 跨市场覆盖（A/港/美） | ❌ | 🟡 部分 | ✅ 33个指数 |
| 标准化复盘流程 | ❌ | ❌ | ✅ 四步法 |
| 量化估值温度 | ❌ | ✅ | ✅ 30度买/50度卖 |
| AI 驱动分析 | ❌ | ❌ | ✅ Prompt 驱动 |
| 多格式输出 | 🟡 手动 | ❌ | ✅ MD/DOCX/XLSX |
| 零代码上手 | ❌ | ❌ | ✅ 加载 Prompt 即用 |

---

## 🌡️ 核心：温度计系统

把"估值贵不贵"变成一个数字：

```
温度 = PE历史分位 × 100
```

| 温度 | 状态 | 操作建议 |
|------|------|----------|
| 0-30℃ | 🟢 低估 | 买入区间 |
| 30-50℃ | 🟡 合理 | 持有观望 |
| 50-100℃ | 🔴 高估 | 逐步卖出 |

覆盖 **33 个指数**：A股 20 个 + 港股 8 个 + 美股 5 个

---

## 📊 四步复盘法

```
Step 1: 宏观分析 → 政策 / 资金 / 利率 / 汇率 / 基本面
Step 2: 板块分析 → 科技 / 医疗 / 红利 / 消费（三个市场）
Step 3: 温度计   → 33 个指数估值分位量化
Step 4: 标的分析 → 10 维度深度评估 + 操作计划
```

---

## 🚀 快速开始

```bash
# 1. 克隆项目
git clone https://github.com/AIPMAndy/ai-invest-agent.git
cd ai-invest-agent

# 2. 安装依赖
pip install -r requirements.txt

# 3. 用你的 AI 工具（Claude/ChatGPT/Kimi）加载 Prompt
# 周度完整复盘：prompts/weekly_review.md
# 每日快速检查：prompts/quick_check.md
```

**输出**：宏观分析 + 板块分析 + 温度计 + 持仓建议（MD / DOCX / XLSX）

---

## 📁 项目结构

```
ai-invest-agent/
├── README.md          # 中文说明
├── README_EN.md       # English
├── LICENSE            # Apache 2.0 + 附加条款
├── CONTRIBUTING.md    # 贡献指南
├── requirements.txt   # Python 依赖
├── config/            # 指数、持仓、数据源配置
│   ├── indices.json   # 33 个指数定义
│   ├── portfolio.json # 持仓配置
│   └── data_sources.json
├── prompts/           # 复盘提示词
│   ├── weekly_review.md
│   └── quick_check.md
├── skills/            # 分析技能模块
│   ├── macro_analysis.md
│   ├── sector_analysis.md
│   ├── temperature_gauge.md
│   └── position_analysis.md
├── tools/             # 工具脚本
│   ├── md2docx.py     # MD 转 Word
│   └── create_excel.py
├── assets/            # 素材
├── scripts/           # 自动化脚本
└── .github/           # GitHub 配置
    └── ISSUE_TEMPLATE/
```

---

## 💡 使用场景

- **周末复盘**：加载 `weekly_review.md`，系统性回顾本周行情
- **每日快检**：加载 `quick_check.md`，5 分钟掌握市场状态
- **买入决策**：用温度计判断指数估值位置
- **持仓管理**：10 维度深度评估当前持仓
- **输出报告**：自动生成 Word/Excel 格式的投资报告

---

## 🗺️ Roadmap

- [x] 跨市场四步复盘框架
- [x] 33 指数温度计系统
- [x] 10 维度持仓深度分析
- [x] MD / DOCX / XLSX 多格式输出
- [x] 可视化 Dashboard（React）
- [ ] 回测模块（历史温度策略收益）
- [ ] 自动数据抓取管道
- [ ] 多策略对比（价值/动量/红利）

---

## 👨‍💻 作者

**Andy** — 前腾讯/百度 AI 产品专家 → 大模型独角兽 VP → 创业 CEO

专注用 AI 构建可复用的投资分析体系。

[![微信](https://img.shields.io/badge/微信-AIPMAndy-07C160?logo=wechat&logoColor=white)](.)
[![GitHub](https://img.shields.io/badge/GitHub-AIPMAndy-181717?logo=github)](https://github.com/AIPMAndy)

---

## ⚠️ 免责声明

本项目仅供学习交流和工程实践，**不构成任何投资建议**。投资有风险，决策需谨慎。

---

## 📄 许可证

本项目基于 Apache License 2.0，附加以下条款：

**✅ 允许**
- 个人学习研究：免费，随便用
- 企业内部使用：免费，可二次开发
- 开源项目引用：需保留作者信息

**❌ 禁止（除非获得书面授权）**
- 去品牌化：禁止移除 "AI酋长Andy" 相关标识
- 商业 SaaS：禁止用源码提供付费多租户服务
- 转售/倒卖：禁止打包出售或作为付费课程核心交付物

**商业授权联系**：微信 AIPMAndy

---

**如果这个项目对你有帮助，请给个 ⭐ Star！你的支持是持续更新的动力。**

**Copyright © 2026 AI酋长Andy. All rights reserved.**
