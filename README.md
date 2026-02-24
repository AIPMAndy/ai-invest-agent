# AI投资Agent

[![Stars](https://img.shields.io/github/stars/xzjpa6/ai-invest-agent?style=social)](https://github.com/xzjpa6/ai-invest-agent/stargazers)
[![Forks](https://img.shields.io/github/forks/xzjpa6/ai-invest-agent?style=social)](https://github.com/xzjpa6/ai-invest-agent/network/members)
[![License](https://img.shields.io/github/license/xzjpa6/ai-invest-agent)](./LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/xzjpa6/ai-invest-agent)](https://github.com/xzjpa6/ai-invest-agent/commits/main)

> 从“看行情”到“做决策”，建立可复用、可解释、可迭代的 AI 投资研究工作流。

> ⭐ 如果这个项目对你有帮助，欢迎点一个 Star，这是持续更新的最大动力。

> 一个面向 A股 / 港股 / 美股 的 AI 价值投资复盘系统，
> 将“信息收集 → 结构化分析 → 温度量化 → 操作建议”标准化为可复用流程。

## 作者与合作

大家好，我是 Andy。

前腾讯、百度 AI 产品专家，曾任大模型独角兽 VP，现为创业 CEO。见证过多个技术风口后，我选择长期主义：沉淀可落地、可复用、可规模化的 AI 商业方法。

欢迎交流与合作：
微信号：AIPMAndy
GitHub：https://github.com/xzjpa6

## 项目定位

`AI投资Agent` 旨在解决个人投资复盘中的三个常见问题：

1. **信息碎片化**：宏观、行业、指数、个股信息分散，难以统一判断。
2. **结论不可复用**：每次分析方法不一致，难形成稳定策略。
3. **执行缺乏纪律**：买卖点容易受情绪影响。

项目通过“四步法”实现稳定输出，并采用可解释的温度规则：

- **30 度之下买入**（低估区域，重视赔率）
- **50 度之上卖出**（高估区域，重视风险）

## 核心能力

- **跨市场覆盖**：A股、港股、美股统一框架分析。
- **四步复盘管线**：宏观 → 板块 → 指数温度 → 标的深度分析。
- **指数温度体系**：33 个指数的估值分位温度量化。
- **持仓深度分析**：10 维度评估 + 评级 + 操作建议。
- **多格式交付**：一键输出 `Markdown / DOCX / XLSX`。
- **模块化配置**：指数池、持仓池、数据源全部 JSON 配置化。

## 方法框架（四步法）

### Step 1 宏观分析

- 政策面：货币/财政政策、监管与地缘风险
- 资金面：利率、汇率、跨境资金、风险偏好
- 基本面：中美经济数据与估值横向比较

### Step 2 板块分析

- 科技 / 医疗 / 红利 / 消费金融
- 每个板块同时覆盖 A股、港股、美股核心机会与风险

### Step 3 指数温度计

- 温度计算：`温度 = PE 历史分位 × 100`
- 跟踪范围：A股 20 + 港股 8 + 美股 5，共 33 个指数

### Step 4 标的深度分析

针对持仓标的做 10 维度审视：

1. 基本面
2. 估值
3. 护城河
4. 驱动因素
5. 风险因素
6. 趋势买卖点
7. 长期温度
8. 短期温度
9. 综合评级
10. 操作建议

## 项目结构

```text
AI投资Agent/
├── README.md
├── LICENSE
├── requirements.txt
├── config/
│   ├── indices.json          # 33个跟踪指数配置
│   ├── portfolio.json        # 持仓配置（可替换为自己的组合）
│   └── data_sources.json     # 数据源与检索模板
├── skills/
│   ├── weekly_review.md
│   ├── macro_analysis.md
│   ├── sector_analysis.md
│   ├── temperature_gauge.md
│   └── position_analysis.md
├── prompts/
│   ├── weekly_review.md
│   └── quick_check.md
├── tools/
│   ├── md2docx.py            # Markdown 转 Word（含表格）
│   └── create_excel.py       # 生成温度计与标的分析 Excel
└── output/                   # 默认输出目录（已加入 .gitignore）
```

## 快速开始

### 1) 安装依赖

```bash
pip install -r requirements.txt
```

### 2) 使用提示词执行复盘

- 周度完整复盘：`prompts/weekly_review.md`
- 每日快速检查：`prompts/quick_check.md`

在你的 AI 编程/Agent 工具中引用对应文件即可。

### 3) 本地工具用法

```bash
# Markdown 报告转 Word
python tools/md2docx.py 报告.md 报告.docx 楷体
```

```python
from tools.create_excel import create_position_analysis_excel, create_temperature_excel

create_position_analysis_excel(data, "标的深度分析.xlsx")
create_temperature_excel(data, "指数温度计.xlsx")
```

## 输出结果

完整执行后会在 `output/{日期}/` 生成：

- 宏观分析（详细版 / 简版，MD + DOCX）
- 板块分析（详细版 / 简版，MD + DOCX）
- 指数温度计（MD + DOCX）
- 标的深度分析（XLSX）

## 交易规则（温度区间）

| 温度区间 | 估值状态 | 操作建议 |
|---|---|---|
| 0-20℃ | 严重低估 | 重仓买入 |
| 20-30℃ | 低估 | 分批买入 |
| 30-50℃ | 合理 | 持有观望 |
| 50-70℃ | 合理偏高 | 谨慎持有 |
| 70-90℃ | 高估 | 分批卖出 |
| 90-100℃ | 严重高估 | 清仓离场 |

## Roadmap

- [ ] 增加回测模块（历史温度策略收益对比）
- [ ] 增加自动数据抓取与清洗 pipeline
- [ ] 增加可视化 Dashboard（温度热力图 + 仓位建议）
- [ ] 增加多策略对比（价值 / 动量 / 红利）

## 开源协作

欢迎通过 `Issue` / `Pull Request` 共同完善：

- 新数据源接入
- 新板块分析模板
- 新报告样式与图表能力
- 风控规则优化

## 免责声明

本项目仅用于投资研究与工程实践交流，不构成任何投资建议。投资有风险，决策需独立判断并自担风险。

---

如果这个项目对你有帮助，欢迎 Star 关注更新。
