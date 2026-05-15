param(
  [Parameter(Mandatory = $true)]
  [string] $Prompt,

  [string] $Out = "assets/generated/image.png",
  [string] $Size = "1024x1024",
  [string] $Quality = "medium",
  [string] $Model = "gpt-image-2"
)

$ErrorActionPreference = "Stop"

if (-not $env:OPENAI_API_KEY) {
  Write-Error "OPENAI_API_KEY is not set. Set it before generating images."
}

$script = Join-Path $env:USERPROFILE ".codex\skills\.system\imagegen\scripts\image_gen.py"
if (-not (Test-Path $script)) {
  Write-Error "Image generation script was not found at: $script"
}

$outDir = Split-Path -Parent $Out
if ($outDir) {
  New-Item -ItemType Directory -Force -Path $outDir | Out-Null
}

python $script generate `
  --model $Model `
  --prompt $Prompt `
  --size $Size `
  --quality $Quality `
  --out $Out `
  --force
