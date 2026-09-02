# 🛠 Automation Scripts

This directory contains the utilities required to inject AI agent rules into your local development repositories without cluttering your git history.

## pull-rules.sh

The `pull-rules.sh` script is the core distribution mechanism for this repository. It uses Git's sparse-checkout feature to download **only** the requested folders, ignoring the rest of the repository.

### 🧠 How it Works (The Merge Mechanism)
When you request a stack (e.g., `react-native`), the script does not just download the `react-native/` folder. It performs a transparent merge:
1. It downloads the `global/` directory.
2. It downloads the requested stack directory.
3. It copies the contents of `global/` into your current project root.
4. It copies the contents of the stack into your current project root, effectively merging the specific rules with the global baseline (e.g., combining global Git rules with mobile-specific performance rules inside the `.cursor/` and `.agents/` folders).

### 💻 Installation (Zsh / Nix environment)
It is recommended to alias or add this script to your system PATH via your Nix configuration so it can be called from anywhere.

### ⚙️ Usage
Run the following command at the **root** of your target project:

    pull-rules [react-web | react-native | node-backend]

**Example:**

    cd ~/my-new-mobile-app
    pull-rules react-native

