# Large Language Models (LLM) - Comprehensive Principles and Training Guide

A comprehensive short course covering the principles and training methods of Large Language Models, including Pre-training, Supervised Fine-tuning (SFT), Reinforcement Learning from Human Feedback (RLHF), and Reinforcement Learning from Verifiable Rewards (RLVR).

🌐 **Live Slide**: [https://noncollapse.github.io/LLM_short_course/](https://noncollapse.github.io/LLM_short_course/)

## ✨ Features

- **Comprehensive Coverage**: From LLM foundations to advanced training techniques
- **Visual Learning**: Rich diagrams and illustrations for complex concepts
- **Responsive Design**: Optimized for both desktop and mobile viewing

## 📚 Content Overview

1. **LLM Foundations**
   - What are Large Language Models
   - Tokenization and embeddings
   - Transformer architecture

2. **Pre-training**
   - Language modeling objectives
   - Training data and scale

3. **Supervised Fine-tuning (SFT)**
   - Task-specific adaptation
   - SFT vs Pre-training comparison

4. **Reinforcement Learning from Human Feedback (RLHF)**
   - Why RLHF?
   - Reward modeling
   - InstructGPT methodology
   - Human preference learning
   - PPO (Proximal Policy Optimization)
   - DPO (Direct Preference Optimization)

5. **Reinforcement Learning from Verifiable Rewards (RLVR)**
   - Why RLVR?
   - GRPO (Group Relative Policy Optimization)
   - GxPO variants overview

6. **AI-Generated Content Detection**
   - AI-generated text detection
   - AI-generated image detection
   - AI-generated audio detection
   - AI-generated video detection

7. **Advanced Topics**
   - Challenges and future directions
   - Safety and evaluation
   - Open source ecosystem

## 🚀 Quick Start

### 🌐 Live Slides

Visit the live presentation: [https://noncollapse.github.io/LLM_short_course/](https://noncollapse.github.io/LLM_short_course/)

### 🔧 Want to Contribute or Deploy Locally?

#### Prerequisites

- Node.js >= 14
- npm or yarn

#### Installation

```bash
npm install
```

#### Local Development

Start the development server:

```bash
npm run dev
```

Then open [http://localhost:3030](http://localhost:3030) in your browser.

#### 🎨 Customization

Edit `slides.md` to modify the presentation content. The file uses Markdown with extended Slidev syntax for slides, layouts, and components.

#### Build for Production

Generate static website:

```bash
npm run build
```

The built files will be in the `dist/` directory.

#### 🚢 Deploy with GitHub Pages

1. Go to Repository Settings → Pages
2. Set Source to: **GitHub Actions**
3. The workflow in `.github/workflows/deploy.yml` will automatically help you to handle deployment



## 📁 Project Structure

```
llm_short_course/
├── slides.md              # Main presentation content
├── figs/                  # Image assets
│   ├── InstructGPT.png
│   ├── grpo.png
│   ├── DPO.png
│   └── ...
├── package.json           # Dependencies and scripts
├── .github/
│   └── workflows/
│       └── deploy.yml     # GitHub Actions deployment
└── README.md
```


## 👤 Author

**Kai Ye**

- 🏠 Homepage: [https://noncollapse.github.io/](https://noncollapse.github.io/)
- 🎓 Google Scholar: [Profile](https://scholar.google.com/citations?user=a7G8Yo8AAAAJ)
- 🤗 Hugging Face: [@noncollapse](https://huggingface.co/Kyleyee)

## 🛠️ Technology Stack

- **[Slidev](https://sli.dev/)** - Presentation framework powered by Vue.js and Vite
- **[Vue.js](https://vuejs.org/)** - Progressive JavaScript framework
- **[Vite](https://vitejs.dev/)** - Next-generation frontend tooling
- **[UnoCSS](https://unocss.dev/)** - Instant on-demand atomic CSS engine
- **[KaTeX](https://katex.org/)** - Fast math typesetting for the web
- **[Shiki](https://shiki.matsu.io/)** - Beautiful syntax highlighter

## 📖 Learn More

- [Slidev Documentation](https://sli.dev/)
- [Vue.js Guide](https://vuejs.org/guide/)
- [Markdown Guide](https://www.markdownguide.org/)

## 📝 License

This project is for educational purposes.

## 🙏 Acknowledgments

Special thanks to the open source community and all the researchers whose work is referenced in this presentation.