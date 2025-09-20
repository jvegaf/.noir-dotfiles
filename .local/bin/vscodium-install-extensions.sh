#!/bin/bash

# VS codium Extension Installation Script
# Replicates your comprehensive Neovim setup in VS Code

echo "🚀 Installing VS codium extensions to replicate your Neovim setup..."

# Core Vim functionality
echo "📝 Installing Vim extension..."
codium --install-extension vscodevim.vim

# File Tree and Navigation
echo "📁 Installing file navigation extensions..."
codium --install-extension vscode-icons-team.vscode-icons
codium --install-extension christian-kohler.path-intellisense

# Fuzzy Finding and Search (Telescope replacements)
echo "🔍 Installing search and fuzzy finding extensions..."
codium --install-extension tomrijndorp.find-it-faster
codium --install-extension alefragnani.project-manager

# Git Integration
echo "🌳 Installing Git extensions..."
codium --install-extension mhutchie.git-graph
codium --install-extension donjayamanne.git-extension-pack
codium --install-extension codezombiech.gitignore
codium --install-extension alefragnani.git-project-manager

# LSP and Language Support
echo "🔧 Installing language support extensions..."
codium --install-extension ms-vscode.vscode-typescript-next
codium --install-extension bradlc.vscode-tailwindcss
codium --install-extension ms-python.python
codium --install-extension ms-python.pylint
codium --install-extension ms-python.black-formatter
codium --install-extension ms-vscode.cpptools
codium --install-extension ms-vscode.cmake-tools
codium --install-extension vscjava.vscode-java-pack

# Debugging
echo "🐛 Installing debugging extensions..."
codium --install-extension ms-vscode.vscode-js-debug
codium --install-extension ms-python.debugpy
codium --install-extension vadimcn.vscode-lldb

# AI and codium Completion
echo "🤖 Installing AI and completion extensions..."
# codium --install-extension github.copilot
# codium --install-extension github.copilot-chat
# codium --install-extension visualstudioexptteam.vscodeintellicode

# Formatting and Linting
echo "✨ Installing formatting and linting extensions..."
codium --install-extension esbenp.prettier-vscode
codium --install-extension ms-vscode.vscode-eslint
codium --install-extension charliermarsh.ruff
codium --install-extension ms-python.autopep8
codium --install-extension ms-python.isort

# Better Syntax Highlighting
echo "🎨 Installing syntax highlighting extensions..."
codium --install-extension jeff-hykin.better-cpp-syntax

# UI Enhancements and Themes
echo "🎨 Installing themes and UI enhancements..."
codium --install-extension pkief.material-icon-theme
codium --install-extension miguelsolorio.fluent-icons
codium --install-extension zhuangtongfa.material-theme
codium --install-extension github.github-vscode-theme
codium --install-extension dracula-theme.theme-dracula
codium --install-extension monokai.theme-monokai-pro-vscode
codium --install-extension sainnhe.gruvbox-material
codium --install-extension enkia.tokyo-night

# codium Actions and Refactoring
echo "🔄 Installing refactoring extensions..."
codium --install-extension p42ai.refactor
codium --install-extension usernamehw.errorlens

# File Bookmarks (Harpoon replacement)
echo "🔖 Installing bookmark extensions..."
codium --install-extension alefragnani.bookmarks
codium --install-extension alefragnani.numbered-bookmarks

# Comment Support
echo "💬 Installing comment extensions..."
codium --install-extension aaron-bond.better-comments

# Bracket Colorization
echo "🌈 Installing bracket colorization..."
codium --install-extension coenraads.bracket-pair-colorizer-2
codium --install-extension 2gua.rainbow-brackets

# Markdown Support
echo "📝 Installing Markdown extensions..."
codium --install-extension yzhang.markdown-all-in-one
codium --install-extension shd101wyy.markdown-preview-enhanced
codium --install-extension davidanson.vscode-markdownlint

# Docker Support
echo "🐳 Installing Docker extension..."
codium --install-extension ms-azuretools.vscode-docker

# Database Support
echo "🗄️ Installing database extensions..."
codium --install-extension mtxr.sqltools
codium --install-extension alexcvzz.vscode-sqlite

# Todo Highlighting
echo "📋 Installing todo extensions..."
codium --install-extension gruntfuggly.todo-tree
codium --install-extension wayou.vscode-todo-highlight

# Indentation Guides
echo "📏 Installing indentation guides..."
codium --install-extension oderwat.indent-rainbow

# Additional Useful Extensions
echo "🛠️ Installing additional utility extensions..."
codium --install-extension humao.rest-client
codium --install-extension ms-vscode.hexeditor
codium --install-extension redhat.vscode-yaml
codium --install-extension redhat.vscode-xml
codium --install-extension mikestead.dotenv
codium --install-extension streetsidesoftware.code-spell-checker
codium --install-extension maptz.regionfolder
codium --install-extension vspacecode.whichkey
codium --install-extension formulahendry.auto-close-tag
codium --install-extension formulahendry.auto-rename-tag
codium --install-extension ritwickdey.liveserver

echo "✅ All extensions installed successfully!"
echo ""
echo "📋 Next steps:"
echo "1. Copy the settings.json and keybindings.json files to your VS codium settings"
echo "2. Restart VS Code"
echo "3. Configure your preferred theme from the installed themes"
echo "4. Set up your workspace folders"
echo ""
echo "🎯 Your VS codium is now configured to closely match your Neovim workflow!"
