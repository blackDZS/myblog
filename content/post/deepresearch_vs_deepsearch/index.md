---
title: "DeepResearch, DeepSearch 有什么区别？"
description: 对比 DeepResearch, DeepSearch 有什么区别？
date: 2025-04-02T15:55:07+08:00
categories:
- 杂谈
tags:
- DeepResearch
- DeepSearch
image: deepresearch_search.jpeg
math: 
license: 
hidden: false
comments: true
draft: true
slug: "deepresearch_search"
---

# DeepSearch与DeepResearch：AI搜索与研究工具的深度对比研究
## 引言
随着人工智能技术的快速发展，搜索和研究工具也在不断演进。2025年初，深度搜索(Deep Search)已成为搜索领域的新标准，各主要玩家如谷歌、OpenAI、Perplexity、马斯克的X AI等纷纷推出自己的"Deep Research"或类似产品，抢占这一技术浪潮的先机。本报告将对DeepSearch和DeepResearch进行全面对比分析，探讨它们的设计理念、技术实现、功能特点、应用场景以及实际性能表现。
## 深度搜索技术背景
深度搜索这一概念虽然不算创新，本质上就是我们常说的RAG（检索增强生成）或者多跳问答。但随着Deepseek-r1的发布，它获得了前所未有的关注和发展。就在上周末，百度搜索和腾讯微信搜索都已经把Deepseek-r1整合到他们的搜索引擎里了。AI工程师们意识到，通过把长期的思考和推理过程融入到搜索系统中，能够实现比以往任何时候都更精准、更深入的检索效果[[0](https://zhuanlan.zhihu.com/p/26560000573)]。
### Test-Time Compute概念
在深入了解DeepSearch和DeepResearch之前，我们需要先搞明白一个关键概念：Test-Time Compute（测试时计算）。这个概念最早是OpenAI在2024年9月发布的o1-preview模型中提到的，它的核心思想是，与其在模型的预训练和微调阶段投入大量资源，不如在推理阶段集中精力进行高级处理[[8](https://zhuanlan.zhihu.com/p/31981882109)]。
Test-Time Compute（TTC）是指当一个AI模型在训练完成后，实际执行任务或生成回应时所需要的计算资源和时间。简单来说，就是模型在实际使用时的计算需求，而不是在训练阶段的需求。TTC的几个关键点包括：
1. **推理过程**：当你向模型输入问题或提示时，它会处理输入并生成回应。这个处理的计算成本就叫做Test-Time Compute。
2. **推理阶段的扩展**：一些先进的AI模型，比如OpenAI的o1系列，在推理过程中会根据需要动态增加思考时间。也就是说，它们可以在面对复杂问题时花更多时间思考，从而提高准确性，但也需要消耗更多的计算资源。
通过在推理阶段投入更多计算资源，o1模型能够进行更深入的推理，从而提供更准确、更有深度的回答。o1使用的是Chain-of-Thought方法，一步一步地思考，最终得出一个结论。因此，o1模型在解决复杂问题时非常有优势[[8](https://zhuanlan.zhihu.com/p/31981882109)]。
## DeepSearch与DeepResearch的基本概念
### DeepSearch
DeepSearch可以理解为一种"高级的网页搜索代理"。传统的网页搜索代理通常只是用已有的搜索工具来收集信息，然后生成答案，它基本上只进行一次搜索。而DeepSearch则在搜索过程中加入了"推理"这一环节。
简而言之，DeepSearch的工作原理是不断地进行"搜索 → 推理 → 搜索 → 推理…"的循环，直到找到最合适的答案，或者达到Token限制为止。下图展示了DeepSearch和传统网页搜索代理的处理流程对比。DeepSearch的最大特点就是它通过多次搜索和推理的过程，最终得出更准确的答案[[8](https://zhuanlan.zhihu.com/p/31981882109)]。
DeepSearch由Jina.ai结合DeepSeek打造，通过思维链，能够提供比传统搜索引擎更精准、简洁的搜索结果。同时，他们还提供了功能完善的API，开发者可以轻松将AI搜索能力集成到自己的应用中。普通用户可免费使用搜索功能，API调用每百万Token仅需0.02[[2](https://www.caprompt.com/a/7197)]。
DeepSearch的核心理念是在搜索、阅读和推理三个环节中不断循环往复，直到找到最优答案。搜索环节利用搜索引擎探索互联网，而阅读环节则专注于对特定网页进行深入分析，最后通过推理评估当前状态，看看是否需要将原始问题拆解为更小的子问题，或者尝试其他搜索策略。可以通过多次搜索和推理的循环，最终得出更准确的答案[[0](https://zhuanlan.zhihu.com/p/26560000573)]。
### DeepResearch
DeepResearch可以看作是DeepSearch的一个典型应用案例。它的主要目标是"自动生成研究报告"。用户只需要提供一个主题，DeepResearch就会首先规划出报告的大致章节结构。接着，针对每个章节，DeepResearch会利用DeepSearch进行信息搜索和推理。最后，借助大语言模型（LLM）整理和整合这些信息，最终生成完整的研究报告[[8](https://zhuanlan.zhihu.com/p/31981882109)]。
DeepResearch是一个利用推理能力综合大量网上在线信息并为你完成多步骤研究任务的智能体（agent），它能在几十分钟内完成人类需要数小时才能完成的工作。DeepResearch背后是一个定制化的o3模型，该模型针对网页浏览和Python数据分析进行了优化，能够利用推理能力搜索、解读和分析互联网上的大量文本、图像和PDF文件来生成研究报告[[3](https://zhuanlan.zhihu.com/p/21118509625)]。
在一系列针对现实问题的公开评估测试中，DeepResearch达到了SOTA（state-of-the-art）水平，在Humanity's Last Exam上准确率为26.6%，超过DeepSeek-R1（9.4%）和o3-mini high（13.0%），在GAIA上达到了72.57，超过之前最好的方法（63.64）[[3](https://zhuanlan.zhihu.com/p/21118509625)]。
### 两者的区别与联系
简单来说，DeepSearch是一种即将成为主流的全新AI搜索方法，而DeepResearch则是基于DeepSearch的一种典型应用。DeepResearch可以理解为DeepSearch的一种结构化的输出方式，一个最显著的特点就是DeepResearch会生成结构标题这些非常清晰的报告文档[[35](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=HRQ390uQZmZaftD1ZQPBhxfD4WhK5HPNWs*Q73H1NVC8BZEiVpMUpxj9ggJGf47-5fctJ97QaG5YRkuf6ZrlgMsZ8DYRQ2L3D4DJ0UH43WQYyDKSChuA8kzF00jlL1Aq&new=1)]。
DeepSearch和DeepResearch的主要区别在于：
1. **功能定位**：
   - DeepSearch更偏向于"检索类"，重点在于多次搜索和推理的过程
   - DeepResearch更偏向于"研究类"，强调生成结构化的研究报告
2. **输出形式**：
   - DeepSearch: 输出形式较为灵活，更关注搜索和推理过程
   - DeepResearch: 强调生成结构化、有清晰章节的研究报告或学术论文
3. **技术实现**：
   - 两者技术路线相似，都使用推理模型结合联网搜索和ReAct机制
   - DeepResearch在DeepSearch基础上增加了结构化报告生成能力
## DeepSearch的主要实现方案
### Jina DeepSearch
Jina DeepSearch是基于推理大模型的深度搜索开源项目，与传统搜索相比，Jina DeepSearch可在搜索时进行不断地推理、迭代、探索、读取和归纳总结，直到找到最优答案为止[[36](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=3m6u9M8pD749iLKZTP-stYBJRsVc5IC1xX4oLL4HpaKz3iTpVlq2X9Q0Ic6CFQm1uN8DuV*100hAFfpqI73sRNRIBfR9TdPDAqBBrZbA6CxmR-uf52pjuTBhMYMRkMZV&new=1)]。
使用链接：https://search.jina.ai/。整个输出内容可以分为三部分：思考部分、内容部分和参考信息。JINA不愧是专门做检索和网页解析的，拥有最多检索结果。但是思考内容中英夹杂，不知道是否提示词的原因导致的。而且实际输出的内容并不丰富，与其宣传的效果好像有所出入[[36](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=3m6u9M8pD749iLKZTP-stYBJRsVc5IC1xX4oLL4HpaKz3iTpVlq2X9Q0Ic6CFQm1uN8DuV*100hAFfpqI73sRNRIBfR9TdPDAqBBrZbA6CxmR-uf52pjuTBhMYMRkMZV&new=1)]。
### deep-searcher
deep-searcher是一个开源项目，项目地址：https://github.com/zilliztech/deep-searcher。该工具的特点包括：
- **向量数据库**：支持Milvus等各类型向量数据库，允许数据分区以实现高效的检索
- **多种类型的向量模型**：兼容多种嵌入模型
- **多种大模型**：支持DeepSeek、OpenAI等大模型
- **文档加载器**：支持本地文件加载和网页内容解析
基本流程是：
1. 将原始问题进行拆解，分成多个子问题
2. 子问题分别进行检索，得到对应的答案
3. 子问题和答案进行整合，由模型生成下一轮子问题
4. 达到指定检索轮数后，汇总最终的答案[[36](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=3m6u9M8pD749iLKZTP-stYBJRsVc5IC1xX4oLL4HpaKz3iTpVlq2X9Q0Ic6CFQm1uN8DuV*100hAFfpqI73sRNRIBfR9TdPDAqBBrZbA6CxmR-uf52pjuTBhMYMRkMZV&new=1)]
### OpenDeepResearcher
OpenDeepResearcher是另一个开源项目，项目地址：https://github.com/mshumer/OpenDeepResearcher。该工具的特性包括：
- **迭代搜索**：自动拆分问题，并生成多个关键词迭代搜索
- **异步处理**：搜索、网页抓取、评估及上下文等均可并发执行
- **重复内容过滤**：每一轮搜索中对链接进行聚合和去重
工作流程如下：
1. 用户输入一个研究主题后，LLM会生成最多四个不同的搜索关键词
2. 每个搜索关键词都通过调用SERPAPI接口进行搜索
3. 将所有获取到的链接进行聚合和去重处理
4. 对每个唯一链接调用JINA网页内容解析接口，利用LLM评估网页的有用性，如果页面被判定为有效，则提取相关文本内容
5. 汇总所有信息，判断是否需要进一步生成新的搜索关键词。如果需要，则生成新的查询；否则，循环终止
6. 将所有收集到的上下文信息整合后，由LLM生成一份全面、详尽的报告[[36](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=3m6u9M8pD749iLKZTP-stYBJRsVc5IC1xX4oLL4HpaKz3iTpVlq2X9Q0Ic6CFQm1uN8DuV*100hAFfpqI73sRNRIBfR9TdPDAqBBrZbA6CxmR-uf52pjuTBhMYMRkMZV&new=1)]
### deep-research
deep-research是另一个开源项目，项目地址：https://github.com/dzhng/deep-research。该工具的特性包括：
- **迭代搜索**：通过反复生成搜索查询、处理结果并根据发现深入研究，进行深度研究
- **深度与广度可控**：可配置的参数来控制搜索的广度和深度
- **智能跟进**：生成后续问题以更好地理解研究需求
- **并发处理**：同时处理多个搜索和结果处理，以提高效率
工作流程如下：
1. 获取用户的查询和研究参数（广度与深度）并生成SERP查询
2. 处理搜索结果，提取关键内容用于生成后续研究方向
3. 如果深度>0，则根据新的研究方向继续探索
4. 将所有上下文汇总成一份全面的Markdown报告[[36](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=3m6u9M8pD749iLKZTP-stYBJRsVc5IC1xX4oLL4HpaKz3iTpVlq2X9Q0Ic6CFQm1uN8DuV*100hAFfpqI73sRNRIBfR9TdPDAqBBrZbA6CxmR-uf52pjuTBhMYMRkMZV&new=1)]
### gpt-researcher
gpt-researcher是一个比deep research发布更早的开源项目，项目地址：https://github.com/assafelovic/gpt-researcher。该工具的特性包括：
- **深度内容**：自动生成深度报告，一般不少于2000字
- **参考来源**：提供多参考来源，确保回答内容客观并且有依据
- **检索来源**：支持网页搜索和解析
- **输出格式**：支持多格式报告输出（pdf、word、markdown等）
工作流程如下：
1. 根据特定的输入创建agent
2. 生成多个查询子问题
3. 启动网络搜集信息
4. 整理归纳并标注来源
5. 把结果进行汇总，生成最终的报告[[36](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=3m6u9M8pD749iLKZTP-stYBJRsVc5IC1xX4oLL4HpaKz3iTpVlq2X9Q0Ic6CFQm1uN8DuV*100hAFfpqI73sRNRIBfR9TdPDAqBBrZbA6CxmR-uf52pjuTBhMYMRkMZV&new=1)]
## DeepResearch的主要实现方案
### OpenAI Deep Research
OpenAI Deep Research是基于即将发布的o3模型（据说是专为研究优化的版本）。它能通过多步推理，从网络上抓取数百个实时来源，综合分析后给出详细回答。设计目标是解决复杂问题，像个"学术助手"，适合需要深度挖掘、跨领域综合的场景[[37](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=sUHW29cKOb9HNh4F7Zs30-vsjd-YeT0ZuHJDC3Hj7XpyapWJgk2itfqIeLQZ2fK43XhDOnkGz9LuDOTis8p88q-1-Ayi5tVnvJvlQ1YXjxzn6wTn6HYjWFALkm5Smv7M&new=1)]。
Deep Research的特点包括：
- **多步推理**：不仅搜信息，还会自己"思考"怎么串联
- **实时性**：接入最新网页数据
- **综合性**：擅长把零散信息缝合成完整答案
### Grok 3 DeepSearch
Grok 3 DeepSearch是xAI为Grok 3打造的研究工具，结合网页搜索和X平台的实时讨论，能快速浏览、验证来源，并生成简洁回答。它与X生态深度绑定，天然擅长抓取社交媒体的动态信息[[37](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=sUHW29cKOb9HNh4F7Zs30-vsjd-YeT0ZuHJDC3Hj7XpyapWJgk2itfqIeLQZ2fK43XhDOnkGz9LuDOTis8p88q-1-Ayi5tVnvJvlQ1YXjxzn6wTn6HYjWFALkm5Smv7M&new=1)]。
DeepSearch的特点包括：
- **X平台加持**：能抓取实时帖子和用户观点
- **简洁高效**：输出更短、更聚焦
- **透明推理**：会展示部分"思考过程"
### 秘塔的先想后搜
秘塔的先想后搜是国内最好的DeepSearch实现之一。当用户要求写一篇DeepSearch和DeepResearch的对比报告时，它会列出大纲章节（图右边的"步骤"），然后每一个步骤逐个进行推理，最后把东西收集完、整理完之后，就会整理成答案生成出来[[35](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=HRQ390uQZmZaftD1ZQPBhxfD4WhK5HPNWs*Q73H1NVC8BZEiVpMUpxj9ggJGf47-5fctJ97QaG5YRkuf6ZrlgMsZ8DYRQ2L3D4DJ0UH43WQYyDKSChuA8kzF00jlL1Aq&new=1)]。
秘塔的优点是能生成长而详细的报告，但缺点是部分参考链接质量不高，影响报告整体质量[[35](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=HRQ390uQZmZaftD1ZQPBhxfD4WhK5HPNWs*Q73H1NVC8BZEiVpMUpxj9ggJGf47-5fctJ97QaG5YRkuf6ZrlgMsZ8DYRQ2L3D4DJ0UH43WQYyDKSChuA8kzF00jlL1Aq&new=1)]。
### Perplexity的DeepResearch
Perplexity是最早做AI搜索的公司，也推出了类似Deep Research的服务，支持免费使用。但它看不到中间的思考过程，并且问题没有进行改写，从结果来看不知道与普通的联网搜索有什么区别[[36](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=3m6u9M8pD749iLKZTP-stYBJRsVc5IC1xX4oLL4HpaKz3iTpVlq2X9Q0Ic6CFQm1uN8DuV*100hAFfpqI73sRNRIBfR9TdPDAqBBrZbA6CxmR-uf52pjuTBhMYMRkMZV&new=1)]。
Perplexity的DeepResearch优点是免费使用，但缺点是报告又短质量又一般，主要问题还是上下文窗口不足[[35](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=HRQ390uQZmZaftD1ZQPBhxfD4WhK5HPNWs*Q73H1NVC8BZEiVpMUpxj9ggJGf47-5fctJ97QaG5YRkuf6ZrlgMsZ8DYRQ2L3D4DJ0UH43WQYyDKSChuA8kzF00jlL1Aq&new=1)]。
### AutoGLM沉思版
AutoGLM沉思版是智谱发布的DeepResearch产品，目前已经开放内测，完全免费且不限量。它可以简单地理解为DeepResearch和AutoGLM的结合[[38](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=TlXzSjW8wts0J-NDG3NXIywQW0GYEu1sDPEvRGSsES04WECZrql6-qt0Qzehjke88TtM-cwVAw62fX2*4dE4LFULjflJWT*oF4tgVDlqQ*T5b-dBcEE5Ch0ru6FlxlDQ&new=1)]。
AutoGLM沉思版的创新点包括：
- **数据孤岛突破**：通过AutoGLM打开小红书、知乎、巨潮、知网等数据孤岛，自主浏览和抓取信息
- **多平台支持**：不仅能搜索网页，还能通过AutoGLM打开浏览器，自主访问小红书、知乎、微信公众号等平台获取信息
- **图像理解能力**：能够理解图像中的文字信息
- **模型底子强大**：基于GLM-Z1-Air微调来的GLM-Z1-Rumination，能搞非常长的使用工具+推理任务
AutoGLM沉思版的缺点包括：
- **产品体验粗糙**：智谱的C端产品体验做的是太粗糙，比如需要电脑客户端运行，占用浏览器窗口，不能后台运行等
- **报告质量差距**：虽然模型能力很强，但报告质量与OpenAI的DeepResearch仍有差距
## DeepSearch与DeepResearch的性能对比
### ChatGPT Deep Research与Grok 3 DeepSearch对比
ChatGPT的Deep Research和Grok 3的DeepSearch是AI界两大研究利器，两者都能进行实时搜索与分析，但各自的设计目标、适用场景和优缺点却大有不同[[37](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=sUHW29cKOb9HNh4F7Zs30-vsjd-YeT0ZuHJDC3Hj7XpyapWJgk2itfqIeLQZ2fK43XhDOnkGz9LuDOTis8p88q-1-Ayi5tVnvJvlQ1YXjxzn6wTn6HYjWFALkm5Smv7M&new=1)]。
#### 功能本质与设计目标的区别
**ChatGPT Deep Research**：
- **本质**：多步推理，综合性研究
- **设计目标**：解决复杂问题，像个"学术助手"，适合需要深度挖掘、跨领域综合的场景
- **核心特点**：多步推理、实时性、综合性
**Grok 3 DeepSearch**：
- **本质**：实时X数据驱动，快速洞察
- **设计目标**：强调速度和实时性，像个"热点侦探"，适合追踪当前事件、舆论趋势或快速验证事实
- **核心特点**：X平台加持、简洁高效、透明推理
#### 使用体验上的差异
**数据来源与范围**：
- Deep Research：覆盖广，依赖整个网络，能从学术文章到新闻无所不包，但因为数据量大，偶尔会夹杂低质量来源，需用户自己过滤
- DeepSearch：强在X平台的实时性，能捕捉最新的用户讨论和热点，但范围偏窄，可能错过非社交媒体的专业内容
**回答风格**：
- Deep Research：输出偏长篇大论，像学术论文，适合需要完整逻辑链的场景，但有时会显得啰嗦，主次不分
- DeepSearch：回答简洁直接，像新闻摘要，适合快节奏需求，不过深度不够，复杂问题可能只摸到表面
**速度与效率**：
- Deep Research：因为多步推理和综合分析，处理时间稍长，尤其面对超复杂问题时，可能要等几秒甚至更久
- DeepSearch：速度是王牌，依托X的即时性和Grok 3的强大算力，反应快到飞起，基本秒回
#### 优缺点对比
**ChatGPT Deep Research**：
- **优点**：深度挖掘强、广度覆盖、逻辑清晰
- **缺点**：速度偏慢、信息过载、可能有偏见、门槛高（只对Pro用户开放，月费200刀）
**Grok 3 DeepSearch**：
- **优点**：超快响应、实时性无敌、简洁实用、生态便利
- **缺点**：深度有限、数据偏向、视野较窄、订阅限制（只对X Premium+用户开放，月费30刀）
#### 适用场景对比
**选Deep Research的时候**：
- 需要写论文、做市场分析、研究长期趋势时，它是好帮手
- 适合不急着要结果、追求全面性的用户
**选DeepSearch的时候**：
- 想快速了解热点或验证某个传言的真假时，它是首选
- 适合时间紧、任务急、或者本来就在X上活跃的用户
### Grok 3与DeepSeek的表现对比
Grok 3在刷榜成绩上表现不俗。准确地说，Grok 3是一个系列，不只是某一个模型。轻量版本Grok 3 mini可以更快地回答问题，但会牺牲一些准确性。在数理编程上，Grok 3都大幅超过Gemini-2 Pro、DeepSeek-V3、Claude 3.5 Sonnet和GPT-4o。而这些被用来对比的模型的性能，与轻量版本Grok-3 mini相近[[39](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1)]。
在大模型竞技场Chatbot Arena（LMSYS）中，早期Grok-3版本的得分取得了第一，达到1402分（有史以来第一个），超过了包括DeepSeek-R1在内的所有其他模型[[39](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1)]。
马斯克直言：Grok 3比Grok 2"好10倍"！网友们也迫不及待地开始整活了[[39](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1)]。
#### 意外发现：中文写作高手
最让人意外的是，从刷榜成绩来看，明明是个优秀理科生，偏被中文网友发现中文写作水平真高！一位科技博主让Grok 3写了一篇《我的故乡回忆》，直接让人看感动了！"海就像村里的钟......日子就得跟着海走。"多好的句子啊！[[39](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1)]。
DeepSeek也很擅长日常细节，这些细节加起来并没有产生一加一大于二的效应，不如Grok 3的深刻，情感触动也不那么明显[[39](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1)]。
#### Think模式：理科高手
作为一个数理编程的强者，网友们分享最多的是Grok3强大的代码能力，简直是游戏开发者的福音。比如，用python编写一个在正方形内弹跳的黄色小球的脚本，正确处理碰撞，使正方形缓慢旋转[[39](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1)]。
网友让DeepSearch帮忙用p5.js复刻《Flappy Bird》小游戏，它先帮忙从网上找好了游戏素材和图片。然后，在同一个聊天窗口里启动Think模式，AI就自动把完整的游戏代码给写出来了。结果，Run一次就成功[[39](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1)]。
#### DeepSearch模式：挑战OpenAI
不过，对标OpenAI"深度研究"的DeepSearch，它明显不如前者。Andrzej Karpathy的评价是：优于Perplexity的类似功能，弱于：OpenAI近期发布的"深度研究"工具[[39](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1)]。
作为一个AI研究助手，搜索范围要广、尽量全，而且来源是真实、可靠的。如果具有洞察力，那更好。而AK发现了幻觉问题，有时会编造根本不存在的网页链接，也会对事实做出错误陈述，数据统计上也存在问题。其他网友也发现了类似问题[[39](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1)]。
除了幻觉问题，在信息搜寻力度上，不如Google Deep Research全面，分析信息时，洞察力也不如OpenAI的Deep Research，"还处在早期阶段"[[39](https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1)]。
## DeepResearch的实际应用场景
### 科研领域
DeepSeek+DeepResearch能够通过编写爬虫代码、访问数据库、读取文件、调用API等方式，采集社交媒体数据、数据库内容、文本数据、接口数据等。研究人员可以轻松获取大量数据，无需手动搜索和整理，大大提高了工作效率[[11](https://zhuanlan.zhihu.com/p/24056928507)]。
该工具支持数据清洗、数据集成、数据变换、特征工程等操作，能够实现数据纠错、数据整合、格式转换、特征提取等功能。对于科研人员来说，这些功能可以帮助他们快速处理和分析数据，发现隐藏的规律和趋势[[11](https://zhuanlan.zhihu.com/p/24056928507)]。
DeepSeek+DeepResearch能够将数据转化为统计图、热力图、网络关系图、词云、树形图等多种形式的可视化图表。这些图表不仅直观地展示了数据中的模式和趋势，还可以帮助研究人员更好地理解和解释研究结果[[11](https://zhuanlan.zhihu.com/p/24056928507)]。
DeepSeek+DeepResearch集成了多个先进的AI模型，如Claude 3.5 sonnet、DeepSeek R1、Kimi k1.5和Open AI o3 mini。这些模型各有特点，能够处理不同类型的任务[[11](https://zhuanlan.zhihu.com/p/24056928507)]。
在科研领域，数据采集和分析是基础工作。DeepSeek+DeepResearch能够高效地完成这些任务。在爬虫数据采集任务中，DeepSeek R1能够提取所有网址并进行筛选、去重，撰写的代码运行后完成数据爬虫任务，所获取数据准确，少量数据有所遗漏[[11](https://zhuanlan.zhihu.com/p/24056928507)]。
对于科研人员来说，整理和分析大量文献和数据文件是日常工作的一部分。DeepSeek+DeepResearch能够详细全面地提取文件中的数据，并整理成可视化数据表格[[11](https://zhuanlan.zhihu.com/p/24056928507)]。
在处理中、长文本方面，DeepSeek+DeepResearch表现出色。对于一般文本，DeepSeek R1能够详细全面地提取文本数据，并集成可视化表格，但受大样本或模型稳定性影响，输出表格末尾缺失，需要重复尝试生成。而对于长文本，Kimi k1.5能够高效准确地提取文本中数据，较一般长度文本所集成数据维度反而更加全面[[11](https://zhuanlan.zhihu.com/p/24056928507)]。
在数据分析方面，DeepSeek+DeepResearch同样表现出色。在分析名单数据文件时，DeepSeek R1能够详细展示长思维链，精准提取关键指标"幸存率"，分析多个因素特征对幸存率的影响，结合历史背景对数据及规律进行验证，并敏锐察觉数据异常，提出了异常处理建议[[11](https://zhuanlan.zhihu.com/p/24056928507)]。
### 商业应用
DeepResearch在商业应用中也显示出强大的能力。例如，它可以用于市场分析、竞争情报收集、消费者行为研究等领域。用户只需提供一个研究主题，DeepResearch会首先规划出报告的大致章节结构，然后针对每个章节进行信息搜索和推理，最后生成完整的研究报告[[8](https://zhuanlan.zhihu.com/p/31981882109)]。
## DeepSearch与DeepResearch的成本效益分析
### 商业产品成本
**OpenAI Deep Research**：
- 价格：目前只对ChatGPT Pro用户开放，每月200美元
- 优点：报告质量高、幻觉少
- 缺点：价格昂贵，仅适合高频企业用户
**Grok 3 DeepSearch**：
- 价格：目前只对X Premium+用户开放，月费30美元
- 优点：速度快、实时性强
- 缺点：深度有限、数据偏向X平台
**秘塔的先想后搜**：
- 价格：未明确提及
- 优点：能生成长而详细的报告
- 缺点：部分参考链接质量不高
**Perplexity的DeepResearch**：
- 价格：免费
- 优点：免费使用
- 缺点：报告质量一般
### 开源产品成本
**Jina DeepSearch**：
- 价格：普通用户可免费使用搜索功能，API调用每百万Token仅需0.02
- 优点：开源、成本低
- 缺点：实际输出的内容并不丰富
**gpt-researcher**：
- 价格：开源、免费
- 优点：输出内容最多，符合学术论文结构，参考信息丰富
- 缺点：未明确提及
**deep-research**：
- 价格：开源、免费
- 优点：开源、免费
- 缺点：测试中经常卡住，提示解析JSON失败
**AutoGLM沉思版**：
- 价格：完全免费，不限量
- 优点：免费、不限量
- 缺点：产品体验粗糙、报告质量与OpenAI有差距
## 深度研究的未来发展趋势
随着AI技术的不断发展，深度研究工具也在不断演进。以下是未来可能的发展趋势：
1. **模型能力提升**：随着大模型技术的进步，深度研究工具将能够处理更复杂的问题，生成更准确、更深入的研究报告。
2. **多模态融合**：未来的深度研究工具将能够同时处理文本、图像、视频等多种模态的数据，提供更全面的研究结果。
3. **实时性增强**：随着技术的发展，深度研究工具的响应时间将不断缩短，实现实时或准实时的研究能力。
4. **个性化定制**：未来的深度研究工具将能够根据用户的需求和偏好进行个性化定制，提供更加符合用户期望的研究结果。
5. **跨语言能力**：随着全球化的深入，深度研究工具将能够支持更多的语言，实现跨语言的研究能力。
6. **伦理与隐私保护**：未来的深度研究工具将更加注重伦理和隐私保护，确保研究过程和结果的合法性和伦理性。
## 结论与建议
### 主要结论
1. **功能定位差异**：DeepSearch更偏向于"检索类"，重点在于多次搜索和推理的过程；DeepResearch更偏向于"研究类"，强调生成结构化的研究报告。
2. **技术实现相似**：两者技术路线相似，都使用推理模型结合联网搜索和ReAct机制，但DeepResearch在DeepSearch基础上增加了结构化报告生成能力。
3. **性能表现差异**：OpenAI的Deep Research在报告质量和分析深度上领先，但价格昂贵；Grok 3的DeepSearch在速度和实时性上表现突出，但深度有限；开源实现如Jina DeepSearch、gpt-researcher等各有优势，但稳定性可能不如商业产品。
4. **应用场景明确**：DeepSearch适合需要多次搜索和推理才能回答的复杂问题；DeepResearch适合需要生成完整结构化报告的研究场景。
### 建议
1. **选择适合需求的工具**：
   - 如果需要深度挖掘和综合性研究，且预算充足，可以选择OpenAI的Deep Research
   - 如果需要快速了解热点和验证事实，可以选择Grok 3的DeepSearch
   - 如果预算有限，可以考虑开源实现如Jina DeepSearch或gpt-researcher
2. **结合使用**：有条件的情况下，可以结合使用DeepSearch和DeepResearch，前者用于深度挖掘，后者用于生成结构化报告。
3. **关注国产产品**：国产AutoGLM沉思版完全免费且不限量，尽管产品体验粗糙，但为国内用户提供了新的选择。
4. **持续关注技术发展**：随着AI技术的不断发展，深度研究工具也在不断演进，建议持续关注最新技术和产品。
## 参考文献
[0] DeepSearch 与DeepResearch 的设计和实现 - 知乎专栏. https://zhuanlan.zhihu.com/p/26560000573. 
[2] Jina.ai 结合DeepSeek 打造的智能搜索工具Deep Search - 创艺提示符. https://www.caprompt.com/a/7197. 
[3] OpenAI发布了deep research：用于研究任务的智能体！ - 知乎专栏. https://zhuanlan.zhihu.com/p/21118509625. 
[8] 解锁的搜索与推理新模式：DeepSearch与DeepResearch的区别. https://zhuanlan.zhihu.com/p/31981882109. 
[11] DeepSeek+DeepResearch——让科研像聊天一样简单 - 知乎专栏. https://zhuanlan.zhihu.com/p/24056928507. 
[35] DeepSearch和DeepResearch的区别. https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=HRQ390uQZmZaftD1ZQPBhxfD4WhK5HPNWs*Q73H1NVC8BZEiVpMUpxj9ggJGf47-5fctJ97QaG5YRkuf6ZrlgMsZ8DYRQ2L3D4DJ0UH43WQYyDKSChuA8kzF00jlL1Aq&new=1. 
[36] Deep Research（深度研究）的原理与解析|附多个产品效果对比. https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=3m6u9M8pD749iLKZTP-stYBJRsVc5IC1xX4oLL4HpaKz3iTpVlq2X9Q0Ic6CFQm1uN8DuV*100hAFfpqI73sRNRIBfR9TdPDAqBBrZbA6CxmR-uf52pjuTBhMYMRkMZV&new=1. 
[37] ChatGPT的Deep Research与Grok 3的DeepSearch功能深度对比：区别、优缺点全解析. https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=sUHW29cKOb9HNh4F7Zs30-vsjd-YeT0ZuHJDC3Hj7XpyapWJgk2itfqIeLQZ2fK43XhDOnkGz9LuDOTis8p88q-1-Ayi5tVnvJvlQ1YXjxzn6wTn6HYjWFALkm5Smv7M&new=1. 
[38] 智谱发布AutoGLM沉思版，国产DeepResearch来了，人人皆免费. https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=TlXzSjW8wts0J-NDG3NXIywQW0GYEu1sDPEvRGSsES04WECZrql6-qt0Qzehjke88TtM-cwVAw62fX2*4dE4LFULjflJWT*oF4tgVDlqQ*T5b-dBcEE5Ch0ru6FlxlDQ&new=1. 
[39] 地表最强Grok3突袭免费体验，网友实测对比DeepSeek，发现中文彩蛋. https://mp.weixin.qq.com/s?src=11&timestamp=1743580989&ver=5905&signature=8792qZjt8LSXuX18R13O0O5t-dv2wvf2ENS1KQzZKLq*1APJqYQ9W1Chk7vml70FOxbyBoAEbevyZXtgZY0eoeo2VjYFP0sCUF6f5bXlekyrj8VUr5JMjbf0PCa7CBLS&new=1. 

