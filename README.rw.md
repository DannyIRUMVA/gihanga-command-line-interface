# Gihanga CLI

Gihanga CLI ni umufasha wa AI mu kwandika kode ukoreshwa muri terminal, ushyira Ikinyarwanda imbere. Ifasha abanditsi ba porogaramu gusoma, guhindura, kwandika, no gukoresha kode hifashishijwe command line.

> Inyandiko y'Ikinyarwanda: iyi dosiye  
> English documentation: [README.md](README.md)

## Icyo ikora

- Ifungura umufasha wa kode muri terminal ukoresheje `gihanga`
- Isoma amadosiye ya poroje kandi igasobanura kode
- Ihindura cyangwa ikandika amadosiye iyo ubiyisabye
- Ikoresha shell commands ibinyujije mu gikoresho cya bash
- Ishyigikira providers na models zitandukanye za AI
- Ishyigikira ubumenyi, ingereko, prompt templates, na themes
- Igaragaza ubufasha bwa CLI n'amabwiriza ya `/` mu Kinyarwanda-first

## Ibisabwa

- Linux, macOS, cyangwa Windows terminal
- Node.js `>=22.19.0`
- npm
- Credential ya AI provider imwe ishyigikiwe, cyangwa kwinjira ukoresheje CLI

## Script yo kwinjiza local

Koresha ibi muri folder ushaka kubikamo source code:

```bash
git clone https://github.com/DannyIRUMVA/gihanga-command-line-interface.git
cd gihanga-command-line-interface
./install-local.sh
gihanga --help
```

Iyo script ikora ibi:

```bash
npm install --ignore-scripts
npm run build
(cd packages/coding-agent && npm link)
```

Nyuma y'ibi, command `gihanga` izajya ikora aho uri hose kuri mudasobwa yawe kuri uyu mukoresha.

## Kuvugurura local install

```bash
cd gihanga-command-line-interface
git pull
npm install --ignore-scripts
npm run build
(cd packages/coding-agent && npm link)
gihanga --version
```

## Imikoreshereze y'ibanze

```bash
# Tangira uburyo bw'ibiganiro
gihanga

# Baza ikibazo kimwe hanyuma usohoke
gihanga -p "Sobanura iyi poroje"

# Shyiramo dosiye mu butumwa bwa mbere
gihanga @README.md "Vuga muri make iyi dosiye"

# Erekana ubufasha
gihanga --help

# Erekana models zihari
gihanga --list-models
```

## Amategeko akoreshwa cyane

```bash
gihanga install <source>      # Injiza extension/package source
gihanga remove <source>       # Kuramo extension/package source
gihanga update                # Vugurura Gihanga
gihanga list                  # Erekana packages/extensions zinjijwe
gihanga config                # Fungura igenamiterere rya package resources
```

Mu buryo bw'ibiganiro, andika `/` kugira ngo ubone slash commands nka:

```text
/settings
/model
/login
/resume
/new
/compact
/quit
```

## Kwinjira / Authentication

Ushobora gutangira Gihanga hanyuma ugakoresha `/login`:

```bash
gihanga
# hanyuma wandike: /login
```

Cyangwa ugashyiraho API key ukoresheje environment variables, urugero:

```bash
export ANTHROPIC_API_KEY="your-api-key"
gihanga
```

Providers zishyigikiwe zirimo Anthropic, OpenAI, Google Gemini, GitHub Copilot, OpenRouter, Groq, Cerebras, Mistral, Amazon Bedrock, Cloudflare, n'izindi.

## Iterambere / Development

```bash
npm install --ignore-scripts
npm run build
npm run check
./test.sh
```

## Icyitonderwa

- Command nyamukuru ni `gihanga`.
- Flags za command ziguma mu Cyongereza kugira ngo compatibility ikomeze, ariko help text ni Kinyarwanda-first.
- Uyu mushinga uhindurwa kugira ngo ufashe umuryango w'abanditsi ba porogaramu bakoresha Ikinyarwanda.

## License

MIT
