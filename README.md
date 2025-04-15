# AltaeraAI

[![Github All Releases](https://img.shields.io/github/downloads/ThinkThroughLabs/AltaeraAI/total.svg)]()
[![Github All Releases](https://img.shields.io/github/downloads/latestissue/AltaeraAI/total.svg)]()

**Note**: *the number of downloads shown is only for the pre-packaged* KoboldCpp *and also includes downloads resulting from updates containing package upgrades*.

**Notice**: AltaeraAI *periodically undergoes **heavy changes** that can disrupt the installation process*. **If this disruption occurs, please try the installation a little later**.

![altaeragithublogo](https://github.com/ThinkThroughLabs/AltaeraAI/assets/121747280/7cea65dc-6592-453c-9b16-0522040cf078)

README parts:

- [What is it?](#what-is-it)
- [What is it about?](#what-is-it-about)
- [Installation](#installation)
- [Launching & Updating](#launching--updating)
- [Access Inference on external devices](#access-inference-on-external-devices)
- [Technical Support](#technical-support)
- [License](#license)
- [TODO](#todo)

## What is it?

AltaeraAI is a [Termux](https://github.com/termux) wrapper that packages multiple AI Back & Front-ends for native usage on Android devices, which currently includes:

- [KoboldCpp](https://github.com/LostRuins/koboldcpp) and Kobold Lite UI

- [ollama](https://github.com/ollama/ollama) and its external Front-ends

- [SillyTavern](https://sillytavernai.com/)

## What is it about?

AltaeraAI is a Free and Open Source solution for running GGML/GGUF models with the power of your smartphone. It wraps the Termux instructions for installing Artix Linux with all the necessary dependencies in the "PRoot Distro" environment, and then lets you install AI Back & Front-ends with ease. Lastly, it adds lines of arguments in your "bash.bashrc" file, so you can easily reach out for MENU by simply typing "ae".

- The main premise of it is to automate AI Inference using a smartphone, with the help of cherry-picked, Open-Source tools and software. This allows you for instant, localized access to Artificial Intelligence - whether that be companionship, assistance or just text generation. At the same time, you maintain 100% privacy over your stories - you own the software due to the nature of locality, in the form of a self contained distributable.

- The instalation process will ask whether you want to install the pre-packaged KoboldCpp, or if you want to have it built directly on your device. The same applies each time you want you update your AltaeraAI.

- Then, you will asked if you want to download a model straight away. If so, you will be allowed either to choose AI model via an auto-detection mechanism (currently reserved for 'RWKV-4-World-Claude-for-Mobile'), or you can select the model manually. The former runs a simple algorithm to detect amount of RAM installed on device, then downloads an AI model accordingly.\

AltaeraAI works as a platform in order to provide easy instructions and support for AI deployment on Android devices with the use of Termux.
~~You can read more at: [altaera.ai](https://altaera.ai)~~

<details>
  <summary><b>Changelog</b></summary>
  
    * v6.0.1 - added RWKV7-Goose-World weights to the list of models
    * v6.0.0 - updated the pre-packaged KoboldCpp to v1.87.4
    * v5.7.9 - updated the pre-packaged KoboldCpp to v1.77
    * v5.7.8 - updated the pre-packaged KoboldCpp to v1.76
    * v5.7.7 - added RWKV-6-Finch and RWKV-6-World weights to the list of models
    * added option to compile experimental KoboldCpp
    * removed OpenBLAS, which was replaced by the "llamafile" library - it is now set by default
    * v5.7.6 - updated the pre-packaged KoboldCpp to v1.75.2
    * added the ability to back up stories to the end-to-end encrypted MEGA cloud service
    * v5.7.5 - updated the pre-packaged KoboldCpp to v1.74
    * v5.7.4.2 - Hotfix: fixed code mistakes related to the "Manage AI Back-ends" option
    * v5.7.4.1 - Hotfix: fixed the issue related to the new version of pre-packaged KoboldCpp not being recognised as an update
    * v5.7.4 - updated the pre-packaged KoboldCpp to v1.73.1
    * added initial SillyTavern support
    * added "Manage AI Back-ends" to the MENU
    * v5.7.3 - updated the pre-packaged KoboldCpp to v1.73
    * a mechanism has been added so that when updating AltaeraAI, the pre-packaged KoboldCpp will update only if it was previously installed
    * added ability to use “maid” as an external front-end for ollama
    * various fixes and expanded ollama support
    * v5.7.2 – added initial ollama support
    * v5.7.1 - added Gemma-2-2B-it and Gemma-2-2B-it-abliterated weights to the list of models
    * v5.7 - updated to koboldcpp-1.72
    * re-written the installation script to be more automated and user friendly, added visual enhancements and fixed bugs related to it
    * v5.6 - updated to koboldcpp-1.71.1
    * v5.5.2 - fixed a bug that caused the “Functional Status” check to always inform the user of technical difficulties
    * v5.5.1 - a “Functional Status” check has been added, which will notify the user of ongoing technical difficulties (as determined by the repository owner) that may occur for users who have recently installed or upgraded AltaeraAI, due to its rolling-release lifecycle
    * v5.5 - updated to koboldcpp-1.70.1
    * v5.4.2 - a "very fast" installation method has been introduced that drastically shortens the process. It uses a pre-packaged PRoot-Distro environment, instead of installing it from scratch, and restores it in a backup form. It is now a default installation method
    * v5.4.1 - added an automatic Termux update check, which will inform the user of an available update and allow the user to choose whether Termux was initially downloaded from GitHub or from F-Droid to further proceed (this is necessary for the update to actually work). This functionality is set by default (as are automatic update & file integrity checks), but can also be disabled under settings
    * v5.4 - updated to koboldcpp-1.69.1
    * added Gemma-2-9B-it weights to the list of models
    * v5.3 - updated to koboldcpp-1.69
    * v5.2.3 - fixed a bug in the file integrity checking mechanism that reported missing files even when they were not (especially after a fresh installation)
    * added an initial solution to when the PRoot Distro environment fails to install, during the installation process
    * v5.2.2 - added the ability to enter a custom value for Context & Blas Batch Size, in addition to the fixed sizes
    * various visual improvements and fixes to the MENU
    * v5.2.1 - introduced "File Integrity checks", which run simultaneously with the update checking mechanism, to determine potential file deficiences that can impact AltaeraAIs functionality; in case there are missing files, the user will be asked whether to carry out file repair. Said functionality is set by default (as are automatic update checks), but can also be disabled under settings
    * visual fixes and improvements, changes to the MENU
    * v5.2 – updated to koboldcpp-1.68
    * added the “Horde” option to the MENU, which utilises AI Horde to allow for sharing your processing power (an AI Model) for users worldwide
    * minor aesthetic changes and fixes to the MENU
    * v5.1.2 - fixed the issue regarding pre-packaged KoboldCpp not being downloaded after switching to an organisational repository
    * added a pre-launch check (when starting KoboldCpp) to see if the KoboldCpp directory exists in PRoot Distro; if not, the user will be asked whether to download or compile it
    * v5.1.1 - shifted the projects main GitHub repository into an organisational one (ThinkThroughLabs). This upgrade does not bring any functionalities, its sole purpose is to redirect local AltaeraAI update mechanisms to a new address
    * v5.1 - updated to koboldcpp-1.67
    * added "aef", "aeforce" and "altaeraforce" arguments to the "bash.bashrc" file, which allow the user to launch AltaeraAI without the automatic update checking mechanism, in case there is a start-up problem, i.e., poor network connectivity
    * v5.0 - updated to koboldcpp-1.66.1
    * visual fixes and improvements to Model MENUS
    * v4.9.6 - added Phi-SoSerious-Mini-V1/imatrix weights to the list of models
    * v4.9.5 - fixed "KoboldCpp Settings"
    * v4.9.4 - added an optional (set by default) black MENU background (Bash display dialog boxes)
    * v4.9.3 – added Gemma-2B/7B-it weights (and a reference to their LICENSE file, with a notice) to the list of models
    * v4.9.2 - added Yi-1.5-6B-Chat weights to the list of models
    * v4.9.1 - added "Benchmark" mode to test AI models (--benchmark flag - KoboldCpp), into the MENU
    * v4.9 – updated to koboldcpp-1.65
    * v4.8.5 - fixed a bug which always informed the user about an available update, when launching AltaeraAI in offline mode
    * v4.8.4 – added a changelog to the main MENU
    * v4.8.3 – added an optional (set by default) “auto-update” mechanism, which automatically
      checks for updates whenever you type in “ae” in order to start AltaeraAI
    * added “AltaeraAI Settings” into the MENU
    * v4.8.2 – added information about device RAM and free storage in the main
      MENU
    * v4.8.1 – added KobbleTinyV2-1.1B (imatrix) weights to the list of models
    * v4.8 – updated to koboldcpp-1.64.1
    * v4.7.2 – added Tiny-Vicuna and TinyDolphin (imatrix/laser) weights to the
      list of models
    * added the ability to enable/disable the experimental Flash Attention
      (–flashattention) flag for compatible models in “KoboldCpp Settings”
    * v4.7.1 – in case there is no update to KoboldCpp itself available, the
      “check for updates” mechanism will no more ask you to choose from a pre-
      packaged KoboldCpp or a locally compiled one; instead it will only update
      shell files, provided there is an update available to those
    * added the option to force-update shell files only
    * v4.7 – updated to koboldcpp-1.64
    * v4.6.3 – added KobbleTinyV2-1.1B weights to the list of models
    * v4.6.2 – fixes to the reinstallation mechanism
    * v4.6.1 – added: KobbleTiny, TinyLlama, Mamba and Phi-3 Mini weights to
      the list of models
    * v4.6 – updated to koboldcpp-1.63
    * added LLaMA-3 weights to the list of models
    * removed OpenBLAS support by default, due to reports of a significant
      slowdown when using this processing method
    * fixes to the update mechanism when selecting local compilation
    * visual fixes to the MENU
    * v4.5 – updated to koboldcpp-1.62.1
    * v4.4 – updated to koboldcpp-1.61.2
    * v4.3 – updated to koboldcpp-1.60.1
    * v4.2 – updated to koboldcpp-1.59.1
    * v4.1 – updated to koboldcpp-1.58
    * v4.0 – updated to koboldcpp-1.57.1
    * v3.9 – updated to koboldcpp-1.56
    * “Compatility Mode” no longer required, nor utilised to work with old GGML
      models
    * v3.8.1 – added Vicuna weights to the list of models
    * v3.8 – updated to koboldcpp-1.55.1
    * v3.7.3 – added the ability to choose from installing/updating with the
      pre-packaged KoboldCpp or building one on your own device
    * v3.7.2 – fixed ngrok to work with Artix Linux
    * v3.7.1 – added Phi-2 weights to the list of models
    * v3.7 – updated to koboldcpp-1.54
    * v3.6 – updated to koboldcpp-1.53
    * small changes to the embedded Kobold Lite (replaced “summary” with
      “memory” for better context following in Chat Mode)
    * v3.5.1 – added Mistral weights to the list of models
    * v3.5 – updated to koboldcpp-1.52.2
    * visual fixes and improvements in the MENU
    * v3.4 – updated to koboldcpp-1.52.1
    * v3.3 – updated to koboldcpp-1.51.1
    * v3.2.7 – cosmetic MENU UI visual enhancements when updating
    * v3.2.6 – upgraded every language available on the list to upstream
      changes and fixes
    * v3.2.5 – changes to the MENU
    * v3.2.4 – added the “List Installed Models” option, fixed launching flags
      for GGML/bin models
    * v3.2.3 – introduced “Compatibility Mode”, which from now on automatically
      deploys outdated GGML models (RWKV-4) with an older koboldcpp-1.49,
      thereby fixing the ‘GGML_ASSERT’ error [the embedded KoboldLite will
      continue to be updated]. Users that installed AltaeraAI prior to 26 Nov
      2023 need to re-install in order to utilise the Compatibility Mode
    * v3.2.2 – refactoring, bug fixes, aesthetic changes to the MENU
    * v.3.2.1 – ð¦ð¦ back on the models’ list!
    * v3.2 – updated to koboldcpp-1.50.1
    * small refactoring
    * v3.1.2 – bug fixes
    * small refactoring
    * v3.1.1 – added the ability to store multiple AI Models at a time and
      choose which one of them to deploy/download/remove/back-up/restore
    * changes to the MENU
    * v3.1 – updated to koboldcpp-1.49
    * v3.0 – updated to koboldcpp-1.48.1 – [reverted to v2.9.3 until glibc-2.38
      package is upstream in Ubuntu-22.04_arm64 repositories due to an OpenBLAS
      dependency requirement]
    * Switched over from Ubuntu PRoot-Distro to Artix Linux. Users that
      installed AltaeraAI prior to 11 Nov 2023 are requested to re-install in
      order to receive future updates
    * v2.9.3 – bug fixes
    * v2.9.2 – added “KoboldCpp Settings” into the MENU, minor aesthetic
      changes to it
    * v2.9.1 – changes to the MENU
    * v2.9 – updated to koboldcpp-1.47.2
    * v2.8.1 – minor aesthetic changes to the MENU
    * v2.8 – updated to koboldcpp-1.46.1
    * – performance upgrades
    * v2.7 – updated to koboldcpp-1.44.2
    * – performance upgrades, default AI model changed to “RWKV-claude-for-
      mobile-v4-world”
    * v2.6.1 – intensive changes in the MENU, added many more functionalities
      and facilities
    * v2.6 – updated to koboldcpp-1.43
    * v2.5 – updated to koboldcpp-1.39.1
    * minor performance upgrades
    * v2.4.1 – minor performance upgrades to the RWKV model
    * v2.4 – updated to koboldcpp-1.38
    * upgraded the modified version of embedded Kobold Lite UI to contain new
      functionalities
    * v2.3 – updated to koboldcpp-1.37.1
    * v2.2 – updated to koboldcpp-1.35
    * added an auto-detection system for model selection (default)
    * v2.1 – added llamacpp weights to the list of models. – [temporarily
      removed in newest versions]

</details>

<details>
  <summary><b>Current Models List</b></summary>

- [RWKV7](https://github.com/BlinkDL/RWKV-LM)
- [RWKV-6](https://github.com/BlinkDL/RWKV-LM)
- [RWKV-4](https://github.com/BlinkDL/RWKV-LM)
- [KobbleTinyV2-1.1B](https://huggingface.co/concedo/KobbleTiny)
- [KobbleTinyV2-1.1B (imatrix)](https://huggingface.co/MarsupialAI/KobbleTiny-1.1B_iMatrix_GGUF)
- [TinyDolphin (imatrix/laser)](https://ollama.com/library/tinydolphin)
- [TinyLlama](https://github.com/jzhang38/TinyLlama)
- [TinyVicuna](https://anakin.ai/blog/tiny-vicuna-1b/)
- [LLaMa-3](https://llama.meta.com/llama3/)
- [LLaMA-2](https://ai.meta.com/llama/)
- [Mistral](https://mistral.ai/)
- [Vicuna-v1.5](https://lmsys.org/blog/2023-03-30-vicuna/)
- [Mamba](https://github.com/state-spaces/mamba)
- [Phi-3](https://techcommunity.microsoft.com/t5/microsoft-developer-community/getting-started-generative-ai-with-phi-3-mini-a-guide-to/ba-p/4121315)
- [Phi-SoSerious-Mini-V1](https://huggingface.co/concedo/Phi-SoSerious-Mini-V1-GGUF)
- [Phi-SoSerious-Mini-V1-imatrix](https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF)
- [Phi-2](https://www.microsoft.com/en-us/research/blog/phi-2-the-surprising-power-of-small-language-models/)
- [Yi-1.5-6B-Chat](https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF)
- [Gemma-2-2B/9B](https://ai.google.dev/gemma)
- [Gemma-2B/7B](https://ai.google.dev/gemma)

</details>

## Installation

1. Download and install [Termux](https://f-droid.org/repo/com.termux_118.apk)
2. Open Termux and paste in:

   ```bash
   curl -fLo install https://github.com/ThinkThroughLabs/AltaeraAI/raw/refs/heads/main/scripts/install && chmod +x install && ./install
   ```
   
> ⚠️ **Deprecated / Unavailable:**

   ```bash
   curl -fsSL in.altaera.ai | bash
   ```
   
- Then press ENTER and wait for the installation to finish. Make sure you have a Wi-Fi connection, as the process will download about 0.5 GB (or more) of data. The installation will take just 2 minutes or more, depending on your device and internet speed.

<p align="center">
<video src="https://github.com/ThinkThroughLabs/AltaeraAI/assets/121747280/4fb1a268-cf8f-450b-b5ea-eb41bb874547" width="720" height="1560" />
</p>

## Launching & Updating

- Open Termux, type in '`ae`' – you will be welcomed with the MENU screen.

<p align="center">
<img src="https://github.com/user-attachments/assets/0d0b1856-cc8a-4db0-adca-233c8088b7dc" width="360" height="390" />
</p>

The “Start AltaeraAI” button will ask you to choose from currently installed models, and then forward you to a browser with deployed UI.

## Access Inference on external devices

You can access your AI Inference on external devices like PCs, laptops, etc., with the use of Secure Tunnelling [ngrok] - AltaeraAI has this function implemented in its code. You can learn more at:
[ngrok Secure Tunnels - AltaeraAI](https://altaera.ai/ngrok-secure-tunnels/)

## Technical Support

- Please, visit: [Technical Support - AltaeraAI](https://altaera.ai/technical-support/)
- or just open an issue on this github

## License [derived from KoboldCpp]

- The original GGML library and llama.cpp by ggerganov are licensed under the MIT License
- ollama is licensed under the MIT License
- However, Kobold Lite is licensed under the AGPL v3.0 License
- The other files are also under the AGPL v3.0 License unless otherwise stated

## TODO

- A lot of things ;)
