# Custom theme for Discourse

## Setup

1. You'll need Docker installed.

2. Run `make serve`

3. You'll be prompted for a Discourse API key on the first run. To get a new API key:

   - Visit https://k12-ai-infrastructure.discourse.group/admin/api/keys with an admin account.

   - For the API key permissions, the [documentation](https://meta.discourse.org/t/install-the-discourse-theme-cli-console-app-to-help-you-build-themes/82950) says you unfortunately have to grant global permissions:

     - `Select a “User Level” of Single User when generating the key, not All Users.`

     - `Make sure to check Global Key or you will receive 403 forbidden errors.`
     
4. Agree to `Would you like this API key stored in /root/.discourse_theme?` to not be asked again, but don't commit this file.

5. Select the default option `Sync with existing theme: 'KAIIP Theme' (id:5)` so you don't overwrite the production theme.

6. A "Preview URL" should now be printed which you can open in a browser to preview the theme in use.

    - If you make any changes to the local theme files, the CLI should tell you they've been automatically uploaded to the Discourse server.
	 
    - Refresh the Preview URL to see the changes.
	 
    - Notice it's not previewing via a local server but via the Discourse server online.

## Theming tips

- Try to only edit within the `scss/custom` folder to perform overrides to the base theme, rather than modifying the base theme directly. This avoid tricky merge conflicts if we need to pull in updates to the base theme later.

- Theme development docs:
  https://github.com/discourse/discourse/blob/main/docs/developer-guides/docs/05-themes-components/01-developing-themes.md

- `about.json` contains colors that get created as CSS variables that are used by the theme e.g. the `primary` color field in this file creates a `--primary` CSS variable.
