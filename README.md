# 🔥 AI 投资 Agent

**一句话：用 AI 帮你做投资复盘，从"拍脑袋"到"有体系"。**

[中文](./README.md) | [English](./README_EN.md)

[![Stars](https://img.shields.io/github/stars/AIPMAndy/ai-invest-agent?style=social)](https://github.com/AIPMAndy/ai-invest-agent/stargazers)
[![License](https://img.shields.io/github/license/AIPMAndy/ai-invest-agent)](./LICENSE)

> ⭐ 觉得有用？点个 Star 支持一下，这是持续更新的最大动力！

---

## 🎯 这个项目能帮你什么？

| 痛点 | 解决方案 |
|------|----------|
| 信息太散，A股港股美股到处看 | 统一框架，一次分析三个市场 |
| 每次分析方法不一样，没法积累 | 标准化四步法，可复用可迭代 |
| 买卖全凭感觉，事后总后悔 | 温度计量化系统，30度买/50度卖 |

---

## 🌡️ 核心：温度计系统

把"估值贵不贵"变成一个数字：

```
温度 = PE历史分位 × 100
```

| 温度 | 状态 | 操作 |
|------|------|------|
| 0-30℃ | 低估 | 买入区 |
| 30-50℃ | 合理 | 持有 |
| 50-100℃ | 高估 | 卖出区 |

覆盖 **33个指数**：A股20个 + 港股8个 + 美股5个

---

## 🚀 快速开始

```bash
# 1. 克隆项目
git clone https://github.com/AIPMAndy/ai-invest-agent.git
cd ai-invest-agent

# 2. 安装依赖
pip install -r requirements.txt

# 3. 用你的 AI 工具加载 prompts/weekly_review.md 执行复盘
```

输出：宏观分析 + 板块分析 + 温度计 + 持仓建议（MD/DOCX/XLSX）

---

## 📊 四步复盘法

```
Step 1: 宏观分析 → 政策/资金/基本面
Step 2: 板块分析 → 科技/医疗/红利/消费
Step 3: 温度计   → 33个指数估值分位
Step 4: 标的分析 → 10维度深度评估
```

---

## 📁 项目结构

```
ai-invest-agent/
├── config/           # 指数、持仓、数据源配置
├── skills/           # 分析技能模块
├── prompts/          # 复盘提示词
├── tools/            # MD转Word、生成Excel
└── output/           # 输出目录
```

---

## 🗺️ Roadmap

- [ ] 回测模块（历史温度策略收益）
- [ ] 自动数据抓取
- [ ] 可视化 Dashboard
- [ ] 多策略对比

---

## 👨‍💻 作者

**Andy** - 前腾讯/百度 AI 产品专家 → 大模型独角兽 VP → 创业 CEO

- 微信：AIPMAndy
- GitHub：[@AIPMAndy](https://github.com/AIPMAndy)

---

## ⚠️ 免责声明

本项目仅供学习交流，不构成投资建议。投资有风险，决策需谨慎。

---

**如果对你有帮助，请点个 ⭐ Star！**
