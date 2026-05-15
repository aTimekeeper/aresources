# Image generation setup

This workspace is configured for the Codex imagegen fallback CLI.

## Installed

- Python package: `openai`
- Python package: `pillow`
- Skill script: `%USERPROFILE%\.codex\skills\.system\imagegen\scripts\image_gen.py`
- Helper wrapper: `tools\generate-image.ps1`

## Required before live generation

Set an OpenAI API key in your user environment:

```powershell
[Environment]::SetEnvironmentVariable("OPENAI_API_KEY", "your_api_key_here", "User")
```

Then restart Codex or the terminal so the new environment variable is visible.

## Example

```powershell
.\tools\generate-image.ps1 `
  -Prompt "A soft pink sakura anime girl website hero image, clean white background, no text, no watermark" `
  -Out "assets\generated\sakura-hero.png"
```

Generated project assets should go under `assets\generated\`.
