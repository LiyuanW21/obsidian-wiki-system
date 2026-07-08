# Language Selection

The skill is language-adaptive.

## Default Rule

Use the user's language when it is clear from the request or conversation.

- Chinese request or Chinese vault context: use Chinese.
- English request or English vault context: use English.
- Other language: use that language for generated prose when possible, while keeping folder names and schema fields stable.

If the user does not specify a language:

1. Prefer the language of the user's current message.
2. If the target folder already has notes, match the dominant language of existing notes.
3. If no signal exists, use English for public/generic installations.

## Template Choice

- Chinese: copy `assets/vault-template/`.
- English: copy `assets/vault-template-en/`.
- Other languages: copy the closest template, then translate user-facing prose while preserving directory names, YAML field names, enum values, prompt filenames, and internal links.

## Filename Choice

Use language-native top-level entry names:

- Chinese: `首页.md`
- English: `Home.md`

If localizing to another language, choose a natural equivalent and update links to it.

## Do Not Translate

Do not translate these structural values:

- directory names: `raw`, `wiki`, `templates`, `ops`, `daily`
- YAML field names: `type`, `title`, `status`, `created`, `updated`, `tags`, `source`
- schema enums: `source`, `concept`, `domain`, `project`, `question`, `synthesis`, `daily`, `index`, `log`, `seed`, `growing`, `stable`, `archive`

