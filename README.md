# SEMAT Alpha State Cards

This plugin adds SEMAT Alpha State Cards to your projects in Redmine. More information about these cards you can find on [Ivar Jacobson International website](https://www.ivarjacobson.com/alphastatecards).

## Installation

1. Create a directory your_redmine_base/plugins/alpha_cards.
2. Copy the content of this repository to the created directory.
3. From your_redmine_base directory run migration by the following command to upgrade your database:

    ```ruby
    bundle exec rake redmine:plugins:migrate RAILS_ENV=production
    ```
4. Restart Redmine.

## Usage

After installation, a new "Alpha cards" tab will appear in the project menu for each project. You can expand cards by clicking [+], drag cards and click checkboxes to change states of alphas. All changes will be saved automatically.

## Developers

Developed by Kreosoft and Tomsk state university.