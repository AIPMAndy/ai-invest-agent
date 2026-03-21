# 🤖 ai-invest-agent

[English](./README_EN.md) | 中文

> AI 投资复盘系统 - 让 AI 像专业投资人一样复盘你的投资决策

[![Star](https://img.shields.io/github/stars/AIPMAndy/ai-invest-agent?style=flat)](https://github.com/AIPMAndy/ai-invest-agent/stargazers)
[![License](https://img.shields.io/github/license/AIPMAndy/ai-invest-agent)](https://github.com/AIPMAndy/ai-invest-agent)
[![Python](https://img.shields.io/badge/Python-3.8+-blue)](https://www.python.org/)

---

## 🚀 快速开始

```bash
# 安装
pip install ai-invest-agent

# 使用
ai-invest-agent --ticker 1810.HK --action buy --price 15.5 --shares 1000
ai-invest-agent --report 2024-01
ai-invest-agent --analysis AAPL
```

---

## 📺 Demo 演示

```bash
# 记录一笔买入交易
$ ai-invest-agent --ticker 1810.HK --action buy --price 15.5 --shares 1000
✅ 记录成功:
   标的: 小米集团 (1810.HK)
   操作: 买入
   价格: ¥15.5
   数量: 1000 股
   金额: ¥15,500

# 查看月度复盘报告
$ ai-invest-agent --report 2024-01
📊 2024年1月 投资复盘:

   收益: +8.5%
   交易次数: 12
   胜率: 75%
   
   最佳交易: 腾讯控股 (0700.HK) +15.2%
   需要改进: 频繁交易导致手续费过高

# AI 个股分析
$ ai-invest-agent --analysis AAPL
🔍 AAPL 分析:
   
   当前价格: $185.5
   分析师评级: 买入
   目标价: $210
   
   优势:
   - 服务业收入持续增长
   - AI 战略布局清晰
   - 现金流强劲
   
   风险:
   - iPhone 销量承压
   - 估值偏高
```

---

## 🎯 核心功能

### 交易记录与管理

- 支持 A股、港股、美股
- 自动同步持仓成本
- 交易历史追溯

### AI 复盘分析

- 收益归因分析
- 胜率统计
- 风险评估

### 智能提醒

- 止盈止损提醒
- 财报发布预警
- 仓位管理建议

---

## 📁 项目结构

```
ai-invest-agent/
├── agents/           # AI Agent 模块
│   ├── analyzer.py  # 个股分析
│   └── reporter.py  # 复盘报告
├── data/            # 数据存储
├── scripts/         # 命令行工具
└── tests/           # 测试用例
```

---

## 🔧 配置

```python
from ai_invest import Agent

agent = Agent(
    portfolio=[],
    risk_tolerance=0.7,
    notification=True,
)
```

---

## 🤝 贡献

欢迎提交 Issue 和 PR！

---

## 📄 License

Apache 2.0 License

---

## 👤 作者

**Andy** - [GitHub](https://github.com/AIPMAndy)

> 让投资决策更智能，让复盘更高效。
