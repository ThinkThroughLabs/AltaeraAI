# AltaeraAI

[![Github All Releases](https://img.shields.io/github/downloads/ThinkThroughLabs/AltaeraAI/total.svg)]()
[![Github All Releases](https://img.shields.io/github/downloads/latestissue/AltaeraAI/total.svg)]()

**This project is deprecated; no updates at this time, although core functionalities are still working, Back&Front-end software needs to be updated manually in the MENU. Project reactivation is possible in the future, but no promises at this point. ~~January 2025**

**Note**: *the number of downloads shown is only for the pre-packaged* KoboldCpp *and also includes downloads resulting from updates containing package upgrades*.

**Notice**: AltaeraAI *periodically undergoes **heavy changes** that can disrupt the installation process*. **If this disruption occurs, please try the installation a little later**.

![altaeragithublogo](https://github.com/ThinkThroughLabs/AltaeraAI/assets/121747280/7cea65dc-6592-453c-9b16-0522040cf078)

README parts:

- [What is it?](#what-is-it)
- [What is it about?](#what-is-it-about)
- [Current Models List](#current-models-list)
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

- The default implemented model is [RWKV-4](https://github.com/BlinkDL/RWKV-LM); other options include: [KobbleTinyV2-1.1B](https://huggingface.co/concedo/KobbleTiny), [KobbleTinyV2-1.1B (imatrix)](https://huggingface.co/MarsupialAI/KobbleTiny-1.1B_iMatrix_GGUF), [TinyDolphin (imatrix/laser)](https://ollama.com/library/tinydolphin), [TinyLlama](https://github.com/jzhang38/TinyLlama), [TinyVicuna](https://anakin.ai/blog/tiny-vicuna-1b/), [LLaMa-3](https://llama.meta.com/llama3/), [LLaMA-2](https://ai.meta.com/llama/), [Mistral](https://mistral.ai/), [Vicuna-v1.5](https://lmsys.org/blog/2023-03-30-vicuna/), [Mamba](https://github.com/state-spaces/mamba), [Phi-3](https://techcommunity.microsoft.com/t5/microsoft-developer-community/getting-started-generative-ai-with-phi-3-mini-a-guide-to/ba-p/4121315), [Phi-SoSerious-Mini-V1](https://huggingface.co/concedo/Phi-SoSerious-Mini-V1-GGUF) (GGUF), [Phi-SoSerious-Mini-V1-imatrix](https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF) (GGUF), [Phi-2](https://www.microsoft.com/en-us/research/blog/phi-2-the-surprising-power-of-small-language-models/),[Yi-1.5-6B-Chat](https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF) (GGUF), [Gemma-2-2B/9B](https://ai.google.dev/gemma) (GGUF) and [Gemma-2B/7B](https://ai.google.dev/gemma) (GGUF) at this very moment. The installation process will allow you to either choose AI model via an auto-detection mechanism (currently reserved for 'RWKV-4-World-Claude-for-Mobile'), or you can select the model size manually. The former runs a simple algorithm to detect amount of RAM installed on device, then downloads an AI model accordingly.

AltaeraAI works as a platform in order to provide easy instructions and support for AI deployment on Android devices with the use of Termux.
You can read more at: [altaera.ai](https://altaera.ai)

## Current Models List:
- [RWKV-4](https://github.com/BlinkDL/RWKV-LM) (GGML) - [No-Blas]
- [KobbleTinyV2-1.1B](https://huggingface.co/concedo/KobbleTiny) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [KobbleTinyV2-1.1B (imatrix)](https://huggingface.co/MarsupialAI/KobbleTiny-1.1B_iMatrix_GGUF) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [TinyDolphin (imatrix/laser)](https://ollama.com/library/tinydolphin) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [TinyLlama](https://github.com/jzhang38/TinyLlama) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [TinyVicuna](https://anakin.ai/blog/tiny-vicuna-1b/) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [LLaMa-3](https://llama.meta.com/llama3/) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [LLaMA-2](https://ai.meta.com/llama/) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [Mistral](https://mistral.ai/) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [Vicuna-v1.5](https://lmsys.org/blog/2023-03-30-vicuna/) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [Mamba](https://github.com/state-spaces/mamba) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [Phi-3](https://techcommunity.microsoft.com/t5/microsoft-developer-community/getting-started-generative-ai-with-phi-3-mini-a-guide-to/ba-p/4121315) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [Phi-SoSerious-Mini-V1](https://huggingface.co/concedo/Phi-SoSerious-Mini-V1-GGUF) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [Phi-SoSerious-Mini-V1-imatrix](https://huggingface.co/duyntnet/Phi-SoSerious-Mini-V1-imatrix-GGUF) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [Phi-2](https://www.microsoft.com/en-us/research/blog/phi-2-the-surprising-power-of-small-language-models/) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [Yi-1.5-6B-Chat](https://huggingface.co/MaziyarPanahi/Yi-1.5-6B-Chat-GGUF) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [Gemma-2-2B/9B](https://ai.google.dev/gemma) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)
- [Gemma-2B/7B](https://ai.google.dev/gemma) (GGUF) - [No-Blas] / [[OpenBLAS]](https://www.openblas.net/)

## Installation

1. Download and install [Termux](https://f-droid.org/repo/com.termux_118.apk)
2. Open Termux and paste in:

   DEPRECATED
   ```bash
   curl -fsSL in.altaera.ai | bash
   ```
   WORKING
   ```bash
   curl -o install https://raw.githubusercontent.com/latestissue/AltaeraAI/main/scripts/install && chmod +x install && ./install
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
